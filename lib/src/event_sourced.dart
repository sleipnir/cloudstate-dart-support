import 'dart:ffi';
import 'dart:mirrors';

import 'package:cloudstate/src/reflect_helper.dart';
import 'package:cloudstate/src/services.dart';
import 'package:fixnum/fixnum.dart';
import 'package:grpc/src/server/call.dart';
import 'package:logger/logger.dart';
import 'package:optional/optional.dart';
import 'package:protobuf/protobuf.dart';

import '../cloudstate.dart';
import 'generated/protocol/cloudstate/entity.pb.dart';
import 'generated/protocol/cloudstate/event_sourced.pb.dart';
import 'generated/protocol/google/protobuf/any.pb.dart';

class EventSourcedStatefulService implements StatefulService {
  static const String event_sourced_type =
      'cloudstate.eventsourced.EventSourced';

  String service;
  Type userEntity;
  int snapshotEvery = 0;
  String _persistenceId = '';
  DeclarationMirror _mirror;

  EventSourcedStatefulService(
      String service, Type userEntity, int snapshotEvery) {
    this.service = service;
    this.userEntity = userEntity;
    this.snapshotEvery = snapshotEvery;
    _mirror = reflectClass(userEntity);

    var evtSourcedAnnotationMirror = reflectClass(EventSourcedEntity);
    final evtSourcedAnnotationInstanceMirror = _mirror.metadata.firstWhere(
        (d) => d.type == evtSourcedAnnotationMirror,
        orElse: () => null);

    if (evtSourcedAnnotationMirror != null) {
      final eventSourcedAnnotationInstance =
          (evtSourcedAnnotationInstanceMirror.reflectee as EventSourcedEntity);
      _persistenceId = (isPersistenceIdNotEmpty(eventSourcedAnnotationInstance)
          ? eventSourcedAnnotationInstance.persistenceId
          : MirrorSystem.getName(_mirror.simpleName));
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

  bool isPersistenceIdNotEmpty(
      EventSourcedEntity eventSourcedAnnotationInstance) =>
      eventSourcedAnnotationInstance.persistenceId != null &&
          eventSourcedAnnotationInstance.persistenceId.isNotEmpty;
}

class EventSourcedEntityHandlerFactory {
  static final _logger = Logger(
    filter: null,
    printer: LogfmtPrinter(),
    output: ConsoleOutput(),
  );

  static final Map<String, EventSourcedEntityHandlerImpl> _services = {};

  static EventSourcedEntityHandler getOrCreate(
      String entityId, EventSourcedStatefulService service) {
    if (_services.containsKey(entityId)) {
      _logger.d('EntityHandler for entity[$entityId] is cached');
      return _services[entityId];
    }
    _logger.d('Creating new EntityHandler for entity: $entityId');
    var handler = EventSourcedEntityHandlerImpl(entityId, service);
    _services[entityId] = handler;
    return handler;
  }
}

class EntityFactory {
  // ignore: missing_return
  Object getOrCreateEntityInstance(String entityId, EventSourcedContext context) {}
}

class EventSourcedEntityHandler {
  void handleEvent(EventSourcedEvent anyEvent, EventSourcedContext context) {}

  // ignore: missing_return
  Optional<Any> handleCommand(Command anyCommand, CommandContext context) {}

  void handleSnapshot(
      EventSourcedSnapshot anySnapshot, SnapshotContext context) {}

  // ignore: missing_return
  Optional<Any> snapshot(SnapshotContext context) {}
}

class EventSourcedEntityHandlerImpl
    implements EntityFactory, EventSourcedEntityHandler {
  static final _logger = Logger(
    filter: null,
    printer: LogfmtPrinter(),
    output: ConsoleOutput(),
  );
  final String persistenceId;
  final EventSourcedStatefulService service;

  ClassMirror _entityClassMirror;
  InstanceMirror _entityInstanceMirror;
  List<MethodMirror> _allDeclaredMethods = [];
  final Map<String, MethodMirror> _snapshotMethods = {};
  final Map<String, MethodMirror> _snapshotHandlerMethods = {};
  final Map<String, MethodMirror> _commandHandlerMethods = {};
  final Map<String, MethodMirror> _eventHandlerMethods = {};

  Optional<Object> entityInstanceOptional = Optional.empty();

  EventSourcedEntityHandlerImpl(this.persistenceId, this.service);

  @override
  Object getOrCreateEntityInstance(String entityId, EventSourcedContext context) {
    if (entityInstanceOptional.isPresent) {
      _logger.d('Get Entity instance from cache!');
      return entityInstanceOptional.value;
    }
    entityInstanceOptional = createEntityInstance(entityId, context, true);
    return postConstruct(entityInstanceOptional.value);
  }

  @override
  Optional<Any> handleCommand(Command anyCommand, CommandContext context) {
    try {
      _logger.v('Creating EventSourcedEntityCreationContext...');
      var instance = getOrCreateEntityInstance(anyCommand.entityId, context);
      if (!_commandHandlerMethods.containsKey(anyCommand.name)) {
        throw Exception('Method ${anyCommand.name} not found!');
      }

      _logger.d('Handling grpc method ${anyCommand.name}');
      var method = _commandHandlerMethods[anyCommand.name];
      return ReflectHelper.invoke(
          instance, method, anyCommand.payload, context);
    } on Exception {
      _logger.e('Error during handling command $Exception');
      throw Exception('Error during handling command $Exception');
    }
  }

  @override
  void handleEvent(EventSourcedEvent anyEvent, EventSourcedContext context) {
    _logger.d('Handling grpc method $anyEvent');
    var instance = getOrCreateEntityInstance(context.entityId(), context);

    var typeUrl = anyEvent.payload.typeUrl;
    var type = typeUrl.split('.').last.toLowerCase();

    var method = _eventHandlerMethods.values.firstWhere((f) =>
        f.parameters.length == 1 &&
        type == MirrorSystem.getName(f.parameters[0].simpleName).toLowerCase());

    _logger.d('Method => $method');
    ReflectHelper.invoke(instance, method, anyEvent.payload, context);
  }

  @override
  void handleSnapshot(
      EventSourcedSnapshot anySnapshot, SnapshotContext context) {
    // TODO: implement handleSnapshot
    var instance = getOrCreateEntityInstance(context.entityId(), context);
  }

  @override
  Optional<Any> snapshot(SnapshotContext context) {
    // TODO: implement snapshot
    var instance = getOrCreateEntityInstance(context.entityId(), context);
    return null;
  }

  Optional<Object> createEntityInstance(String entityId, EventSourcedContext context, bool callNonDefaultConstructor) {
    //todo: Create instance passing correct persistenceId and context values
    _logger.v('Creating Entity Instance...');
    return Optional.of(
        ReflectHelper.createInstance(service.entity(), entityId, context, callNonDefaultConstructor));
  }

  Object postConstruct(Object entity) {
    _logger.d('$entity created. Call postConstruct for entity instance');
    _entityInstanceMirror ??= reflect(entity);
    _entityClassMirror = _entityInstanceMirror.type;

    if (_allDeclaredMethods.isEmpty) {
      _allDeclaredMethods = ReflectHelper.getAllMethods(_entityClassMirror);

      _logger.v('Found ${_allDeclaredMethods.length} methods in Entity '
          '${entity.runtimeType}');

      processSnapshotMethods(_allDeclaredMethods);
      processSnapshotHandlerMethods(_allDeclaredMethods);
      processCommandMethods(_allDeclaredMethods);
      processEventMethods(_allDeclaredMethods);
    }

    return entity;
  }

  void processSnapshotMethods(List<MethodMirror> allDeclaredMethods) {
    _snapshotMethods.addAll(
        ReflectHelper.getMethodsByAnnotation(allDeclaredMethods, Snapshot));
  }

  void processSnapshotHandlerMethods(List<MethodMirror> allDeclaredMethods) {
    _snapshotHandlerMethods.addAll(ReflectHelper.getMethodsByAnnotation(
        allDeclaredMethods, SnapshotHandler));
  }

  void processCommandMethods(List<MethodMirror> allDeclaredMethods) {
    _commandHandlerMethods.addAll(ReflectHelper.getMethodsByAnnotation(
        allDeclaredMethods, EventSourcedCommandHandler));
  }

  void processEventMethods(List<MethodMirror> allDeclaredMethods) {
    _eventHandlerMethods.addAll(
        ReflectHelper.getMethodsByAnnotation(allDeclaredMethods, EventHandler));
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

class CommandContextImpl extends CommandContext {
  static final _logger = Logger(
    filter: null,
    printer: LogfmtPrinter(),
    output: ConsoleOutput(),
  );

  final EventSourcedEntityHandler entityHandler;
  final Command command;
  int sequence;
  int snapshotEvery;
  bool performSnapshot = false;

  List<Any> events = [];
  List<Failure> failures = [];

  CommandContextImpl(
      this.entityHandler, this.command, this.sequence, this.snapshotEvery);

  bool hasFailure() {
    return failures.isNotEmpty;
  }

  bool hasSnapshot() {
    return performSnapshot;
  }

  bool hasEvents() {
    return events.isNotEmpty;
  }

  @override
  int commandId() {
    return command.id.toInt();
  }

  @override
  String commandName() {
    return command.name;
  }

  @override
  void effect(ServiceCall effect, [bool synchronous = false]) {
    // TODO: implement effect
  }

  @override
  void emit(Object event) {
    if (failures.isEmpty) {
      var anyEvent = Any.pack(event as GeneratedMessage);
      sequence ??= 0;
      var nextSequenceNumber = sequence + events.length + 1;

      var eventSeq = EventSourcedEvent.create()
        ..sequence = Int64.parseInt(nextSequenceNumber.toString())
        ..payload = anyEvent;

      entityHandler.handleEvent(eventSeq, EventSourcedContextImpl(command.entityId));

      events.add(anyEvent);
      performSnapshot = (snapshotEvery > 0) &&
          (performSnapshot || (nextSequenceNumber % snapshotEvery == 0));
    }
  }

  @override
  String entityId() {
    return command.entityId;
  }

  @override
  RuntimeException fail(String errorMessage) {
    _logger.e('Fail $errorMessage');
    failures.add(Failure.create()
      ..commandId = command.id
      ..description = errorMessage);
    return RuntimeException();
  }

  @override
  void forward(ServiceCallClass to) {
    // TODO: implement forward
  }

  @override
  int sequenceNumber() {
    return sequence;
  }

  @override
  ServiceCallFactory serviceCallFactory() {
    // TODO: implement serviceCallFactory
    return null;
  }
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
abstract class EventSourcedEntityCreationContext extends EventSourcedContext {}

class EventSourcedEntityCreationContextImpl
    extends EventSourcedEntityCreationContext {
  @override
  String entityId() {
    // TODO: implement entityId
    return null;
  }

  @override
  ServiceCallFactory serviceCallFactory() {
    // TODO: implement serviceCallFactory
    return null;
  }
}

/// A snapshot context. */
abstract class SnapshotContext extends EventSourcedContext {
  /// The sequence number of the last event that this snapshot includes.
  ///
  /// @return The sequence number.
  int sequenceNumber();
}

class SnapshotContextImpl extends SnapshotContext {
  final String _id;
  final int _sequence;

  SnapshotContextImpl(this._id, this._sequence);

  @override
  String entityId() {
    return _id;
  }

  @override
  int sequenceNumber() {
    return _sequence;
  }

  @override
  ServiceCallFactory serviceCallFactory() {
    // TODO: implement serviceCallFactory
    return null;
  }
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

class RuntimeException {}

abstract class EventSourcedContext extends EntityContext {}

class EventSourcedContextImpl extends EventSourcedContext {
  final String entity;

  EventSourcedContextImpl(this.entity);

  @override
  String entityId() {
    return entity;
  }

  @override
  ServiceCallFactory serviceCallFactory() {
    // TODO: implement serviceCallFactory
    return null;
  }
}
