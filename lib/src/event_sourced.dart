import 'dart:mirrors';

import 'package:cloudstate/src/services.dart';

import '../cloudstate.dart';

class EventSourcedStatefulService implements StatefulService {
  static const String event_sourced_type = 'cloudstate.eventsourced.EventSourced';

  String service;
  Type userEntity;
  int snapshotEvery = 0;
  String _persistenceId = '';
  DeclarationMirror _mirror;

  EventSourcedStatefulService(String service, Type userEntity, int snapshotEvery) {
    this.service = service;
    this.userEntity = userEntity;
    this.snapshotEvery = snapshotEvery;
    _mirror = reflectClass(userEntity);

    // ignore: omit_local_variable_types
    final ClassMirror annotationMirror = reflectClass(EventSourcedEntity);
    final annotationInstanceMirror = _mirror.metadata
        .firstWhere((d) => d.type == annotationMirror, orElse: () => null);

    if (annotationMirror != null) {
      final eventSourcedAnnotationInstance = (annotationInstanceMirror.reflectee as EventSourcedEntity);
      _persistenceId = eventSourcedAnnotationInstance.persistenceId;
      this.snapshotEvery = eventSourcedAnnotationInstance.snapshotEvery;
    }

  }

  @override
  String serviceName() {
    return service;
  }

  @override
  String entityType() {
    return event_sourced_type;
  }

  @override
  String persistenceId() {
    return _persistenceId;
  }

  @override
  Type entity() {
    return userEntity;
  }

}

class EventSourcedEntity {
  final String persistenceId;
  final int snapshotEvery;
  const EventSourcedEntity([this.persistenceId = '', this.snapshotEvery = 0]);
}

class EventSourcedCommandHandler {
  final String name;
  const EventSourcedCommandHandler([this.name = '']);
}

class EventHandler {
  //TODO define Class<?> eventClass() default Object.class;
  final Type eventClass;
  const EventHandler([this.eventClass = Object]);
}

class Snapshot {
  const Snapshot();
}

class SnapshotHandler {
  const SnapshotHandler();
}

/// An event sourced command context.
///
/// <p>Methods annotated with {@link CommandHandler} may take this is a parameter. It allows emitting
/// new events in response to a command, along with forwarding the result to other entities, and
/// performing side effects on other entities.
abstract class CommandContext extends EventSourcedContext
    implements ClientActionContext, EffectContext {

  /// The current sequence number of events in this entity.
  ///
  /// @return The current sequence number.
  int sequenceNumber();

  /// The name of the command being executed.
  ///
  /// @return The name of the command.
  String commandName();

  /// The id of the command being executed.
  ///
  /// @return The id of the command.
  int commandId();

  /// Emit the given event. The event will be persisted, and the handler of the event defined in the
  /// current behavior will immediately be executed to pick it up.
  ///
  /// @param event The event to emit.
  void emit(Object event);

}

abstract class EventContext extends EventSourcedContext {
  /// The sequence number of the current event being processed.
  ///
  /// @return The sequence number.
  int sequenceNumber();
}

/// Creation context for {@link EventSourcedEntity} annotated entities.
///
/// <p>This may be accepted as an argument to the constructor of an event sourced entity.
abstract class EventSourcedEntityCreationContext extends EventSourcedContext {

}

/// A snapshot context. */
abstract class SnapshotContext extends EventSourcedContext {
  /// The sequence number of the last event that this snapshot includes.
  ///
  /// @return The sequence number.
  int sequenceNumber();
}

/// Context that provides client actions, which include failing and forwarding.
///
/// <p>These contexts are typically made available in response to commands.
abstract class ClientActionContext extends Context {
  /// Fail the command with the given message.
  ///
  /// @param errorMessage The error message to send to the client.
  RuntimeException fail(String errorMessage);

  /// Instruct the proxy to forward handling of this command to another entity served by this
  /// stateful function.
  ///
  /// <p>The command will be forwarded after successful completion of handling this command,
  /// including any persistence that this command does.
  ///
  /// <p>{@link ServiceCall} instances can be created using the {@link ServiceCallFactory} obtained
  /// from any (including this) contexts {@link Context#serviceCallFactory()} method.
  ///
  /// @param to The service call to forward command processing to.
  void forward(ServiceCallClass to);
}

class RuntimeException {
}

abstract class EventSourcedContext extends EntityContext {
}
