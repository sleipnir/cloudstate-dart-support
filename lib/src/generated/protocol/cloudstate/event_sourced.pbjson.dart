///
//  Generated code. Do not modify.
//  source: protocol/cloudstate/event_sourced.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const EventSourcedInit$json = const {
  '1': 'EventSourcedInit',
  '2': const [
    const {'1': 'service_name', '3': 1, '4': 1, '5': 9, '10': 'serviceName'},
    const {'1': 'entity_id', '3': 2, '4': 1, '5': 9, '10': 'entityId'},
    const {
      '1': 'snapshot',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.cloudstate.eventsourced.EventSourcedSnapshot',
      '10': 'snapshot'
    },
  ],
};

const EventSourcedSnapshot$json = const {
  '1': 'EventSourcedSnapshot',
  '2': const [
    const {
      '1': 'snapshot_sequence',
      '3': 1,
      '4': 1,
      '5': 3,
      '10': 'snapshotSequence'
    },
    const {
      '1': 'snapshot',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Any',
      '10': 'snapshot'
    },
  ],
};

const EventSourcedEvent$json = const {
  '1': 'EventSourcedEvent',
  '2': const [
    const {'1': 'sequence', '3': 1, '4': 1, '5': 3, '10': 'sequence'},
    const {
      '1': 'payload',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Any',
      '10': 'payload'
    },
  ],
};

const EventSourcedReply$json = const {
  '1': 'EventSourcedReply',
  '2': const [
    const {'1': 'command_id', '3': 1, '4': 1, '5': 3, '10': 'commandId'},
    const {
      '1': 'client_action',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.cloudstate.ClientAction',
      '10': 'clientAction'
    },
    const {
      '1': 'side_effects',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.cloudstate.SideEffect',
      '10': 'sideEffects'
    },
    const {
      '1': 'events',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.google.protobuf.Any',
      '10': 'events'
    },
    const {
      '1': 'snapshot',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Any',
      '10': 'snapshot'
    },
  ],
};

const EventSourcedStreamIn$json = const {
  '1': 'EventSourcedStreamIn',
  '2': const [
    const {
      '1': 'init',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.cloudstate.eventsourced.EventSourcedInit',
      '9': 0,
      '10': 'init'
    },
    const {
      '1': 'event',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.cloudstate.eventsourced.EventSourcedEvent',
      '9': 0,
      '10': 'event'
    },
    const {
      '1': 'command',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.cloudstate.Command',
      '9': 0,
      '10': 'command'
    },
  ],
  '8': const [
    const {'1': 'message'},
  ],
};

const EventSourcedStreamOut$json = const {
  '1': 'EventSourcedStreamOut',
  '2': const [
    const {
      '1': 'reply',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.cloudstate.eventsourced.EventSourcedReply',
      '9': 0,
      '10': 'reply'
    },
    const {
      '1': 'failure',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.cloudstate.Failure',
      '9': 0,
      '10': 'failure'
    },
  ],
  '8': const [
    const {'1': 'message'},
  ],
};
