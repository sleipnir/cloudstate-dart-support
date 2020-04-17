/// More dartdocs go here.
library cloudstate;

export 'package:logger/logger.dart';
export 'src/base.dart';
export 'src/crdt.dart';
export 'src/event_sourced.dart';
export 'src/generated/protocol/google/protobuf/descriptor.pb.dart';

import 'package:cloudstate/src/base.dart';
import 'package:cloudstate/src/event_sourced.dart';
import 'package:logger/logger.dart';
import 'package:cloudstate/src/services.dart';

class Cloudstate {
  final Map<String, StatefulService> services = {};

  final _logger = Logger(
    filter: CloudstateLogFilter(Level.verbose),
    printer: LogfmtPrinter(),
    output: SimpleConsoleOutput(),
  );

  int port;
  String address;
  Config _config;

  void registerEventSourcedEntity(String serviceName, Type entity) {
    _logger.d('Registering EventSourcedEntity...');

    if (entity == null) {
      throw ArgumentError('type: $entity');
    }

    _config = Config(port, address, Level.verbose);
    services[serviceName] = EventSourcedStatefulService(serviceName, entity, 1);
  }

  Future<void> start([Config config]) {
    if (config == null) {
      return CloudstateRunner(_config, services).start();
    }
    return CloudstateRunner(config, services).start();
  }
}
