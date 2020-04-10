import 'dart:io';
import 'dart:async';
import 'dart:typed_data';

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

  final Uint8List _protoBytes;
  final String _serviceName;

  EntityDiscoveryService(this._protoBytes, this._serviceName);

  @override
  Future<EntitySpec> discover(ServiceCall call, ProxyInfo request) {
    var entitySpecResponseFuture = Completer<EntitySpec>();

    var serviceInfo = ServiceInfo()
      ..serviceName = _serviceName
      ..serviceRuntime = 'Dart'
      ..serviceVersion = Platform.version
      ..supportLibraryName = 'cloudstate_dart_support'
      ..supportLibraryVersion = '0.5.0';

    var entity = Entity()
      ..serviceName = _serviceName
      ..entityType = 'cloudstate.eventsourced.EventSourced'
      ..persistenceId = 'shopping-cart';

    var entitySpec = EntitySpec()
      ..proto = _protoBytes
      ..entities.add(entity)
      ..serviceInfo = serviceInfo;

    entitySpecResponseFuture.complete(entitySpec);
    return entitySpecResponseFuture.future;
  }

  @override
  Future<Empty> reportError(ServiceCall call, UserFunctionError request) {
    // TODO: implement reportError
    return null;
  }

}

class EventSourcedService extends EventSourcedServiceBase {

  @override
  Stream<EventSourcedStreamOut> handle(ServiceCall call, Stream<EventSourcedStreamIn> request) {
    // TODO: implement handle
    return null;
  }

}

class CrdtServce extends CrdtServiceBase {

  @override
  Stream<CrdtStreamOut> handle(ServiceCall call, Stream<CrdtStreamIn> request) {
    // TODO: implement handle
    return null;
  }

}