///
//  Generated code. Do not modify.
//  source: protocol/cloudstate/entity.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/any.pb.dart' as $5;

class Reply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Reply',
      package: const $pb.PackageName('cloudstate'), createEmptyInstance: create)
    ..aOM<$5.Any>(1, 'payload', subBuilder: $5.Any.create)
    ..hasRequiredFields = false;

  Reply._() : super();
  factory Reply() => create();
  factory Reply.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Reply.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Reply clone() => Reply()..mergeFromMessage(this);
  Reply copyWith(void Function(Reply) updates) =>
      super.copyWith((message) => updates(message as Reply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Reply create() => Reply._();
  Reply createEmptyInstance() => create();
  static $pb.PbList<Reply> createRepeated() => $pb.PbList<Reply>();
  @$core.pragma('dart2js:noInline')
  static Reply getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Reply>(create);
  static Reply _defaultInstance;

  @$pb.TagNumber(1)
  $5.Any get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload($5.Any v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  $5.Any ensurePayload() => $_ensure(0);
}

class Forward extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Forward',
      package: const $pb.PackageName('cloudstate'), createEmptyInstance: create)
    ..aOS(1, 'serviceName')
    ..aOS(2, 'commandName')
    ..aOM<$5.Any>(3, 'payload', subBuilder: $5.Any.create)
    ..hasRequiredFields = false;

  Forward._() : super();
  factory Forward() => create();
  factory Forward.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Forward.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Forward clone() => Forward()..mergeFromMessage(this);
  Forward copyWith(void Function(Forward) updates) =>
      super.copyWith((message) => updates(message as Forward));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Forward create() => Forward._();
  Forward createEmptyInstance() => create();
  static $pb.PbList<Forward> createRepeated() => $pb.PbList<Forward>();
  @$core.pragma('dart2js:noInline')
  static Forward getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Forward>(create);
  static Forward _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get serviceName => $_getSZ(0);
  @$pb.TagNumber(1)
  set serviceName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasServiceName() => $_has(0);
  @$pb.TagNumber(1)
  void clearServiceName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get commandName => $_getSZ(1);
  @$pb.TagNumber(2)
  set commandName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCommandName() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommandName() => clearField(2);

  @$pb.TagNumber(3)
  $5.Any get payload => $_getN(2);
  @$pb.TagNumber(3)
  set payload($5.Any v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasPayload() => $_has(2);
  @$pb.TagNumber(3)
  void clearPayload() => clearField(3);
  @$pb.TagNumber(3)
  $5.Any ensurePayload() => $_ensure(2);
}

enum ClientAction_Action { reply, forward, failure, notSet }

class ClientAction extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ClientAction_Action>
      _ClientAction_ActionByTag = {
    1: ClientAction_Action.reply,
    2: ClientAction_Action.forward,
    3: ClientAction_Action.failure,
    0: ClientAction_Action.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ClientAction',
      package: const $pb.PackageName('cloudstate'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<Reply>(1, 'reply', subBuilder: Reply.create)
    ..aOM<Forward>(2, 'forward', subBuilder: Forward.create)
    ..aOM<Failure>(3, 'failure', subBuilder: Failure.create)
    ..hasRequiredFields = false;

  ClientAction._() : super();
  factory ClientAction() => create();
  factory ClientAction.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ClientAction.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ClientAction clone() => ClientAction()..mergeFromMessage(this);
  ClientAction copyWith(void Function(ClientAction) updates) =>
      super.copyWith((message) => updates(message as ClientAction));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClientAction create() => ClientAction._();
  ClientAction createEmptyInstance() => create();
  static $pb.PbList<ClientAction> createRepeated() =>
      $pb.PbList<ClientAction>();
  @$core.pragma('dart2js:noInline')
  static ClientAction getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ClientAction>(create);
  static ClientAction _defaultInstance;

  ClientAction_Action whichAction() =>
      _ClientAction_ActionByTag[$_whichOneof(0)];
  void clearAction() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Reply get reply => $_getN(0);
  @$pb.TagNumber(1)
  set reply(Reply v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasReply() => $_has(0);
  @$pb.TagNumber(1)
  void clearReply() => clearField(1);
  @$pb.TagNumber(1)
  Reply ensureReply() => $_ensure(0);

  @$pb.TagNumber(2)
  Forward get forward => $_getN(1);
  @$pb.TagNumber(2)
  set forward(Forward v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasForward() => $_has(1);
  @$pb.TagNumber(2)
  void clearForward() => clearField(2);
  @$pb.TagNumber(2)
  Forward ensureForward() => $_ensure(1);

  @$pb.TagNumber(3)
  Failure get failure => $_getN(2);
  @$pb.TagNumber(3)
  set failure(Failure v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasFailure() => $_has(2);
  @$pb.TagNumber(3)
  void clearFailure() => clearField(3);
  @$pb.TagNumber(3)
  Failure ensureFailure() => $_ensure(2);
}

class SideEffect extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SideEffect',
      package: const $pb.PackageName('cloudstate'), createEmptyInstance: create)
    ..aOS(1, 'serviceName')
    ..aOS(2, 'commandName')
    ..aOM<$5.Any>(3, 'payload', subBuilder: $5.Any.create)
    ..aOB(4, 'synchronous')
    ..hasRequiredFields = false;

  SideEffect._() : super();
  factory SideEffect() => create();
  factory SideEffect.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SideEffect.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  SideEffect clone() => SideEffect()..mergeFromMessage(this);
  SideEffect copyWith(void Function(SideEffect) updates) =>
      super.copyWith((message) => updates(message as SideEffect));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SideEffect create() => SideEffect._();
  SideEffect createEmptyInstance() => create();
  static $pb.PbList<SideEffect> createRepeated() => $pb.PbList<SideEffect>();
  @$core.pragma('dart2js:noInline')
  static SideEffect getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SideEffect>(create);
  static SideEffect _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get serviceName => $_getSZ(0);
  @$pb.TagNumber(1)
  set serviceName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasServiceName() => $_has(0);
  @$pb.TagNumber(1)
  void clearServiceName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get commandName => $_getSZ(1);
  @$pb.TagNumber(2)
  set commandName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCommandName() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommandName() => clearField(2);

  @$pb.TagNumber(3)
  $5.Any get payload => $_getN(2);
  @$pb.TagNumber(3)
  set payload($5.Any v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasPayload() => $_has(2);
  @$pb.TagNumber(3)
  void clearPayload() => clearField(3);
  @$pb.TagNumber(3)
  $5.Any ensurePayload() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.bool get synchronous => $_getBF(3);
  @$pb.TagNumber(4)
  set synchronous($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasSynchronous() => $_has(3);
  @$pb.TagNumber(4)
  void clearSynchronous() => clearField(4);
}

class Command extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Command',
      package: const $pb.PackageName('cloudstate'), createEmptyInstance: create)
    ..aOS(1, 'entityId')
    ..aInt64(2, 'id')
    ..aOS(3, 'name')
    ..aOM<$5.Any>(4, 'payload', subBuilder: $5.Any.create)
    ..aOB(5, 'streamed')
    ..hasRequiredFields = false;

  Command._() : super();
  factory Command() => create();
  factory Command.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Command.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Command clone() => Command()..mergeFromMessage(this);
  Command copyWith(void Function(Command) updates) =>
      super.copyWith((message) => updates(message as Command));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Command create() => Command._();
  Command createEmptyInstance() => create();
  static $pb.PbList<Command> createRepeated() => $pb.PbList<Command>();
  @$core.pragma('dart2js:noInline')
  static Command getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Command>(create);
  static Command _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get entityId => $_getSZ(0);
  @$pb.TagNumber(1)
  set entityId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasEntityId() => $_has(0);
  @$pb.TagNumber(1)
  void clearEntityId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get id => $_getI64(1);
  @$pb.TagNumber(2)
  set id($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $5.Any get payload => $_getN(3);
  @$pb.TagNumber(4)
  set payload($5.Any v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasPayload() => $_has(3);
  @$pb.TagNumber(4)
  void clearPayload() => clearField(4);
  @$pb.TagNumber(4)
  $5.Any ensurePayload() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.bool get streamed => $_getBF(4);
  @$pb.TagNumber(5)
  set streamed($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasStreamed() => $_has(4);
  @$pb.TagNumber(5)
  void clearStreamed() => clearField(5);
}

class StreamCancelled extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('StreamCancelled',
      package: const $pb.PackageName('cloudstate'), createEmptyInstance: create)
    ..aOS(1, 'entityId')
    ..aInt64(2, 'id')
    ..hasRequiredFields = false;

  StreamCancelled._() : super();
  factory StreamCancelled() => create();
  factory StreamCancelled.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StreamCancelled.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  StreamCancelled clone() => StreamCancelled()..mergeFromMessage(this);
  StreamCancelled copyWith(void Function(StreamCancelled) updates) =>
      super.copyWith((message) => updates(message as StreamCancelled));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StreamCancelled create() => StreamCancelled._();
  StreamCancelled createEmptyInstance() => create();
  static $pb.PbList<StreamCancelled> createRepeated() =>
      $pb.PbList<StreamCancelled>();
  @$core.pragma('dart2js:noInline')
  static StreamCancelled getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StreamCancelled>(create);
  static StreamCancelled _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get entityId => $_getSZ(0);
  @$pb.TagNumber(1)
  set entityId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasEntityId() => $_has(0);
  @$pb.TagNumber(1)
  void clearEntityId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get id => $_getI64(1);
  @$pb.TagNumber(2)
  set id($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);
}

class Failure extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Failure',
      package: const $pb.PackageName('cloudstate'), createEmptyInstance: create)
    ..aInt64(1, 'commandId')
    ..aOS(2, 'description')
    ..hasRequiredFields = false;

  Failure._() : super();
  factory Failure() => create();
  factory Failure.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Failure.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Failure clone() => Failure()..mergeFromMessage(this);
  Failure copyWith(void Function(Failure) updates) =>
      super.copyWith((message) => updates(message as Failure));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Failure create() => Failure._();
  Failure createEmptyInstance() => create();
  static $pb.PbList<Failure> createRepeated() => $pb.PbList<Failure>();
  @$core.pragma('dart2js:noInline')
  static Failure getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Failure>(create);
  static Failure _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get commandId => $_getI64(0);
  @$pb.TagNumber(1)
  set commandId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCommandId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommandId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);
}

class EntitySpec extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EntitySpec',
      package: const $pb.PackageName('cloudstate'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'proto', $pb.PbFieldType.OY)
    ..pc<Entity>(2, 'entities', $pb.PbFieldType.PM, subBuilder: Entity.create)
    ..aOM<ServiceInfo>(3, 'serviceInfo', subBuilder: ServiceInfo.create)
    ..hasRequiredFields = false;

  EntitySpec._() : super();
  factory EntitySpec() => create();
  factory EntitySpec.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory EntitySpec.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  EntitySpec clone() => EntitySpec()..mergeFromMessage(this);
  EntitySpec copyWith(void Function(EntitySpec) updates) =>
      super.copyWith((message) => updates(message as EntitySpec));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EntitySpec create() => EntitySpec._();
  EntitySpec createEmptyInstance() => create();
  static $pb.PbList<EntitySpec> createRepeated() => $pb.PbList<EntitySpec>();
  @$core.pragma('dart2js:noInline')
  static EntitySpec getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EntitySpec>(create);
  static EntitySpec _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get proto => $_getN(0);
  @$pb.TagNumber(1)
  set proto($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasProto() => $_has(0);
  @$pb.TagNumber(1)
  void clearProto() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Entity> get entities => $_getList(1);

  @$pb.TagNumber(3)
  ServiceInfo get serviceInfo => $_getN(2);
  @$pb.TagNumber(3)
  set serviceInfo(ServiceInfo v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasServiceInfo() => $_has(2);
  @$pb.TagNumber(3)
  void clearServiceInfo() => clearField(3);
  @$pb.TagNumber(3)
  ServiceInfo ensureServiceInfo() => $_ensure(2);
}

class ServiceInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ServiceInfo',
      package: const $pb.PackageName('cloudstate'), createEmptyInstance: create)
    ..aOS(1, 'serviceName')
    ..aOS(2, 'serviceVersion')
    ..aOS(3, 'serviceRuntime')
    ..aOS(4, 'supportLibraryName')
    ..aOS(5, 'supportLibraryVersion')
    ..hasRequiredFields = false;

  ServiceInfo._() : super();
  factory ServiceInfo() => create();
  factory ServiceInfo.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ServiceInfo.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ServiceInfo clone() => ServiceInfo()..mergeFromMessage(this);
  ServiceInfo copyWith(void Function(ServiceInfo) updates) =>
      super.copyWith((message) => updates(message as ServiceInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServiceInfo create() => ServiceInfo._();
  ServiceInfo createEmptyInstance() => create();
  static $pb.PbList<ServiceInfo> createRepeated() => $pb.PbList<ServiceInfo>();
  @$core.pragma('dart2js:noInline')
  static ServiceInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ServiceInfo>(create);
  static ServiceInfo _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get serviceName => $_getSZ(0);
  @$pb.TagNumber(1)
  set serviceName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasServiceName() => $_has(0);
  @$pb.TagNumber(1)
  void clearServiceName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get serviceVersion => $_getSZ(1);
  @$pb.TagNumber(2)
  set serviceVersion($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasServiceVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearServiceVersion() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get serviceRuntime => $_getSZ(2);
  @$pb.TagNumber(3)
  set serviceRuntime($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasServiceRuntime() => $_has(2);
  @$pb.TagNumber(3)
  void clearServiceRuntime() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get supportLibraryName => $_getSZ(3);
  @$pb.TagNumber(4)
  set supportLibraryName($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasSupportLibraryName() => $_has(3);
  @$pb.TagNumber(4)
  void clearSupportLibraryName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get supportLibraryVersion => $_getSZ(4);
  @$pb.TagNumber(5)
  set supportLibraryVersion($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasSupportLibraryVersion() => $_has(4);
  @$pb.TagNumber(5)
  void clearSupportLibraryVersion() => clearField(5);
}

class Entity extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Entity',
      package: const $pb.PackageName('cloudstate'), createEmptyInstance: create)
    ..aOS(1, 'entityType')
    ..aOS(2, 'serviceName')
    ..aOS(3, 'persistenceId')
    ..hasRequiredFields = false;

  Entity._() : super();
  factory Entity() => create();
  factory Entity.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Entity.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Entity clone() => Entity()..mergeFromMessage(this);
  Entity copyWith(void Function(Entity) updates) =>
      super.copyWith((message) => updates(message as Entity));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Entity create() => Entity._();
  Entity createEmptyInstance() => create();
  static $pb.PbList<Entity> createRepeated() => $pb.PbList<Entity>();
  @$core.pragma('dart2js:noInline')
  static Entity getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Entity>(create);
  static Entity _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get entityType => $_getSZ(0);
  @$pb.TagNumber(1)
  set entityType($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasEntityType() => $_has(0);
  @$pb.TagNumber(1)
  void clearEntityType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get serviceName => $_getSZ(1);
  @$pb.TagNumber(2)
  set serviceName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasServiceName() => $_has(1);
  @$pb.TagNumber(2)
  void clearServiceName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get persistenceId => $_getSZ(2);
  @$pb.TagNumber(3)
  set persistenceId($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasPersistenceId() => $_has(2);
  @$pb.TagNumber(3)
  void clearPersistenceId() => clearField(3);
}

class UserFunctionError extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserFunctionError',
      package: const $pb.PackageName('cloudstate'), createEmptyInstance: create)
    ..aOS(1, 'message')
    ..hasRequiredFields = false;

  UserFunctionError._() : super();
  factory UserFunctionError() => create();
  factory UserFunctionError.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UserFunctionError.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  UserFunctionError clone() => UserFunctionError()..mergeFromMessage(this);
  UserFunctionError copyWith(void Function(UserFunctionError) updates) =>
      super.copyWith((message) => updates(message as UserFunctionError));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserFunctionError create() => UserFunctionError._();
  UserFunctionError createEmptyInstance() => create();
  static $pb.PbList<UserFunctionError> createRepeated() =>
      $pb.PbList<UserFunctionError>();
  @$core.pragma('dart2js:noInline')
  static UserFunctionError getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserFunctionError>(create);
  static UserFunctionError _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}

class ProxyInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ProxyInfo',
      package: const $pb.PackageName('cloudstate'), createEmptyInstance: create)
    ..a<$core.int>(1, 'protocolMajorVersion', $pb.PbFieldType.O3)
    ..a<$core.int>(2, 'protocolMinorVersion', $pb.PbFieldType.O3)
    ..aOS(3, 'proxyName')
    ..aOS(4, 'proxyVersion')
    ..pPS(5, 'supportedEntityTypes')
    ..hasRequiredFields = false;

  ProxyInfo._() : super();
  factory ProxyInfo() => create();
  factory ProxyInfo.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ProxyInfo.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ProxyInfo clone() => ProxyInfo()..mergeFromMessage(this);
  ProxyInfo copyWith(void Function(ProxyInfo) updates) =>
      super.copyWith((message) => updates(message as ProxyInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ProxyInfo create() => ProxyInfo._();
  ProxyInfo createEmptyInstance() => create();
  static $pb.PbList<ProxyInfo> createRepeated() => $pb.PbList<ProxyInfo>();
  @$core.pragma('dart2js:noInline')
  static ProxyInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProxyInfo>(create);
  static ProxyInfo _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get protocolMajorVersion => $_getIZ(0);
  @$pb.TagNumber(1)
  set protocolMajorVersion($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasProtocolMajorVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearProtocolMajorVersion() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get protocolMinorVersion => $_getIZ(1);
  @$pb.TagNumber(2)
  set protocolMinorVersion($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasProtocolMinorVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearProtocolMinorVersion() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get proxyName => $_getSZ(2);
  @$pb.TagNumber(3)
  set proxyName($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasProxyName() => $_has(2);
  @$pb.TagNumber(3)
  void clearProxyName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get proxyVersion => $_getSZ(3);
  @$pb.TagNumber(4)
  set proxyVersion($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasProxyVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearProxyVersion() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.String> get supportedEntityTypes => $_getList(4);
}
