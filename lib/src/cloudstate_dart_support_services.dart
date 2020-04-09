
import 'generated/protocol/cloudstate/entity.pbgrpc.dart';
import 'generated/protocol/cloudstate/event_sourced.pbgrpc.dart';
import 'package:cloudstate_dart_support/src/generated/protocol/cloudstate/crdt.pbgrpc.dart';
import 'package:cloudstate_dart_support/src/generated/protocol/google/protobuf/empty.pb.dart';

import 'package:grpc/src/server/call.dart';

class EntityDiscoveryService extends EntityDiscoveryServiceBase {

  @override
  Future<EntitySpec> discover(ServiceCall call, ProxyInfo request) {
    // TODO: implement discover
    return null;
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