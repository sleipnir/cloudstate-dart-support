import 'dart:io';
import 'dart:async';
import 'dart:mirrors';
import 'package:cloudstate/cloudstate.dart';
import 'package:logger/logger.dart';
import 'package:protobuf/protobuf.dart';
import 'package:yaml/yaml.dart';
import 'package:cloudstate/src/generated/protocol/cloudstate/entity.pb.dart';

import 'generated/protocol/cloudstate/entity.pbgrpc.dart';
import 'generated/protocol/cloudstate/event_sourced.pbgrpc.dart';
import 'package:cloudstate/src/generated/protocol/cloudstate/crdt.pbgrpc.dart';
import 'package:cloudstate/src/generated/protocol/google/protobuf/empty.pb.dart';

import 'package:grpc/src/server/call.dart';

import 'generated/protocol/google/protobuf/any.pb.dart';

class StatefulService {
  // ignore: missing_return
  String serviceName() {}
  // ignore: missing_return
  Type entity() {}
  // ignore: missing_return
  String entityType() {}
  // ignore: missing_return
  String persistenceId() {}
}

class EntityDiscoveryService extends EntityDiscoveryServiceBase {
  Logger _logger;
  Config config;
  Map<String, StatefulService> services;

  EntityDiscoveryService(Config config, Map<String, StatefulService> services){
    this.config = config;
    this.services = services;
    _logger = Logger(
      filter: CloudstateLogFilter(config.logLevel),
      printer: LogfmtPrinter(),
      output: SimpleConsoleOutput(),
    );
  }

  @override
  Future<EntitySpec> discover(ServiceCall call, ProxyInfo request) {
    _logger.i('Received discover request from Proxy:\n $request');
    var entitySpecResponseFuture = Completer<EntitySpec>();

    var f = File('../../pubspec.yaml');
    var text = f.readAsStringSync();
    Map yaml = loadYaml(text);
    var serviceInfo = ServiceInfo()
      ..serviceName = 'ShoppingCart'
      ..serviceRuntime = 'Dart'
      ..serviceVersion = 'Dart ' + Platform.version
      ..supportLibraryName = 'Cloudstate Dart Support'
      ..supportLibraryVersion = yaml['version'];

    // ignore: omit_local_variable_types, prefer_collection_literals
    final List<Entity> entities = List();
    services.forEach((k, v) {
      entities.add(createEntity(k, v));
    });

    var _bytes = File('user-function.desc').readAsBytesSync();
    var entitySpec = EntitySpec()
      ..proto = _bytes
      ..entities.addAll(entities)
      ..serviceInfo = serviceInfo;

    entitySpecResponseFuture.complete(entitySpec);
    return entitySpecResponseFuture.future;
  }

  @override
  Future<Empty> reportError(ServiceCall call, UserFunctionError request) {
    _logger.e('Sidecar proxy return error $request');
    return Future.value(Empty.getDefault());
  }

  Entity createEntity(String k, StatefulService v) {
    return Entity()
      ..serviceName = v.serviceName()
      ..entityType = v.entityType()
      ..persistenceId = v.persistenceId();
  }
}

class EventSourcedService extends EventSourcedServiceBase {
  Logger _logger;

  Config config;
  Map<String, StatefulService> services;

  EventSourcedService(Config config, Map<String, StatefulService> services){
    this.config = config;
    this.services = services;
    _logger = Logger(
    filter: CloudstateLogFilter(config.logLevel),
    printer: LogfmtPrinter(),
    output: SimpleConsoleOutput(),
    );

  }

  /// The stream. One stream will be established per active entity.
  /// Once established, the first message sent will be Init, which contains the entity ID, and,
  /// if the entity has previously persisted a snapshot, it will contain that snapshot. It will
  /// then send zero to many event messages, one for each event previously persisted. The entity
  /// is expected to apply these to its state in a deterministic fashion. Once all the events
  /// are sent, one to many commands are sent, with new commands being sent as new requests for
  /// the entity come in. The entity is expected to reply to each command with exactly one reply
  /// message. The entity should reply in order, and any events that the entity requests to be
  /// persisted the entity should handle itself, applying them to its own state, as if they had
  /// arrived as events when the event stream was being replayed on load.
  @override
  Stream<EventSourcedStreamOut> handle(
      ServiceCall call, Stream<EventSourcedStreamIn> request) {
    _logger.d('Received request from Proxy:\n$request');
    return runtEntity(request);
  }

