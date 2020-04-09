
class EventSourcedCommandHandler {
  final String name;
  const EventSourcedCommandHandler(this.name);
}

class EventHandler {
  //TODO define Class<?> eventClass() default Object.class;
  const EventHandler();
}

class EventSourcedEntity {
  final String persistenceId;
  final int snapshotEvery;
  const EventSourcedEntity(this.persistenceId, this.snapshotEvery);
}

class Snapshot {
  const Snapshot();
}

class SnapshotHandler {
  const SnapshotHandler();
}