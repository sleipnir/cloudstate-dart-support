import 'dart:mirrors';

import 'package:cloudstate/src/services.dart';

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