  Stream<EventSourcedStreamOut> runtEntity(
      Stream<EventSourcedStreamIn> request) async* {
    EventSourcedStatefulService service;
    String entityId;
    int snapshotSequence;
    EventSourcedEntityHandler entityHandler;

    await for (var stream in request) {
      _logger.d('Stream message received:\n$stream');

      if (stream.hasInit()) {
        _logger.d('Stream Init Message:\n$stream');

        var initMessage = stream.init;
        if (entityId == null || entityId != initMessage.entityId) {
          entityId = initMessage.entityId;
        }

        if (!services.containsKey(initMessage.serviceName)) {
          var failure = Failure.create()
            ..description =
                'Failed to locate service with name ${initMessage.serviceName}';
          yield EventSourcedStreamOut.create()..failure = failure;
        }

        service =
            services[initMessage.serviceName] as EventSourcedStatefulService;
        _logger.d('Service found ${service.serviceName()}\n');
        entityHandler =
            EventSourcedEntityHandlerFactory.getOrCreate(entityId, service);

        if (initMessage.hasSnapshot()) {
          _logger.d('Message has Snapshot');
          var eventSourcedSnapshot = initMessage.snapshot;
          snapshotSequence = eventSourcedSnapshot.snapshotSequence.toInt();

          entityHandler.handleSnapshot(eventSourcedSnapshot,
              SnapshotContextImpl(initMessage.entityId, snapshotSequence));
        }
      }

      if (stream.hasCommand()) {
        var commandMessage = stream.command;
        if (entityId == null || entityId != commandMessage.entityId) {
          entityId = commandMessage.entityId;
        }

        _logger.d('Received Command Message:\n$commandMessage');
        entityHandler =
            EventSourcedEntityHandlerFactory.getOrCreate(entityId, service);
        _logger.d('Handling command...');
        var context = CommandContextImpl(entityHandler, commandMessage,
            snapshotSequence, service.snapshotEvery);
        var optionalResult =
            entityHandler.handleCommand(commandMessage, context);

        if (optionalResult.isPresent) {
          var reply = Reply.create()..payload = optionalResult.value;

          var clientAction = ClientAction.create()..reply = reply;

          if (context.hasFailure()) {
            clientAction.failure = context.failures.first;
          }

          var eventSourcedReply = EventSourcedReply.create()
            ..commandId = commandMessage.id
            ..clientAction = clientAction;

          if (context.hasSnapshot()) {
            var snapshotResponse = entityHandler.snapshot(SnapshotContextImpl(entityId, snapshotSequence));

            eventSourcedReply.snapshot = snapshotResponse
                .orElseGet(() => Any.pack(reflect(Empty.getDefault()) as GeneratedMessage));
          }

          if (context.hasEvents()) {
            _logger.d('Set events ${context.events}');
            eventSourcedReply.events.addAll(context.events);
          }

          _logger.d('Returning correct response to Proxy');
          var evtReply = EventSourcedStreamOut.create()
            ..reply = eventSourcedReply;

          yield evtReply;
        } else {
          _logger.d('Returning Empty response to Proxy');
          if (context.hasFailure()) {
            var clientAction = ClientAction.create()
              ..failure = context.failures.first;

            var eventSourcedReply = EventSourcedReply.create()
              ..commandId = commandMessage.id
              ..clientAction = clientAction;

            yield EventSourcedStreamOut.create()
              ..failure = context.failures.first
              ..reply = eventSourcedReply;
          }
          yield EventSourcedStreamOut.create();
        }
      }

      if (stream.hasEvent()) {
        var eventMessage = stream.event;
        var context = EventSourcedContextImpl(entityId);
        _logger.d(
            'Received Event Message:\n$eventMessage for entityId: $entityId');
        entityHandler =
            EventSourcedEntityHandlerFactory.getOrCreate(entityId, service);

        _logger.d('Handling event...');
        entityHandler.handleEvent(eventMessage, context);
      }
    }
  }
}

class CrdtServce extends CrdtServiceBase {
  @override
  Stream<CrdtStreamOut> handle(ServiceCall call, Stream<CrdtStreamIn> request) {
    // TODO: implement handle
    return null;
  }
}
