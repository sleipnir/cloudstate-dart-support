
import 'package:grpc/grpc.dart';
import 'package:logger/logger.dart';
import 'package:cloudstate/src/services.dart';

class EntityId {
  const EntityId();
}

class Config {
  int port;
  String address;

  Config(this.port, this.address);
}

class CloudstateRunner {
  final Config config;
  final Map<String, StatefulService> services;

  EntityDiscoveryService _entityDiscoveryService;
  EventSourcedService _eventSourcedService;

  final _logger = Logger(
    filter: null,
    printer: LogfmtPrinter(),
    output: ConsoleOutput(),
  );

  CloudstateRunner(this.config, this.services);

  Future<void> start() async {
    _eventSourcedService = EventSourcedService();

    _entityDiscoveryService = EntityDiscoveryService(services);

    final server = Server([_entityDiscoveryService, _eventSourcedService]);
    await server.serve(port: config.port);

    _logger.i('Server listening on ${config.address}:${config.port} ...');
  }
}