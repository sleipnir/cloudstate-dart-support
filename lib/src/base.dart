import 'dart:io';

import 'package:grpc/grpc.dart';
import 'package:logger/logger.dart';
import 'package:cloudstate/src/services.dart';
import 'package:cloudstate/src/generated/protocol/google/protobuf/any.pb.dart';

class EntityId {
  const EntityId();
}

class Config {
  int port;
  String address;
  Level logLevel;

  Config(this.port, this.address, [this.logLevel = Level.info]);
}

class CloudstateRunner {
  final Config config;
  final Map<String, StatefulService> services;

  EntityDiscoveryService _entityDiscoveryService;
  EventSourcedService _eventSourcedService;

  Logger _logger;

  CloudstateRunner(this.config, this.services);

  Future<void> start() async {
    _logger = Logger(
      filter: CloudstateLogFilter(config.logLevel),
      printer: PrettyPrinter(),
      output: SimpleConsoleOutput(),
    );

    _eventSourcedService = EventSourcedService(config, services);

    _entityDiscoveryService = EntityDiscoveryService(config, services);

    final server = Server([_entityDiscoveryService, _eventSourcedService]);

    await server.serve(port: config.port);
    _logger.i('Server listening on ${config.address}:${config.port} ...');
  }
}

/// Root class of all contexts. */
abstract class Context {
  /// Get the service call factory for this stateful service. */
  ServiceCallFactory serviceCallFactory();
}

/// A context that allows instructing the proxy to perform a side effect. */
abstract class EffectContext extends Context {
  ///
  /// Invoke the referenced service call as an effect once this action is completed.
  ///
  /// <p>The effect will be performed asynchronously, ie, the proxy won't wait for the effect to
  /// finish before sending the reply.
  ///
  /// <p>{@link ServiceCall} instances can be created using the {@link ServiceCallFactory} obtained
  /// from any (including this) contexts {@link Context#serviceCallFactory()} method.
  ///
  /// @param effect The service call to make as an effect effect.
  ///
  void effect(ServiceCall effect, [bool synchronous = false]);
}

/// Root context for all contexts that pertain to entities, that is, things that are addressable via
/// an entity id.
abstract class EntityContext extends Context {
  /// The id of the entity that this context is for.
  ///
  /// @return The entity id.
  String entityId();
}

/// A service call factory.
///
/// This is used to create's that can be passed to
/// EffectContext#effect(ServiceCall) and ClientActionContext#forward(ServiceCall) .
class ServiceCallFactory<T> {
  /// Lookup a reference to the service call with the given name and method.
  ///
  /// @param serviceName The fully qualified name of a gRPC service that this stateful service
  ///     serves.
  /// @param methodName The name of a method on the gRPC service.
  /// @param messageType The expected type of the input message to the method.
  /// @param <T> The type of the parameter that it accepts.
  /// @return A reference to the service call.
  /// @throws java.util.NoSuchElementException if the service or method is not found.
  /// @throws IllegalArgumentException if the accepted input type for the method doesn't match <code>
  ///     messageType</code>.
  // ignore: missing_return
  ServiceCallRef<T> lookup(
      String serviceName, String methodName, Type messageType) {}
}

/// A reference to a call on a service.
///
/// @param <T> The type of message the call accepts.
class ServiceCallRef<T> {
  /// Create a call from this reference, using the given message as the message to pass to it when
  /// it's invoked.
  ///
  /// @param message The message to pass to the method.
  /// @return A service call that can be used as a forward or effect.
  // ignore: missing_return
  ServiceCallClass createCall(T message) {}
}

class ServiceCallClass {
  /// The reference to the call.
  ///
  /// @return The reference to the call.
  // ignore: missing_return
  ServiceCallRef ref() {}

  /// The message to pass to the call when the call is invoked.
  ///
  /// @return The message to pass to the call, serialized as an {@link Any}.
  // ignore: missing_return
  Any message() {}
}

String capitalize(String string) {
  if (string == null) {
    throw ArgumentError('string: $string');
  }

  if (string.isEmpty) {
    return string;
  }

  return string[0].toUpperCase() + string.substring(1);
}

class SimpleConsoleOutput extends LogOutput {

  @override
  void output(OutputEvent event) {
    for (var line in event.lines) {
      printOutput(line);
    }
  }

  void printOutput(String line) async {
    await stdout.writeln('${DateTime.now()}: $line');
  }
}

class CloudstateLogFilter extends LogFilter {
  Level logLevel;

  CloudstateLogFilter([this.logLevel = Level.info]);

  @override
  bool shouldLog(LogEvent event) {
    if (event.level.index >= logLevel.index) {
      return true;
    }
    return false;
  }
}