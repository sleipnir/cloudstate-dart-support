///
//  Generated code. Do not modify.
//  source: protocol/cloudstate/event_sourced.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/any.pb.dart' as $5;
import 'entity.pb.dart' as $0;

class EventSourcedInit extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EventSourcedInit',
      package: const $pb.PackageName('cloudstate.eventsourced'),
      createEmptyInstance: create)
    ..aOS(1, 'serviceName')
    ..aOS(2, 'entityId')
    ..aOM<EventSourcedSnapshot>(3, 'snapshot',
        subBuilder: EventSourcedSnapshot.create)
    ..hasRequiredFields = false;

  EventSourcedInit._() : super();
  factory EventSourcedInit() => create();
  factory EventSourcedInit.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory EventSourcedInit.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  EventSourcedInit clone() => EventSourcedInit()..mergeFromMessage(this);
  EventSourcedInit copyWith(void Function(EventSourcedInit) updates) =>
      super.copyWith((message) => updates(message as EventSourcedInit));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventSourcedInit create() => EventSourcedInit._();
  EventSourcedInit createEmptyInstance() => create();
  static $pb.PbList<EventSourcedInit> createRepeated() =>
      $pb.PbList<EventSourcedInit>();
  @$core.pragma('dart2js:noInline')
  static EventSourcedInit getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EventSourcedInit>(create);
  static EventSourcedInit _defaultInstance;

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
  $core.String get entityId => $_getSZ(1);
  @$pb.TagNumber(2)
  set entityId($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasEntityId() => $_has(1);
  @$pb.TagNumber(2)
  void clearEntityId() => clearField(2);

  @$pb.TagNumber(3)
  EventSourcedSnapshot get snapshot => $_getN(2);
  @$pb.TagNumber(3)
  set snapshot(EventSourcedSnapshot v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSnapshot() => $_has(2);
  @$pb.TagNumber(3)
  void clearSnapshot() => clearField(3);
  @$pb.TagNumber(3)
  EventSourcedSnapshot ensureSnapshot() => $_ensure(2);
}

class EventSourcedSnapshot extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EventSourcedSnapshot',
      package: const $pb.PackageName('cloudstate.eventsourced'),
      createEmptyInstance: create)
    ..aInt64(1, 'snapshotSequence')
    ..aOM<$5.Any>(2, 'snapshot', subBuilder: $5.Any.create)
    ..hasRequiredFields = false;

  EventSourcedSnapshot._() : super();
  factory EventSourcedSnapshot() => create();
  factory EventSourcedSnapshot.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory EventSourcedSnapshot.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  EventSourcedSnapshot clone() =>
      EventSourcedSnapshot()..mergeFromMessage(this);
  EventSourcedSnapshot copyWith(void Function(EventSourcedSnapshot) updates) =>
      super.copyWith((message) => updates(message as EventSourcedSnapshot));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventSourcedSnapshot create() => EventSourcedSnapshot._();
  EventSourcedSnapshot createEmptyInstance() => create();
  static $pb.PbList<EventSourcedSnapshot> createRepeated() =>
      $pb.PbList<EventSourcedSnapshot>();
  @$core.pragma('dart2js:noInline')
  static EventSourcedSnapshot getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EventSourcedSnapshot>(create);
  static EventSourcedSnapshot _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get snapshotSequence => $_getI64(0);
  @$pb.TagNumber(1)
  set snapshotSequence($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSnapshotSequence() => $_has(0);
  @$pb.TagNumber(1)
  void clearSnapshotSequence() => clearField(1);

  @$pb.TagNumber(2)
  $5.Any get snapshot => $_getN(1);
  @$pb.TagNumber(2)
  set snapshot($5.Any v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSnapshot() => $_has(1);
  @$pb.TagNumber(2)
  void clearSnapshot() => clearField(2);
  @$pb.TagNumber(2)
  $5.Any ensureSnapshot() => $_ensure(1);
}

class EventSourcedEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EventSourcedEvent',
      package: const $pb.PackageName('cloudstate.eventsourced'),
      createEmptyInstance: create)
    ..aInt64(1, 'sequence')
    ..aOM<$5.Any>(2, 'payload', subBuilder: $5.Any.create)
    ..hasRequiredFields = false;

  EventSourcedEvent._() : super();
  factory EventSourcedEvent() => create();
  factory EventSourcedEvent.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory EventSourcedEvent.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  EventSourcedEvent clone() => EventSourcedEvent()..mergeFromMessage(this);
  EventSourcedEvent copyWith(void Function(EventSourcedEvent) updates) =>
      super.copyWith((message) => updates(message as EventSourcedEvent));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventSourcedEvent create() => EventSourcedEvent._();
  EventSourcedEvent createEmptyInstance() => create();
  static $pb.PbList<EventSourcedEvent> createRepeated() =>
      $pb.PbList<EventSourcedEvent>();
  @$core.pragma('dart2js:noInline')
  static EventSourcedEvent getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EventSourcedEvent>(create);
  static EventSourcedEvent _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get sequence => $_getI64(0);
  @$pb.TagNumber(1)
  set sequence($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSequence() => $_has(0);
  @$pb.TagNumber(1)
  void clearSequence() => clearField(1);

  @$pb.TagNumber(2)
  $5.Any get payload => $_getN(1);
  @$pb.TagNumber(2)
  set payload($5.Any v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPayload() => $_has(1);
  @$pb.TagNumber(2)
  void clearPayload() => clearField(2);
  @$pb.TagNumber(2)
  $5.Any ensurePayload() => $_ensure(1);
}

class EventSourcedReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EventSourcedReply',
      package: const $pb.PackageName('cloudstate.eventsourced'),
      createEmptyInstance: create)
    ..aInt64(1, 'commandId')
    ..aOM<$0.ClientAction>(2, 'clientAction',
        subBuilder: $0.ClientAction.create)
    ..pc<$0.SideEffect>(3, 'sideEffects', $pb.PbFieldType.PM,
        subBuilder: $0.SideEffect.create)
    ..pc<$5.Any>(4, 'events', $pb.PbFieldType.PM, subBuilder: $5.Any.create)
    ..aOM<$5.Any>(5, 'snapshot', subBuilder: $5.Any.create)
    ..hasRequiredFields = false;

  EventSourcedReply._() : super();
  factory EventSourcedReply() => create();
  factory EventSourcedReply.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory EventSourcedReply.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  EventSourcedReply clone() => EventSourcedReply()..mergeFromMessage(this);
  EventSourcedReply copyWith(void Function(EventSourcedReply) updates) =>
      super.copyWith((message) => updates(message as EventSourcedReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventSourcedReply create() => EventSourcedReply._();
  EventSourcedReply createEmptyInstance() => create();
  static $pb.PbList<EventSourcedReply> createRepeated() =>
      $pb.PbList<EventSourcedReply>();
  @$core.pragma('dart2js:noInline')
  static EventSourcedReply getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EventSourcedReply>(create);
  static EventSourcedReply _defaultInstance;

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
  $0.ClientAction get clientAction => $_getN(1);
  @$pb.TagNumber(2)
  set clientAction($0.ClientAction v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasClientAction() => $_has(1);
  @$pb.TagNumber(2)
  void clearClientAction() => clearField(2);
  @$pb.TagNumber(2)
  $0.ClientAction ensureClientAction() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<$0.SideEffect> get sideEffects => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$5.Any> get events => $_getList(3);

  @$pb.TagNumber(5)
  $5.Any get snapshot => $_getN(4);
  @$pb.TagNumber(5)
  set snapshot($5.Any v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasSnapshot() => $_has(4);
  @$pb.TagNumber(5)
  void clearSnapshot() => clearField(5);
  @$pb.TagNumber(5)
  $5.Any ensureSnapshot() => $_ensure(4);
}

enum EventSourcedStreamIn_Message { init, event, command, notSet }

class EventSourcedStreamIn extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, EventSourcedStreamIn_Message>
      _EventSourcedStreamIn_MessageByTag = {
    1: EventSourcedStreamIn_Message.init,
    2: EventSourcedStreamIn_Message.event,
    3: EventSourcedStreamIn_Message.command,
    0: EventSourcedStreamIn_Message.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EventSourcedStreamIn',
      package: const $pb.PackageName('cloudstate.eventsourced'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<EventSourcedInit>(1, 'init', subBuilder: EventSourcedInit.create)
    ..aOM<EventSourcedEvent>(2, 'event', subBuilder: EventSourcedEvent.create)
    ..aOM<$0.Command>(3, 'command', subBuilder: $0.Command.create)
    ..hasRequiredFields = false;

  EventSourcedStreamIn._() : super();
  factory EventSourcedStreamIn() => create();
  factory EventSourcedStreamIn.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory EventSourcedStreamIn.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  EventSourcedStreamIn clone() =>
      EventSourcedStreamIn()..mergeFromMessage(this);
  EventSourcedStreamIn copyWith(void Function(EventSourcedStreamIn) updates) =>
      super.copyWith((message) => updates(message as EventSourcedStreamIn));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventSourcedStreamIn create() => EventSourcedStreamIn._();
  EventSourcedStreamIn createEmptyInstance() => create();
  static $pb.PbList<EventSourcedStreamIn> createRepeated() =>
      $pb.PbList<EventSourcedStreamIn>();
  @$core.pragma('dart2js:noInline')
  static EventSourcedStreamIn getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EventSourcedStreamIn>(create);
  static EventSourcedStreamIn _defaultInstance;

  EventSourcedStreamIn_Message whichMessage() =>
      _EventSourcedStreamIn_MessageByTag[$_whichOneof(0)];
  void clearMessage() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  EventSourcedInit get init => $_getN(0);
  @$pb.TagNumber(1)
  set init(EventSourcedInit v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasInit() => $_has(0);
  @$pb.TagNumber(1)
  void clearInit() => clearField(1);
  @$pb.TagNumber(1)
  EventSourcedInit ensureInit() => $_ensure(0);

  @$pb.TagNumber(2)
  EventSourcedEvent get event => $_getN(1);
  @$pb.TagNumber(2)
  set event(EventSourcedEvent v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasEvent() => $_has(1);
  @$pb.TagNumber(2)
  void clearEvent() => clearField(2);
  @$pb.TagNumber(2)
  EventSourcedEvent ensureEvent() => $_ensure(1);

  @$pb.TagNumber(3)
  $0.Command get command => $_getN(2);
  @$pb.TagNumber(3)
  set command($0.Command v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasCommand() => $_has(2);
  @$pb.TagNumber(3)
  void clearCommand() => clearField(3);
  @$pb.TagNumber(3)
  $0.Command ensureCommand() => $_ensure(2);
}

enum EventSourcedStreamOut_Message { reply, failure, notSet }

class EventSourcedStreamOut extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, EventSourcedStreamOut_Message>
      _EventSourcedStreamOut_MessageByTag = {
    1: EventSourcedStreamOut_Message.reply,
    2: EventSourcedStreamOut_Message.failure,
    0: EventSourcedStreamOut_Message.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EventSourcedStreamOut',
      package: const $pb.PackageName('cloudstate.eventsourced'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<EventSourcedReply>(1, 'reply', subBuilder: EventSourcedReply.create)
    ..aOM<$0.Failure>(2, 'failure', subBuilder: $0.Failure.create)
    ..hasRequiredFields = false;

  EventSourcedStreamOut._() : super();
  factory EventSourcedStreamOut() => create();
  factory EventSourcedStreamOut.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory EventSourcedStreamOut.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  EventSourcedStreamOut clone() =>
      EventSourcedStreamOut()..mergeFromMessage(this);
  EventSourcedStreamOut copyWith(
          void Function(EventSourcedStreamOut) updates) =>
      super.copyWith((message) => updates(message as EventSourcedStreamOut));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventSourcedStreamOut create() => EventSourcedStreamOut._();
  EventSourcedStreamOut createEmptyInstance() => create();
  static $pb.PbList<EventSourcedStreamOut> createRepeated() =>
      $pb.PbList<EventSourcedStreamOut>();
  @$core.pragma('dart2js:noInline')
  static EventSourcedStreamOut getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EventSourcedStreamOut>(create);
  static EventSourcedStreamOut _defaultInstance;

  EventSourcedStreamOut_Message whichMessage() =>
      _EventSourcedStreamOut_MessageByTag[$_whichOneof(0)];
  void clearMessage() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  EventSourcedReply get reply => $_getN(0);
  @$pb.TagNumber(1)
  set reply(EventSourcedReply v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasReply() => $_has(0);
  @$pb.TagNumber(1)
  void clearReply() => clearField(1);
  @$pb.TagNumber(1)
  EventSourcedReply ensureReply() => $_ensure(0);

  @$pb.TagNumber(2)
  $0.Failure get failure => $_getN(1);
  @$pb.TagNumber(2)
  set failure($0.Failure v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasFailure() => $_has(1);
  @$pb.TagNumber(2)
  void clearFailure() => clearField(2);
  @$pb.TagNumber(2)
  $0.Failure ensureFailure() => $_ensure(1);
}
