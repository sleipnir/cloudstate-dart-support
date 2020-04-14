///
//  Generated code. Do not modify.
//  source: protocol/cloudstate/crdt.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const CrdtWriteConsistency$json = const {
  '1': 'CrdtWriteConsistency',
  '2': const [
    const {'1': 'LOCAL', '2': 0},
    const {'1': 'MAJORITY', '2': 1},
    const {'1': 'ALL', '2': 2},
  ],
};

const CrdtClock$json = const {
  '1': 'CrdtClock',
  '2': const [
    const {'1': 'DEFAULT', '2': 0},
    const {'1': 'REVERSE', '2': 1},
    const {'1': 'CUSTOM', '2': 2},
    const {'1': 'CUSTOM_AUTO_INCREMENT', '2': 3},
  ],
};

const CrdtStreamIn$json = const {
  '1': 'CrdtStreamIn',
  '2': const [
    const {
      '1': 'init',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.cloudstate.crdt.CrdtInit',
      '9': 0,
      '10': 'init'
    },
    const {
      '1': 'state',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.cloudstate.crdt.CrdtState',
      '9': 0,
      '10': 'state'
    },
    const {
      '1': 'changed',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.cloudstate.crdt.CrdtDelta',
      '9': 0,
      '10': 'changed'
    },
    const {
      '1': 'deleted',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.cloudstate.crdt.CrdtDelete',
      '9': 0,
      '10': 'deleted'
    },
    const {
      '1': 'command',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.cloudstate.Command',
      '9': 0,
      '10': 'command'
    },
    const {
      '1': 'stream_cancelled',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.cloudstate.StreamCancelled',
      '9': 0,
      '10': 'streamCancelled'
    },
  ],
  '8': const [
    const {'1': 'message'},
  ],
};

const CrdtStreamOut$json = const {
  '1': 'CrdtStreamOut',
  '2': const [
    const {
      '1': 'reply',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.cloudstate.crdt.CrdtReply',
      '9': 0,
      '10': 'reply'
    },
    const {
      '1': 'streamed_message',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.cloudstate.crdt.CrdtStreamedMessage',
      '9': 0,
      '10': 'streamedMessage'
    },
    const {
      '1': 'stream_cancelled_response',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.cloudstate.crdt.CrdtStreamCancelledResponse',
      '9': 0,
      '10': 'streamCancelledResponse'
    },
    const {
      '1': 'failure',
      '3': 4,
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

const CrdtState$json = const {
  '1': 'CrdtState',
  '2': const [
    const {
      '1': 'gcounter',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.cloudstate.crdt.GCounterState',
      '9': 0,
      '10': 'gcounter'
    },
    const {
      '1': 'pncounter',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.cloudstate.crdt.PNCounterState',
      '9': 0,
      '10': 'pncounter'
    },
    const {
      '1': 'gset',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.cloudstate.crdt.GSetState',
      '9': 0,
      '10': 'gset'
    },
    const {
      '1': 'orset',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.cloudstate.crdt.ORSetState',
      '9': 0,
      '10': 'orset'
    },
    const {
      '1': 'lwwregister',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.cloudstate.crdt.LWWRegisterState',
      '9': 0,
      '10': 'lwwregister'
    },
    const {
      '1': 'flag',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.cloudstate.crdt.FlagState',
      '9': 0,
      '10': 'flag'
    },
    const {
      '1': 'ormap',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.cloudstate.crdt.ORMapState',
      '9': 0,
      '10': 'ormap'
    },
    const {
      '1': 'vote',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.cloudstate.crdt.VoteState',
      '9': 0,
      '10': 'vote'
    },
  ],
  '8': const [
    const {'1': 'state'},
  ],
};

const GCounterState$json = const {
  '1': 'GCounterState',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 4, '10': 'value'},
  ],
};

const PNCounterState$json = const {
  '1': 'PNCounterState',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 3, '10': 'value'},
  ],
};

const GSetState$json = const {
  '1': 'GSetState',
  '2': const [
    const {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.google.protobuf.Any',
      '10': 'items'
    },
  ],
};

