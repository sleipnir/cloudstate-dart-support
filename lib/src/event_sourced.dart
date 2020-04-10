import 'package:cloudstate/src/services.dart';

class EventSourcedStatefulService implements StatefulService {
  static const String event_sourced_type = 'cloudstate.eventsourced.EventSourced';

  String service;
  Type userEntity;
  int snapshotEvery;

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
    return null;
  }

  @override
  Type entity() {
    return userEntity;
  }

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

class EventSourcedEntity {
  final String persistenceId;
  final int snapshotEvery;
  const EventSourcedEntity([this.persistenceId = '', this.snapshotEvery = 0]);
}

class Snapshot {
  const Snapshot();
}

class SnapshotHandler {
  const SnapshotHandler();
}
