///
//  Generated code. Do not modify.
//  source: protocol/cloudstate/function.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const FunctionCommand$json = const {
  '1': 'FunctionCommand',
  '2': const [
    const {'1': 'service_name', '3': 2, '4': 1, '5': 9, '10': 'serviceName'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {
      '1': 'payload',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Any',
      '10': 'payload'
    },
  ],
};

const FunctionReply$json = const {
  '1': 'FunctionReply',
  '2': const [
    const {
      '1': 'failure',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.cloudstate.Failure',
      '9': 0,
      '10': 'failure'
    },
    const {
      '1': 'reply',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.cloudstate.Reply',
      '9': 0,
      '10': 'reply'
    },
    const {
      '1': 'forward',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.cloudstate.Forward',
      '9': 0,
      '10': 'forward'
    },
    const {
      '1': 'side_effects',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.cloudstate.SideEffect',
      '10': 'sideEffects'
    },
  ],
  '8': const [
    const {'1': 'response'},
  ],
};