const ORSetState$json = const {
  '1': 'ORSetState',
  '2': const [
    const {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.google.protobuf.Any',
      '10': 'items'
    },
  ],
};

const LWWRegisterState$json = const {
  '1': 'LWWRegisterState',
  '2': const [
    const {
      '1': 'value',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Any',
      '10': 'value'
    },
    const {
      '1': 'clock',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.cloudstate.crdt.CrdtClock',
      '10': 'clock'
    },
    const {
      '1': 'custom_clock_value',
      '3': 3,
      '4': 1,
      '5': 3,
      '10': 'customClockValue'
    },
  ],
};

const FlagState$json = const {
  '1': 'FlagState',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 8, '10': 'value'},
  ],
};

const ORMapState$json = const {
  '1': 'ORMapState',
  '2': const [
    const {
      '1': 'entries',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.cloudstate.crdt.ORMapEntry',
      '10': 'entries'
    },
  ],
};

const ORMapEntry$json = const {
  '1': 'ORMapEntry',
  '2': const [
    const {
      '1': 'key',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Any',
      '10': 'key'
    },
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.cloudstate.crdt.CrdtState',
      '10': 'value'
    },
  ],
};

const VoteState$json = const {
  '1': 'VoteState',
  '2': const [
    const {'1': 'votes_for', '3': 1, '4': 1, '5': 13, '10': 'votesFor'},
    const {'1': 'total_voters', '3': 2, '4': 1, '5': 13, '10': 'totalVoters'},
    const {'1': 'self_vote', '3': 3, '4': 1, '5': 8, '10': 'selfVote'},
  ],
};

const CrdtDelta$json = const {
  '1': 'CrdtDelta',
  '2': const [
    const {
      '1': 'gcounter',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.cloudstate.crdt.GCounterDelta',
      '9': 0,
      '10': 'gcounter'
    },
    const {
      '1': 'pncounter',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.cloudstate.crdt.PNCounterDelta',
      '9': 0,
      '10': 'pncounter'
    },
    const {
      '1': 'gset',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.cloudstate.crdt.GSetDelta',
      '9': 0,
      '10': 'gset'
    },
    const {
      '1': 'orset',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.cloudstate.crdt.ORSetDelta',
      '9': 0,
      '10': 'orset'
    },
    const {
      '1': 'lwwregister',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.cloudstate.crdt.LWWRegisterDelta',
      '9': 0,
      '10': 'lwwregister'
    },
    const {
      '1': 'flag',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.cloudstate.crdt.FlagDelta',
      '9': 0,
      '10': 'flag'
    },
    const {
      '1': 'ormap',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.cloudstate.crdt.ORMapDelta',
      '9': 0,
      '10': 'ormap'
    },
    const {
      '1': 'vote',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.cloudstate.crdt.VoteDelta',
      '9': 0,
      '10': 'vote'
    },
  ],
  '8': const [
    const {'1': 'delta'},
  ],
};

const GCounterDelta$json = const {
  '1': 'GCounterDelta',
  '2': const [
    const {'1': 'increment', '3': 1, '4': 1, '5': 4, '10': 'increment'},
  ],
};

const PNCounterDelta$json = const {
  '1': 'PNCounterDelta',
  '2': const [
    const {'1': 'change', '3': 1, '4': 1, '5': 18, '10': 'change'},
  ],
};

const GSetDelta$json = const {
  '1': 'GSetDelta',
  '2': const [
    const {
      '1': 'added',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.google.protobuf.Any',
      '10': 'added'
    },
  ],
};

const ORSetDelta$json = const {
  '1': 'ORSetDelta',
  '2': const [
    const {'1': 'cleared', '3': 1, '4': 1, '5': 8, '10': 'cleared'},
    const {
      '1': 'removed',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.google.protobuf.Any',
      '10': 'removed'
    },
    const {
      '1': 'added',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.google.protobuf.Any',
      '10': 'added'
    },
  ],
};

