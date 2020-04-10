
import 'dart:io';
import 'dart:mirrors';

import 'package:cloudstate/src/generated/protocol/google/protobuf/descriptor.pb.dart';
import 'package:logger/logger.dart';

import 'services.dart';
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

  final Map<String, StatefulService> services = Map();

  int port;
  String address;

  void registerEventSourcedEntity(Type entity, String serviceName) {
    _logger.i('Registering EventSourcedEntity');

    if (entity == null) {
      throw ArgumentError('type: $entity');
    }

    var typeMirror = reflectType(entity);
    var _bytes = File('user-function.desc').readAsBytesSync();
    var fileDescriptor = FileDescriptorProto.fromBuffer(_bytes);
    var _serviceDescriptorProto = FileDescriptorSet.create()
        ..file.add(fileDescriptor);

    var _descriptorBuffer = _serviceDescriptorProto.writeToBuffer();

    _eventSourcedService = EventSourcedService();
    _entityDiscoveryService = EntityDiscoveryService(_descriptorBuffer, serviceName);
  }

  Future<void> start() async {
    final server = Server([_entityDiscoveryService, _eventSourcedService]);
    await server.serve(port: 8080);
    _logger.i('Server listening on $address:$port ...');
  }

}

class StatefulService {
}

class EntityId {
  const EntityId();
}