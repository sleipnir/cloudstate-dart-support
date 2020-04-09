
import 'dart:mirrors';

import 'package:cloudstate_dart_support/src/generated/protocol/google/protobuf/descriptor.pb.dart';
import 'package:logger/logger.dart';

import 'cloudstate_dart_support_services.dart';
import 'package:grpc/src/server/server.dart';

class Cloudstate {

  final _logger = Logger(
    filter: null,
    printer: LogfmtPrinter(),
    output: null, // Use the default LogOutput (-> send everything to console)
  );

  CrdtServce _crdtServce;
  EventSourcedService _eventSourcedService;
  EntityDiscoveryService _entityDiscoveryService;

  int port;
  String address;

  void registerEventSourcedEntity(
      Type entity,
      ServiceDescriptorProto descriptor,
      List<FileDescriptorProto> additionalDescriptors) async {
    _logger.i('Registering EventSourcedEntity');

    if (entity == null) {
      throw ArgumentError('type: $entity');
    }

    var typeMirror = reflectType(entity);

    _eventSourcedService = EventSourcedService();
    _entityDiscoveryService = EntityDiscoveryService();
  }

  Future<void> start() async {
    final server = Server([_entityDiscoveryService, _eventSourcedService]);
    await server.serve(port: 8080);
    _logger.i('Server listening on $address:$port ...');
  }

}

class EntityId {
  const EntityId();
}