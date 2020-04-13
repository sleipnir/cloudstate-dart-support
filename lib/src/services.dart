import 'dart:io';
import 'dart:async';
import 'package:cloudstate/cloudstate.dart';
import 'package:logger/logger.dart';
import 'package:yaml/yaml.dart';
import 'package:cloudstate/src/generated/protocol/cloudstate/entity.pb.dart';

import 'generated/protocol/cloudstate/entity.pbgrpc.dart';
import 'generated/protocol/cloudstate/event_sourced.pbgrpc.dart';
import 'package:cloudstate/src/generated/protocol/cloudstate/crdt.pbgrpc.dart';
import 'package:cloudstate/src/generated/protocol/google/protobuf/empty.pb.dart';

import 'package:grpc/src/server/call.dart';

class StatefulService {
  // ignore: missing_return
  String serviceName(){}
  // ignore: missing_return
  Type entity() {}
  // ignore: missing_return
  String entityType(){}
  // ignore: missing_return
  String persistenceId(){}
}

class EntityDiscoveryService extends EntityDiscoveryServiceBase {
  final _logger = Logger(
    filter: null,
    printer: LogfmtPrinter(),
    output: ConsoleOutput(),
  );

  final Map<String, StatefulService> services;

  EntityDiscoveryService(this.services);

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
    services.forEach((k,v) {
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
    print('PersistenceId -> ${v.persistenceId()}. ServiceName -> ${v.serviceName()}');
    return Entity()
      ..serviceName = v.serviceName()
      ..entityType = v.entityType()
      ..persistenceId = v.persistenceId();
  }

}

class EventSourcedService extends EventSourcedServiceBase {
  final _logger = Logger(
    filter: null,
    printer: LogfmtPrinter(),
    output: ConsoleOutput(),
  );

  final Map<String, StatefulService> services;

  EventSourcedService(this.services);

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
  Stream<EventSourcedStreamOut> handle(ServiceCall call, Stream<EventSourcedStreamIn> request) {
    _logger.d('Received request from Proxy: $request');
    return runtEntity(request);
  }

  Stream<EventSourcedStreamOut> runtEntity(Stream<EventSourcedStreamIn> request) async* {
    EventSourcedStatefulService service;
    await for (var stream in request) {
      _logger.d('Stream message received:\n$stream');

      if (stream.hasInit()) {
        _logger.d('Stream Init Message:\n$stream');

        var initMessage = stream.init;
        if(!services.containsKey(initMessage.serviceName)){
          var failure = Failure.create()
            ..description = 'Failed to locate service with name {init.ServiceName}';
          yield EventSourcedStreamOut.create()
              ..failure = failure;
          ;
        }
        
        service = services[initMessage.serviceName] as EventSourcedStatefulService;
        _logger.d('Service found ${service.serviceName()}\n');
        var entityHandler = EventSourcedEntityHandlerFactory
            .getOrCreate(initMessage.entityId, service);

        if(initMessage.hasSnapshot()) {
          //Todo: Handle snapshot
        }

      }

      if (stream.hasCommand()){
        var commandMessage = stream.command;
        _logger.d('Received Command Message:\n$commandMessage');
        var entityHandler = EventSourcedEntityHandlerFactory
            .getOrCreate(commandMessage.entityId, service);

        //todo
        _logger.d('Returning response to Proxy');
        yield EventSourcedStreamOut.create();
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