///
//  Generated code. Do not modify.
//  source: protocol/cloudstate/entity.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const Reply$json = const {
  '1': 'Reply',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Any', '10': 'payload'},
  ],
};

const Forward$json = const {
  '1': 'Forward',
  '2': const [
    const {'1': 'service_name', '3': 1, '4': 1, '5': 9, '10': 'serviceName'},
    const {'1': 'command_name', '3': 2, '4': 1, '5': 9, '10': 'commandName'},
    const {'1': 'payload', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Any', '10': 'payload'},
  ],
};

const ClientAction$json = const {
  '1': 'ClientAction',
  '2': const [
    const {'1': 'reply', '3': 1, '4': 1, '5': 11, '6': '.cloudstate.Reply', '9': 0, '10': 'reply'},
    const {'1': 'forward', '3': 2, '4': 1, '5': 11, '6': '.cloudstate.Forward', '9': 0, '10': 'forward'},
    const {'1': 'failure', '3': 3, '4': 1, '5': 11, '6': '.cloudstate.Failure', '9': 0, '10': 'failure'},
  ],
  '8': const [
    const {'1': 'action'},
  ],
};

const SideEffect$json = const {
  '1': 'SideEffect',
  '2': const [
    const {'1': 'service_name', '3': 1, '4': 1, '5': 9, '10': 'serviceName'},
    const {'1': 'command_name', '3': 2, '4': 1, '5': 9, '10': 'commandName'},
    const {'1': 'payload', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Any', '10': 'payload'},
    const {'1': 'synchronous', '3': 4, '4': 1, '5': 8, '10': 'synchronous'},
  ],
};

const Command$json = const {
  '1': 'Command',
  '2': const [
    const {'1': 'entity_id', '3': 1, '4': 1, '5': 9, '10': 'entityId'},
    const {'1': 'id', '3': 2, '4': 1, '5': 3, '10': 'id'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'payload', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Any', '10': 'payload'},
    const {'1': 'streamed', '3': 5, '4': 1, '5': 8, '10': 'streamed'},
  ],
};

const StreamCancelled$json = const {
  '1': 'StreamCancelled',
  '2': const [
    const {'1': 'entity_id', '3': 1, '4': 1, '5': 9, '10': 'entityId'},
    const {'1': 'id', '3': 2, '4': 1, '5': 3, '10': 'id'},
  ],
};

const Failure$json = const {
  '1': 'Failure',
  '2': const [
    const {'1': 'command_id', '3': 1, '4': 1, '5': 3, '10': 'commandId'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
  ],
};

const EntitySpec$json = const {
  '1': 'EntitySpec',
  '2': const [
    const {'1': 'proto', '3': 1, '4': 1, '5': 12, '10': 'proto'},
    const {'1': 'entities', '3': 2, '4': 3, '5': 11, '6': '.cloudstate.Entity', '10': 'entities'},
    const {'1': 'service_info', '3': 3, '4': 1, '5': 11, '6': '.cloudstate.ServiceInfo', '10': 'serviceInfo'},
  ],
};

const ServiceInfo$json = const {
  '1': 'ServiceInfo',
  '2': const [
    const {'1': 'service_name', '3': 1, '4': 1, '5': 9, '10': 'serviceName'},
    const {'1': 'service_version', '3': 2, '4': 1, '5': 9, '10': 'serviceVersion'},
    const {'1': 'service_runtime', '3': 3, '4': 1, '5': 9, '10': 'serviceRuntime'},
    const {'1': 'support_library_name', '3': 4, '4': 1, '5': 9, '10': 'supportLibraryName'},
    const {'1': 'support_library_version', '3': 5, '4': 1, '5': 9, '10': 'supportLibraryVersion'},
  ],
};

const Entity$json = const {
  '1': 'Entity',
  '2': const [
    const {'1': 'entity_type', '3': 1, '4': 1, '5': 9, '10': 'entityType'},
    const {'1': 'service_name', '3': 2, '4': 1, '5': 9, '10': 'serviceName'},
    const {'1': 'persistence_id', '3': 3, '4': 1, '5': 9, '10': 'persistenceId'},
  ],
};

const UserFunctionError$json = const {
  '1': 'UserFunctionError',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

const ProxyInfo$json = const {
  '1': 'ProxyInfo',
  '2': const [
    const {'1': 'protocol_major_version', '3': 1, '4': 1, '5': 5, '10': 'protocolMajorVersion'},
    const {'1': 'protocol_minor_version', '3': 2, '4': 1, '5': 5, '10': 'protocolMinorVersion'},
    const {'1': 'proxy_name', '3': 3, '4': 1, '5': 9, '10': 'proxyName'},
    const {'1': 'proxy_version', '3': 4, '4': 1, '5': 9, '10': 'proxyVersion'},
    const {'1': 'supported_entity_types', '3': 5, '4': 3, '5': 9, '10': 'supportedEntityTypes'},
  ],
};

