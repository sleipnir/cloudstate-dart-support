import 'dart:io';
import 'dart:async';
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

  final Map<String, StatefulService> services;

  EntityDiscoveryService(this.services);

  @override
  Future<EntitySpec> discover(ServiceCall call, ProxyInfo request) {
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
    // TODO: implement reportError
    return null;
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