const LWWRegisterDelta$json = const {
  '1': 'LWWRegisterDelta',
  '2': const [
    const {
      '1': 'value',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Any',
      '10': 'value'
    },
    const {
      '1': 'clock',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.cloudstate.crdt.CrdtClock',
      '10': 'clock'
    },
    const {
      '1': 'custom_clock_value',
      '3': 3,
      '4': 1,
      '5': 3,
      '10': 'customClockValue'
    },
  ],
};

const FlagDelta$json = const {
  '1': 'FlagDelta',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 8, '10': 'value'},
  ],
};

const ORMapDelta$json = const {
  '1': 'ORMapDelta',
  '2': const [
    const {'1': 'cleared', '3': 1, '4': 1, '5': 8, '10': 'cleared'},
    const {
      '1': 'removed',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.google.protobuf.Any',
      '10': 'removed'
    },
    const {
      '1': 'updated',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.cloudstate.crdt.ORMapEntryDelta',
      '10': 'updated'
    },
    const {
      '1': 'added',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.cloudstate.crdt.ORMapEntry',
      '10': 'added'
    },
  ],
};

const ORMapEntryDelta$json = const {
  '1': 'ORMapEntryDelta',
  '2': const [
    const {
      '1': 'key',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Any',
      '10': 'key'
    },
    const {
      '1': 'delta',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.cloudstate.crdt.CrdtDelta',
      '10': 'delta'
    },
  ],
};

const VoteDelta$json = const {
  '1': 'VoteDelta',
  '2': const [
    const {'1': 'self_vote', '3': 1, '4': 1, '5': 8, '10': 'selfVote'},
    const {'1': 'votes_for', '3': 2, '4': 1, '5': 5, '10': 'votesFor'},
    const {'1': 'total_voters', '3': 3, '4': 1, '5': 5, '10': 'totalVoters'},
  ],
};

const CrdtInit$json = const {
  '1': 'CrdtInit',
  '2': const [
    const {'1': 'service_name', '3': 1, '4': 1, '5': 9, '10': 'serviceName'},
    const {'1': 'entity_id', '3': 2, '4': 1, '5': 9, '10': 'entityId'},
    const {
      '1': 'state',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.cloudstate.crdt.CrdtState',
      '10': 'state'
    },
  ],
};

const CrdtDelete$json = const {
  '1': 'CrdtDelete',
};

const CrdtReply$json = const {
  '1': 'CrdtReply',
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
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.cloudstate.SideEffect',
      '10': 'sideEffects'
    },
    const {
      '1': 'state_action',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.cloudstate.crdt.CrdtStateAction',
      '10': 'stateAction'
    },
    const {'1': 'streamed', '3': 6, '4': 1, '5': 8, '10': 'streamed'},
  ],
};

const CrdtStateAction$json = const {
  '1': 'CrdtStateAction',
  '2': const [
    const {
      '1': 'create',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.cloudstate.crdt.CrdtState',
      '9': 0,
      '10': 'create'
    },
    const {
      '1': 'update',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.cloudstate.crdt.CrdtDelta',
      '9': 0,
      '10': 'update'
    },
    const {
      '1': 'delete',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.cloudstate.crdt.CrdtDelete',
      '9': 0,
      '10': 'delete'
    },
    const {
      '1': 'write_consistency',
      '3': 8,
      '4': 1,
      '5': 14,
      '6': '.cloudstate.crdt.CrdtWriteConsistency',
      '10': 'writeConsistency'
    },
  ],
  '8': const [
    const {'1': 'action'},
  ],
};

const CrdtStreamedMessage$json = const {
  '1': 'CrdtStreamedMessage',
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
    const {'1': 'end_stream', '3': 4, '4': 1, '5': 8, '10': 'endStream'},
  ],
};

const CrdtStreamCancelledResponse$json = const {
  '1': 'CrdtStreamCancelledResponse',
  '2': const [
    const {'1': 'command_id', '3': 1, '4': 1, '5': 3, '10': 'commandId'},
    const {
      '1': 'side_effects',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.cloudstate.SideEffect',
      '10': 'sideEffects'
    },
    const {
      '1': 'state_action',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.cloudstate.crdt.CrdtStateAction',
      '10': 'stateAction'
    },
  ],
};
