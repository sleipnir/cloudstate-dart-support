
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