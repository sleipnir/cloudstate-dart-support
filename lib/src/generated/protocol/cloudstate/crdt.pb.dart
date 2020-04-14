///
//  Generated code. Do not modify.
//  source: protocol/cloudstate/crdt.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'entity.pb.dart' as $0;
import '../google/protobuf/any.pb.dart' as $5;

import 'crdt.pbenum.dart';

export 'crdt.pbenum.dart';

enum CrdtStreamIn_Message {
  init,
  state,
  changed,
  deleted,
  command,
  streamCancelled,
  notSet
}

class CrdtStreamIn extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, CrdtStreamIn_Message>
      _CrdtStreamIn_MessageByTag = {
    1: CrdtStreamIn_Message.init,
    2: CrdtStreamIn_Message.state,
    3: CrdtStreamIn_Message.changed,
    4: CrdtStreamIn_Message.deleted,
    5: CrdtStreamIn_Message.command,
    6: CrdtStreamIn_Message.streamCancelled,
    0: CrdtStreamIn_Message.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CrdtStreamIn',
      package: const $pb.PackageName('cloudstate.crdt'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6])
    ..aOM<CrdtInit>(1, 'init', subBuilder: CrdtInit.create)
    ..aOM<CrdtState>(2, 'state', subBuilder: CrdtState.create)
    ..aOM<CrdtDelta>(3, 'changed', subBuilder: CrdtDelta.create)
    ..aOM<CrdtDelete>(4, 'deleted', subBuilder: CrdtDelete.create)
    ..aOM<$0.Command>(5, 'command', subBuilder: $0.Command.create)
    ..aOM<$0.StreamCancelled>(6, 'streamCancelled',
        subBuilder: $0.StreamCancelled.create)
    ..hasRequiredFields = false;

  CrdtStreamIn._() : super();
  factory CrdtStreamIn() => create();
  factory CrdtStreamIn.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CrdtStreamIn.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CrdtStreamIn clone() => CrdtStreamIn()..mergeFromMessage(this);
  CrdtStreamIn copyWith(void Function(CrdtStreamIn) updates) =>
      super.copyWith((message) => updates(message as CrdtStreamIn));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CrdtStreamIn create() => CrdtStreamIn._();
  CrdtStreamIn createEmptyInstance() => create();
  static $pb.PbList<CrdtStreamIn> createRepeated() =>
      $pb.PbList<CrdtStreamIn>();
  @$core.pragma('dart2js:noInline')
  static CrdtStreamIn getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CrdtStreamIn>(create);
  static CrdtStreamIn _defaultInstance;

  CrdtStreamIn_Message whichMessage() =>
      _CrdtStreamIn_MessageByTag[$_whichOneof(0)];
  void clearMessage() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  CrdtInit get init => $_getN(0);
  @$pb.TagNumber(1)
  set init(CrdtInit v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasInit() => $_has(0);
  @$pb.TagNumber(1)
  void clearInit() => clearField(1);
  @$pb.TagNumber(1)
  CrdtInit ensureInit() => $_ensure(0);

  @$pb.TagNumber(2)
  CrdtState get state => $_getN(1);
  @$pb.TagNumber(2)
  set state(CrdtState v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasState() => $_has(1);
  @$pb.TagNumber(2)
  void clearState() => clearField(2);
  @$pb.TagNumber(2)
  CrdtState ensureState() => $_ensure(1);

  @$pb.TagNumber(3)
  CrdtDelta get changed => $_getN(2);
  @$pb.TagNumber(3)
  set changed(CrdtDelta v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasChanged() => $_has(2);
  @$pb.TagNumber(3)
  void clearChanged() => clearField(3);
  @$pb.TagNumber(3)
  CrdtDelta ensureChanged() => $_ensure(2);

  @$pb.TagNumber(4)
  CrdtDelete get deleted => $_getN(3);
  @$pb.TagNumber(4)
  set deleted(CrdtDelete v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasDeleted() => $_has(3);
  @$pb.TagNumber(4)
  void clearDeleted() => clearField(4);
  @$pb.TagNumber(4)
  CrdtDelete ensureDeleted() => $_ensure(3);

  @$pb.TagNumber(5)
  $0.Command get command => $_getN(4);
  @$pb.TagNumber(5)
  set command($0.Command v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasCommand() => $_has(4);
  @$pb.TagNumber(5)
  void clearCommand() => clearField(5);
  @$pb.TagNumber(5)
  $0.Command ensureCommand() => $_ensure(4);

  @$pb.TagNumber(6)
  $0.StreamCancelled get streamCancelled => $_getN(5);
  @$pb.TagNumber(6)
  set streamCancelled($0.StreamCancelled v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasStreamCancelled() => $_has(5);
  @$pb.TagNumber(6)
  void clearStreamCancelled() => clearField(6);
  @$pb.TagNumber(6)
  $0.StreamCancelled ensureStreamCancelled() => $_ensure(5);
}

enum CrdtStreamOut_Message {
  reply,
  streamedMessage,
  streamCancelledResponse,
  failure,
  notSet
}

class CrdtStreamOut extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, CrdtStreamOut_Message>
      _CrdtStreamOut_MessageByTag = {
    1: CrdtStreamOut_Message.reply,
    2: CrdtStreamOut_Message.streamedMessage,
    3: CrdtStreamOut_Message.streamCancelledResponse,
    4: CrdtStreamOut_Message.failure,
    0: CrdtStreamOut_Message.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CrdtStreamOut',
      package: const $pb.PackageName('cloudstate.crdt'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4])
    ..aOM<CrdtReply>(1, 'reply', subBuilder: CrdtReply.create)
    ..aOM<CrdtStreamedMessage>(2, 'streamedMessage',
        subBuilder: CrdtStreamedMessage.create)
    ..aOM<CrdtStreamCancelledResponse>(3, 'streamCancelledResponse',
        subBuilder: CrdtStreamCancelledResponse.create)
    ..aOM<$0.Failure>(4, 'failure', subBuilder: $0.Failure.create)
    ..hasRequiredFields = false;

  CrdtStreamOut._() : super();
  factory CrdtStreamOut() => create();
  factory CrdtStreamOut.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CrdtStreamOut.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CrdtStreamOut clone() => CrdtStreamOut()..mergeFromMessage(this);
  CrdtStreamOut copyWith(void Function(CrdtStreamOut) updates) =>
      super.copyWith((message) => updates(message as CrdtStreamOut));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CrdtStreamOut create() => CrdtStreamOut._();
  CrdtStreamOut createEmptyInstance() => create();
  static $pb.PbList<CrdtStreamOut> createRepeated() =>
      $pb.PbList<CrdtStreamOut>();
  @$core.pragma('dart2js:noInline')
  static CrdtStreamOut getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CrdtStreamOut>(create);
  static CrdtStreamOut _defaultInstance;

  CrdtStreamOut_Message whichMessage() =>
      _CrdtStreamOut_MessageByTag[$_whichOneof(0)];
  void clearMessage() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  CrdtReply get reply => $_getN(0);
  @$pb.TagNumber(1)
  set reply(CrdtReply v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasReply() => $_has(0);
  @$pb.TagNumber(1)
  void clearReply() => clearField(1);
  @$pb.TagNumber(1)
  CrdtReply ensureReply() => $_ensure(0);

  @$pb.TagNumber(2)
  CrdtStreamedMessage get streamedMessage => $_getN(1);
  @$pb.TagNumber(2)
  set streamedMessage(CrdtStreamedMessage v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStreamedMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearStreamedMessage() => clearField(2);
  @$pb.TagNumber(2)
  CrdtStreamedMessage ensureStreamedMessage() => $_ensure(1);

  @$pb.TagNumber(3)
  CrdtStreamCancelledResponse get streamCancelledResponse => $_getN(2);
  @$pb.TagNumber(3)
  set streamCancelledResponse(CrdtStreamCancelledResponse v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasStreamCancelledResponse() => $_has(2);
  @$pb.TagNumber(3)
  void clearStreamCancelledResponse() => clearField(3);
  @$pb.TagNumber(3)
  CrdtStreamCancelledResponse ensureStreamCancelledResponse() => $_ensure(2);

  @$pb.TagNumber(4)
  $0.Failure get failure => $_getN(3);
  @$pb.TagNumber(4)
  set failure($0.Failure v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasFailure() => $_has(3);
  @$pb.TagNumber(4)
  void clearFailure() => clearField(4);
  @$pb.TagNumber(4)
  $0.Failure ensureFailure() => $_ensure(3);
}

enum CrdtState_State {
  gcounter,
  pncounter,
  gset,
  orset,
  lwwregister,
  flag,
  ormap,
  vote,
  notSet
}

class CrdtState extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, CrdtState_State> _CrdtState_StateByTag = {
    1: CrdtState_State.gcounter,
    2: CrdtState_State.pncounter,
    3: CrdtState_State.gset,
    4: CrdtState_State.orset,
    5: CrdtState_State.lwwregister,
    6: CrdtState_State.flag,
    7: CrdtState_State.ormap,
    8: CrdtState_State.vote,
    0: CrdtState_State.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CrdtState',
      package: const $pb.PackageName('cloudstate.crdt'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8])
    ..aOM<GCounterState>(1, 'gcounter', subBuilder: GCounterState.create)
    ..aOM<PNCounterState>(2, 'pncounter', subBuilder: PNCounterState.create)
    ..aOM<GSetState>(3, 'gset', subBuilder: GSetState.create)
    ..aOM<ORSetState>(4, 'orset', subBuilder: ORSetState.create)
    ..aOM<LWWRegisterState>(5, 'lwwregister',
        subBuilder: LWWRegisterState.create)
    ..aOM<FlagState>(6, 'flag', subBuilder: FlagState.create)
    ..aOM<ORMapState>(7, 'ormap', subBuilder: ORMapState.create)
    ..aOM<VoteState>(8, 'vote', subBuilder: VoteState.create)
    ..hasRequiredFields = false;

  CrdtState._() : super();
  factory CrdtState() => create();
  factory CrdtState.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CrdtState.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CrdtState clone() => CrdtState()..mergeFromMessage(this);
  CrdtState copyWith(void Function(CrdtState) updates) =>
      super.copyWith((message) => updates(message as CrdtState));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CrdtState create() => CrdtState._();
  CrdtState createEmptyInstance() => create();
  static $pb.PbList<CrdtState> createRepeated() => $pb.PbList<CrdtState>();
  @$core.pragma('dart2js:noInline')
  static CrdtState getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CrdtState>(create);
  static CrdtState _defaultInstance;

  CrdtState_State whichState() => _CrdtState_StateByTag[$_whichOneof(0)];
  void clearState() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  GCounterState get gcounter => $_getN(0);
  @$pb.TagNumber(1)
  set gcounter(GCounterState v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasGcounter() => $_has(0);
  @$pb.TagNumber(1)
  void clearGcounter() => clearField(1);
  @$pb.TagNumber(1)
  GCounterState ensureGcounter() => $_ensure(0);

  @$pb.TagNumber(2)
  PNCounterState get pncounter => $_getN(1);
  @$pb.TagNumber(2)
  set pncounter(PNCounterState v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPncounter() => $_has(1);
  @$pb.TagNumber(2)
  void clearPncounter() => clearField(2);
  @$pb.TagNumber(2)
  PNCounterState ensurePncounter() => $_ensure(1);

  @$pb.TagNumber(3)
  GSetState get gset => $_getN(2);
  @$pb.TagNumber(3)
  set gset(GSetState v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasGset() => $_has(2);
  @$pb.TagNumber(3)
  void clearGset() => clearField(3);
  @$pb.TagNumber(3)
  GSetState ensureGset() => $_ensure(2);

  @$pb.TagNumber(4)
  ORSetState get orset => $_getN(3);
  @$pb.TagNumber(4)
  set orset(ORSetState v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasOrset() => $_has(3);
  @$pb.TagNumber(4)
  void clearOrset() => clearField(4);
  @$pb.TagNumber(4)
  ORSetState ensureOrset() => $_ensure(3);

  @$pb.TagNumber(5)
  LWWRegisterState get lwwregister => $_getN(4);
  @$pb.TagNumber(5)
  set lwwregister(LWWRegisterState v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasLwwregister() => $_has(4);
  @$pb.TagNumber(5)
  void clearLwwregister() => clearField(5);
  @$pb.TagNumber(5)
  LWWRegisterState ensureLwwregister() => $_ensure(4);

  @$pb.TagNumber(6)
  FlagState get flag => $_getN(5);
  @$pb.TagNumber(6)
  set flag(FlagState v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasFlag() => $_has(5);
  @$pb.TagNumber(6)
  void clearFlag() => clearField(6);
  @$pb.TagNumber(6)
  FlagState ensureFlag() => $_ensure(5);

  @$pb.TagNumber(7)
  ORMapState get ormap => $_getN(6);
  @$pb.TagNumber(7)
  set ormap(ORMapState v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasOrmap() => $_has(6);
  @$pb.TagNumber(7)
  void clearOrmap() => clearField(7);
  @$pb.TagNumber(7)
  ORMapState ensureOrmap() => $_ensure(6);

  @$pb.TagNumber(8)
  VoteState get vote => $_getN(7);
  @$pb.TagNumber(8)
  set vote(VoteState v) {
    setField(8, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasVote() => $_has(7);
  @$pb.TagNumber(8)
  void clearVote() => clearField(8);
  @$pb.TagNumber(8)
  VoteState ensureVote() => $_ensure(7);
}

class GCounterState extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GCounterState',
      package: const $pb.PackageName('cloudstate.crdt'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, 'value', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  GCounterState._() : super();
  factory GCounterState() => create();
  factory GCounterState.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GCounterState.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GCounterState clone() => GCounterState()..mergeFromMessage(this);
  GCounterState copyWith(void Function(GCounterState) updates) =>
      super.copyWith((message) => updates(message as GCounterState));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GCounterState create() => GCounterState._();
  GCounterState createEmptyInstance() => create();
  static $pb.PbList<GCounterState> createRepeated() =>
      $pb.PbList<GCounterState>();
  @$core.pragma('dart2js:noInline')
  static GCounterState getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GCounterState>(create);
  static GCounterState _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get value => $_getI64(0);
  @$pb.TagNumber(1)
  set value($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class PNCounterState extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PNCounterState',
      package: const $pb.PackageName('cloudstate.crdt'),
      createEmptyInstance: create)
    ..aInt64(1, 'value')
    ..hasRequiredFields = false;

  PNCounterState._() : super();
  factory PNCounterState() => create();
  factory PNCounterState.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PNCounterState.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  PNCounterState clone() => PNCounterState()..mergeFromMessage(this);
  PNCounterState copyWith(void Function(PNCounterState) updates) =>
      super.copyWith((message) => updates(message as PNCounterState));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PNCounterState create() => PNCounterState._();
  PNCounterState createEmptyInstance() => create();
  static $pb.PbList<PNCounterState> createRepeated() =>
      $pb.PbList<PNCounterState>();
  @$core.pragma('dart2js:noInline')
  static PNCounterState getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PNCounterState>(create);
  static PNCounterState _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get value => $_getI64(0);
  @$pb.TagNumber(1)
  set value($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class GSetState extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GSetState',
      package: const $pb.PackageName('cloudstate.crdt'),
      createEmptyInstance: create)
    ..pc<$5.Any>(1, 'items', $pb.PbFieldType.PM, subBuilder: $5.Any.create)
    ..hasRequiredFields = false;

  GSetState._() : super();
  factory GSetState() => create();
  factory GSetState.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GSetState.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GSetState clone() => GSetState()..mergeFromMessage(this);
  GSetState copyWith(void Function(GSetState) updates) =>
      super.copyWith((message) => updates(message as GSetState));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GSetState create() => GSetState._();
  GSetState createEmptyInstance() => create();
  static $pb.PbList<GSetState> createRepeated() => $pb.PbList<GSetState>();
  @$core.pragma('dart2js:noInline')
  static GSetState getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GSetState>(create);
  static GSetState _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$5.Any> get items => $_getList(0);
}

class ORSetState extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ORSetState',
      package: const $pb.PackageName('cloudstate.crdt'),
      createEmptyInstance: create)
    ..pc<$5.Any>(1, 'items', $pb.PbFieldType.PM, subBuilder: $5.Any.create)
    ..hasRequiredFields = false;

  ORSetState._() : super();
  factory ORSetState() => create();
  factory ORSetState.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ORSetState.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ORSetState clone() => ORSetState()..mergeFromMessage(this);
  ORSetState copyWith(void Function(ORSetState) updates) =>
      super.copyWith((message) => updates(message as ORSetState));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ORSetState create() => ORSetState._();
  ORSetState createEmptyInstance() => create();
  static $pb.PbList<ORSetState> createRepeated() => $pb.PbList<ORSetState>();
  @$core.pragma('dart2js:noInline')
  static ORSetState getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ORSetState>(create);
  static ORSetState _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$5.Any> get items => $_getList(0);
}

class LWWRegisterState extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LWWRegisterState',
      package: const $pb.PackageName('cloudstate.crdt'),
      createEmptyInstance: create)
    ..aOM<$5.Any>(1, 'value', subBuilder: $5.Any.create)
    ..e<CrdtClock>(2, 'clock', $pb.PbFieldType.OE,
        defaultOrMaker: CrdtClock.DEFAULT,
        valueOf: CrdtClock.valueOf,
        enumValues: CrdtClock.values)
    ..aInt64(3, 'customClockValue')
    ..hasRequiredFields = false;

  LWWRegisterState._() : super();
  factory LWWRegisterState() => create();
  factory LWWRegisterState.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LWWRegisterState.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  LWWRegisterState clone() => LWWRegisterState()..mergeFromMessage(this);
  LWWRegisterState copyWith(void Function(LWWRegisterState) updates) =>
      super.copyWith((message) => updates(message as LWWRegisterState));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LWWRegisterState create() => LWWRegisterState._();
  LWWRegisterState createEmptyInstance() => create();
  static $pb.PbList<LWWRegisterState> createRepeated() =>
      $pb.PbList<LWWRegisterState>();
  @$core.pragma('dart2js:noInline')
  static LWWRegisterState getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LWWRegisterState>(create);
  static LWWRegisterState _defaultInstance;

  @$pb.TagNumber(1)
  $5.Any get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($5.Any v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
  @$pb.TagNumber(1)
  $5.Any ensureValue() => $_ensure(0);

  @$pb.TagNumber(2)
  CrdtClock get clock => $_getN(1);
  @$pb.TagNumber(2)
  set clock(CrdtClock v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasClock() => $_has(1);
  @$pb.TagNumber(2)
  void clearClock() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get customClockValue => $_getI64(2);
  @$pb.TagNumber(3)
  set customClockValue($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasCustomClockValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearCustomClockValue() => clearField(3);
}

class FlagState extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FlagState',
      package: const $pb.PackageName('cloudstate.crdt'),
      createEmptyInstance: create)
    ..aOB(1, 'value')
    ..hasRequiredFields = false;

  FlagState._() : super();
  factory FlagState() => create();
  factory FlagState.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FlagState.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  FlagState clone() => FlagState()..mergeFromMessage(this);
  FlagState copyWith(void Function(FlagState) updates) =>
      super.copyWith((message) => updates(message as FlagState));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FlagState create() => FlagState._();
  FlagState createEmptyInstance() => create();
  static $pb.PbList<FlagState> createRepeated() => $pb.PbList<FlagState>();
  @$core.pragma('dart2js:noInline')
  static FlagState getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FlagState>(create);
  static FlagState _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get value => $_getBF(0);
  @$pb.TagNumber(1)
  set value($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class ORMapState extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ORMapState',
      package: const $pb.PackageName('cloudstate.crdt'),
      createEmptyInstance: create)
    ..pc<ORMapEntry>(1, 'entries', $pb.PbFieldType.PM,
        subBuilder: ORMapEntry.create)
    ..hasRequiredFields = false;

  ORMapState._() : super();
  factory ORMapState() => create();
  factory ORMapState.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ORMapState.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ORMapState clone() => ORMapState()..mergeFromMessage(this);
  ORMapState copyWith(void Function(ORMapState) updates) =>
      super.copyWith((message) => updates(message as ORMapState));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ORMapState create() => ORMapState._();
  ORMapState createEmptyInstance() => create();
  static $pb.PbList<ORMapState> createRepeated() => $pb.PbList<ORMapState>();
  @$core.pragma('dart2js:noInline')
  static ORMapState getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ORMapState>(create);
  static ORMapState _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ORMapEntry> get entries => $_getList(0);
}

class ORMapEntry extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ORMapEntry',
      package: const $pb.PackageName('cloudstate.crdt'),
      createEmptyInstance: create)
    ..aOM<$5.Any>(1, 'key', subBuilder: $5.Any.create)
    ..aOM<CrdtState>(2, 'value', subBuilder: CrdtState.create)
    ..hasRequiredFields = false;

  ORMapEntry._() : super();
  factory ORMapEntry() => create();
  factory ORMapEntry.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ORMapEntry.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ORMapEntry clone() => ORMapEntry()..mergeFromMessage(this);
  ORMapEntry copyWith(void Function(ORMapEntry) updates) =>
      super.copyWith((message) => updates(message as ORMapEntry));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ORMapEntry create() => ORMapEntry._();
  ORMapEntry createEmptyInstance() => create();
  static $pb.PbList<ORMapEntry> createRepeated() => $pb.PbList<ORMapEntry>();
  @$core.pragma('dart2js:noInline')
  static ORMapEntry getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ORMapEntry>(create);
  static ORMapEntry _defaultInstance;

  @$pb.TagNumber(1)
  $5.Any get key => $_getN(0);
  @$pb.TagNumber(1)
  set key($5.Any v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);
  @$pb.TagNumber(1)
  $5.Any ensureKey() => $_ensure(0);

  @$pb.TagNumber(2)
  CrdtState get value => $_getN(1);
  @$pb.TagNumber(2)
  set value(CrdtState v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
  @$pb.TagNumber(2)
  CrdtState ensureValue() => $_ensure(1);
}

class VoteState extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('VoteState',
      package: const $pb.PackageName('cloudstate.crdt'),
      createEmptyInstance: create)
    ..a<$core.int>(1, 'votesFor', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'totalVoters', $pb.PbFieldType.OU3)
    ..aOB(3, 'selfVote')
    ..hasRequiredFields = false;

  VoteState._() : super();
  factory VoteState() => create();
  factory VoteState.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VoteState.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  VoteState clone() => VoteState()..mergeFromMessage(this);
  VoteState copyWith(void Function(VoteState) updates) =>
      super.copyWith((message) => updates(message as VoteState));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VoteState create() => VoteState._();
  VoteState createEmptyInstance() => create();
  static $pb.PbList<VoteState> createRepeated() => $pb.PbList<VoteState>();
  @$core.pragma('dart2js:noInline')
  static VoteState getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VoteState>(create);
  static VoteState _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get votesFor => $_getIZ(0);
  @$pb.TagNumber(1)
  set votesFor($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasVotesFor() => $_has(0);
  @$pb.TagNumber(1)
  void clearVotesFor() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get totalVoters => $_getIZ(1);
  @$pb.TagNumber(2)
  set totalVoters($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTotalVoters() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotalVoters() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get selfVote => $_getBF(2);
  @$pb.TagNumber(3)
  set selfVote($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSelfVote() => $_has(2);
  @$pb.TagNumber(3)
  void clearSelfVote() => clearField(3);
}

enum CrdtDelta_Delta {
  gcounter,
  pncounter,
  gset,
  orset,
  lwwregister,
  flag,
  ormap,
  vote,
  notSet
}

class CrdtDelta extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, CrdtDelta_Delta> _CrdtDelta_DeltaByTag = {
    1: CrdtDelta_Delta.gcounter,
    2: CrdtDelta_Delta.pncounter,
    3: CrdtDelta_Delta.gset,
    4: CrdtDelta_Delta.orset,
    5: CrdtDelta_Delta.lwwregister,
    6: CrdtDelta_Delta.flag,
    7: CrdtDelta_Delta.ormap,
    8: CrdtDelta_Delta.vote,
    0: CrdtDelta_Delta.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CrdtDelta',
      package: const $pb.PackageName('cloudstate.crdt'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8])
    ..aOM<GCounterDelta>(1, 'gcounter', subBuilder: GCounterDelta.create)
    ..aOM<PNCounterDelta>(2, 'pncounter', subBuilder: PNCounterDelta.create)
    ..aOM<GSetDelta>(3, 'gset', subBuilder: GSetDelta.create)
    ..aOM<ORSetDelta>(4, 'orset', subBuilder: ORSetDelta.create)
    ..aOM<LWWRegisterDelta>(5, 'lwwregister',
        subBuilder: LWWRegisterDelta.create)
    ..aOM<FlagDelta>(6, 'flag', subBuilder: FlagDelta.create)
    ..aOM<ORMapDelta>(7, 'ormap', subBuilder: ORMapDelta.create)
    ..aOM<VoteDelta>(8, 'vote', subBuilder: VoteDelta.create)
    ..hasRequiredFields = false;

  CrdtDelta._() : super();
  factory CrdtDelta() => create();
  factory CrdtDelta.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CrdtDelta.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CrdtDelta clone() => CrdtDelta()..mergeFromMessage(this);
  CrdtDelta copyWith(void Function(CrdtDelta) updates) =>
      super.copyWith((message) => updates(message as CrdtDelta));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CrdtDelta create() => CrdtDelta._();
  CrdtDelta createEmptyInstance() => create();
  static $pb.PbList<CrdtDelta> createRepeated() => $pb.PbList<CrdtDelta>();
  @$core.pragma('dart2js:noInline')
  static CrdtDelta getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CrdtDelta>(create);
  static CrdtDelta _defaultInstance;

  CrdtDelta_Delta whichDelta() => _CrdtDelta_DeltaByTag[$_whichOneof(0)];
  void clearDelta() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  GCounterDelta get gcounter => $_getN(0);
  @$pb.TagNumber(1)
  set gcounter(GCounterDelta v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasGcounter() => $_has(0);
  @$pb.TagNumber(1)
  void clearGcounter() => clearField(1);
  @$pb.TagNumber(1)
  GCounterDelta ensureGcounter() => $_ensure(0);

  @$pb.TagNumber(2)
  PNCounterDelta get pncounter => $_getN(1);
  @$pb.TagNumber(2)
  set pncounter(PNCounterDelta v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPncounter() => $_has(1);
  @$pb.TagNumber(2)
  void clearPncounter() => clearField(2);
  @$pb.TagNumber(2)
  PNCounterDelta ensurePncounter() => $_ensure(1);

  @$pb.TagNumber(3)
  GSetDelta get gset => $_getN(2);
  @$pb.TagNumber(3)
  set gset(GSetDelta v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasGset() => $_has(2);
  @$pb.TagNumber(3)
  void clearGset() => clearField(3);
  @$pb.TagNumber(3)
  GSetDelta ensureGset() => $_ensure(2);

  @$pb.TagNumber(4)
  ORSetDelta get orset => $_getN(3);
  @$pb.TagNumber(4)
  set orset(ORSetDelta v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasOrset() => $_has(3);
  @$pb.TagNumber(4)
  void clearOrset() => clearField(4);
  @$pb.TagNumber(4)
  ORSetDelta ensureOrset() => $_ensure(3);

  @$pb.TagNumber(5)
  LWWRegisterDelta get lwwregister => $_getN(4);
  @$pb.TagNumber(5)
  set lwwregister(LWWRegisterDelta v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasLwwregister() => $_has(4);
  @$pb.TagNumber(5)
  void clearLwwregister() => clearField(5);
  @$pb.TagNumber(5)
  LWWRegisterDelta ensureLwwregister() => $_ensure(4);

  @$pb.TagNumber(6)
  FlagDelta get flag => $_getN(5);
  @$pb.TagNumber(6)
  set flag(FlagDelta v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasFlag() => $_has(5);
  @$pb.TagNumber(6)
  void clearFlag() => clearField(6);
  @$pb.TagNumber(6)
  FlagDelta ensureFlag() => $_ensure(5);

  @$pb.TagNumber(7)
  ORMapDelta get ormap => $_getN(6);
  @$pb.TagNumber(7)
  set ormap(ORMapDelta v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasOrmap() => $_has(6);
  @$pb.TagNumber(7)
  void clearOrmap() => clearField(7);
  @$pb.TagNumber(7)
  ORMapDelta ensureOrmap() => $_ensure(6);

  @$pb.TagNumber(8)
  VoteDelta get vote => $_getN(7);
  @$pb.TagNumber(8)
  set vote(VoteDelta v) {
    setField(8, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasVote() => $_has(7);
  @$pb.TagNumber(8)
  void clearVote() => clearField(8);
  @$pb.TagNumber(8)
  VoteDelta ensureVote() => $_ensure(7);
}

class GCounterDelta extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GCounterDelta',
      package: const $pb.PackageName('cloudstate.crdt'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, 'increment', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  GCounterDelta._() : super();
  factory GCounterDelta() => create();
  factory GCounterDelta.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GCounterDelta.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GCounterDelta clone() => GCounterDelta()..mergeFromMessage(this);
  GCounterDelta copyWith(void Function(GCounterDelta) updates) =>
      super.copyWith((message) => updates(message as GCounterDelta));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GCounterDelta create() => GCounterDelta._();
  GCounterDelta createEmptyInstance() => create();
  static $pb.PbList<GCounterDelta> createRepeated() =>
      $pb.PbList<GCounterDelta>();
  @$core.pragma('dart2js:noInline')
  static GCounterDelta getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GCounterDelta>(create);
  static GCounterDelta _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get increment => $_getI64(0);
  @$pb.TagNumber(1)
  set increment($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasIncrement() => $_has(0);
  @$pb.TagNumber(1)
  void clearIncrement() => clearField(1);
}

class PNCounterDelta extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PNCounterDelta',
      package: const $pb.PackageName('cloudstate.crdt'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, 'change', $pb.PbFieldType.OS6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  PNCounterDelta._() : super();
  factory PNCounterDelta() => create();
  factory PNCounterDelta.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PNCounterDelta.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  PNCounterDelta clone() => PNCounterDelta()..mergeFromMessage(this);
  PNCounterDelta copyWith(void Function(PNCounterDelta) updates) =>
      super.copyWith((message) => updates(message as PNCounterDelta));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PNCounterDelta create() => PNCounterDelta._();
  PNCounterDelta createEmptyInstance() => create();
  static $pb.PbList<PNCounterDelta> createRepeated() =>
      $pb.PbList<PNCounterDelta>();
  @$core.pragma('dart2js:noInline')
  static PNCounterDelta getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PNCounterDelta>(create);
  static PNCounterDelta _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get change => $_getI64(0);
  @$pb.TagNumber(1)
  set change($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasChange() => $_has(0);
  @$pb.TagNumber(1)
  void clearChange() => clearField(1);
}

class GSetDelta extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GSetDelta',
      package: const $pb.PackageName('cloudstate.crdt'),
      createEmptyInstance: create)
    ..pc<$5.Any>(1, 'added', $pb.PbFieldType.PM, subBuilder: $5.Any.create)
    ..hasRequiredFields = false;

  GSetDelta._() : super();
  factory GSetDelta() => create();
  factory GSetDelta.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GSetDelta.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GSetDelta clone() => GSetDelta()..mergeFromMessage(this);
  GSetDelta copyWith(void Function(GSetDelta) updates) =>
      super.copyWith((message) => updates(message as GSetDelta));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GSetDelta create() => GSetDelta._();
  GSetDelta createEmptyInstance() => create();
  static $pb.PbList<GSetDelta> createRepeated() => $pb.PbList<GSetDelta>();
  @$core.pragma('dart2js:noInline')
  static GSetDelta getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GSetDelta>(create);
  static GSetDelta _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$5.Any> get added => $_getList(0);
}

class ORSetDelta extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ORSetDelta',
      package: const $pb.PackageName('cloudstate.crdt'),
      createEmptyInstance: create)
    ..aOB(1, 'cleared')
    ..pc<$5.Any>(2, 'removed', $pb.PbFieldType.PM, subBuilder: $5.Any.create)
    ..pc<$5.Any>(3, 'added', $pb.PbFieldType.PM, subBuilder: $5.Any.create)
    ..hasRequiredFields = false;

  ORSetDelta._() : super();
  factory ORSetDelta() => create();
  factory ORSetDelta.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ORSetDelta.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ORSetDelta clone() => ORSetDelta()..mergeFromMessage(this);
  ORSetDelta copyWith(void Function(ORSetDelta) updates) =>
      super.copyWith((message) => updates(message as ORSetDelta));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ORSetDelta create() => ORSetDelta._();
  ORSetDelta createEmptyInstance() => create();
  static $pb.PbList<ORSetDelta> createRepeated() => $pb.PbList<ORSetDelta>();
  @$core.pragma('dart2js:noInline')
  static ORSetDelta getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ORSetDelta>(create);
  static ORSetDelta _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get cleared => $_getBF(0);
  @$pb.TagNumber(1)
  set cleared($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCleared() => $_has(0);
  @$pb.TagNumber(1)
  void clearCleared() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$5.Any> get removed => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$5.Any> get added => $_getList(2);
}

class LWWRegisterDelta extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LWWRegisterDelta',
      package: const $pb.PackageName('cloudstate.crdt'),
      createEmptyInstance: create)
    ..aOM<$5.Any>(1, 'value', subBuilder: $5.Any.create)
    ..e<CrdtClock>(2, 'clock', $pb.PbFieldType.OE,
        defaultOrMaker: CrdtClock.DEFAULT,
        valueOf: CrdtClock.valueOf,
        enumValues: CrdtClock.values)
    ..aInt64(3, 'customClockValue')
    ..hasRequiredFields = false;

  LWWRegisterDelta._() : super();
  factory LWWRegisterDelta() => create();
  factory LWWRegisterDelta.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LWWRegisterDelta.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  LWWRegisterDelta clone() => LWWRegisterDelta()..mergeFromMessage(this);
  LWWRegisterDelta copyWith(void Function(LWWRegisterDelta) updates) =>
      super.copyWith((message) => updates(message as LWWRegisterDelta));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LWWRegisterDelta create() => LWWRegisterDelta._();
  LWWRegisterDelta createEmptyInstance() => create();
  static $pb.PbList<LWWRegisterDelta> createRepeated() =>
      $pb.PbList<LWWRegisterDelta>();
  @$core.pragma('dart2js:noInline')
  static LWWRegisterDelta getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LWWRegisterDelta>(create);
  static LWWRegisterDelta _defaultInstance;

  @$pb.TagNumber(1)
  $5.Any get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($5.Any v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
  @$pb.TagNumber(1)
  $5.Any ensureValue() => $_ensure(0);

  @$pb.TagNumber(2)
  CrdtClock get clock => $_getN(1);
  @$pb.TagNumber(2)
  set clock(CrdtClock v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasClock() => $_has(1);
  @$pb.TagNumber(2)
  void clearClock() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get customClockValue => $_getI64(2);
  @$pb.TagNumber(3)
  set customClockValue($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasCustomClockValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearCustomClockValue() => clearField(3);
}

class FlagDelta extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FlagDelta',
      package: const $pb.PackageName('cloudstate.crdt'),
      createEmptyInstance: create)
    ..aOB(1, 'value')
    ..hasRequiredFields = false;

  FlagDelta._() : super();
  factory FlagDelta() => create();
  factory FlagDelta.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FlagDelta.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  FlagDelta clone() => FlagDelta()..mergeFromMessage(this);
  FlagDelta copyWith(void Function(FlagDelta) updates) =>
      super.copyWith((message) => updates(message as FlagDelta));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FlagDelta create() => FlagDelta._();
  FlagDelta createEmptyInstance() => create();
  static $pb.PbList<FlagDelta> createRepeated() => $pb.PbList<FlagDelta>();
  @$core.pragma('dart2js:noInline')
  static FlagDelta getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FlagDelta>(create);
  static FlagDelta _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get value => $_getBF(0);
  @$pb.TagNumber(1)
  set value($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class ORMapDelta extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ORMapDelta',
      package: const $pb.PackageName('cloudstate.crdt'),
      createEmptyInstance: create)
    ..aOB(1, 'cleared')
    ..pc<$5.Any>(2, 'removed', $pb.PbFieldType.PM, subBuilder: $5.Any.create)
    ..pc<ORMapEntryDelta>(3, 'updated', $pb.PbFieldType.PM,
        subBuilder: ORMapEntryDelta.create)
    ..pc<ORMapEntry>(4, 'added', $pb.PbFieldType.PM,
        subBuilder: ORMapEntry.create)
    ..hasRequiredFields = false;

  ORMapDelta._() : super();
  factory ORMapDelta() => create();
  factory ORMapDelta.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ORMapDelta.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ORMapDelta clone() => ORMapDelta()..mergeFromMessage(this);
  ORMapDelta copyWith(void Function(ORMapDelta) updates) =>
      super.copyWith((message) => updates(message as ORMapDelta));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ORMapDelta create() => ORMapDelta._();
  ORMapDelta createEmptyInstance() => create();
  static $pb.PbList<ORMapDelta> createRepeated() => $pb.PbList<ORMapDelta>();
  @$core.pragma('dart2js:noInline')
  static ORMapDelta getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ORMapDelta>(create);
  static ORMapDelta _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get cleared => $_getBF(0);
  @$pb.TagNumber(1)
  set cleared($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCleared() => $_has(0);
  @$pb.TagNumber(1)
  void clearCleared() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$5.Any> get removed => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<ORMapEntryDelta> get updated => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<ORMapEntry> get added => $_getList(3);
}

class ORMapEntryDelta extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ORMapEntryDelta',
      package: const $pb.PackageName('cloudstate.crdt'),
      createEmptyInstance: create)
    ..aOM<$5.Any>(1, 'key', subBuilder: $5.Any.create)
    ..aOM<CrdtDelta>(2, 'delta', subBuilder: CrdtDelta.create)
    ..hasRequiredFields = false;

  ORMapEntryDelta._() : super();
  factory ORMapEntryDelta() => create();
  factory ORMapEntryDelta.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ORMapEntryDelta.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ORMapEntryDelta clone() => ORMapEntryDelta()..mergeFromMessage(this);
  ORMapEntryDelta copyWith(void Function(ORMapEntryDelta) updates) =>
      super.copyWith((message) => updates(message as ORMapEntryDelta));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ORMapEntryDelta create() => ORMapEntryDelta._();
  ORMapEntryDelta createEmptyInstance() => create();
  static $pb.PbList<ORMapEntryDelta> createRepeated() =>
      $pb.PbList<ORMapEntryDelta>();
  @$core.pragma('dart2js:noInline')
  static ORMapEntryDelta getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ORMapEntryDelta>(create);
  static ORMapEntryDelta _defaultInstance;

  @$pb.TagNumber(1)
  $5.Any get key => $_getN(0);
  @$pb.TagNumber(1)
  set key($5.Any v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);
  @$pb.TagNumber(1)
  $5.Any ensureKey() => $_ensure(0);

  @$pb.TagNumber(2)
  CrdtDelta get delta => $_getN(1);
  @$pb.TagNumber(2)
  set delta(CrdtDelta v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDelta() => $_has(1);
  @$pb.TagNumber(2)
  void clearDelta() => clearField(2);
  @$pb.TagNumber(2)
  CrdtDelta ensureDelta() => $_ensure(1);
}

class VoteDelta extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('VoteDelta',
      package: const $pb.PackageName('cloudstate.crdt'),
      createEmptyInstance: create)
    ..aOB(1, 'selfVote')
    ..a<$core.int>(2, 'votesFor', $pb.PbFieldType.O3)
    ..a<$core.int>(3, 'totalVoters', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  VoteDelta._() : super();
  factory VoteDelta() => create();
  factory VoteDelta.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VoteDelta.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  VoteDelta clone() => VoteDelta()..mergeFromMessage(this);
  VoteDelta copyWith(void Function(VoteDelta) updates) =>
      super.copyWith((message) => updates(message as VoteDelta));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VoteDelta create() => VoteDelta._();
  VoteDelta createEmptyInstance() => create();
  static $pb.PbList<VoteDelta> createRepeated() => $pb.PbList<VoteDelta>();
  @$core.pragma('dart2js:noInline')
  static VoteDelta getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VoteDelta>(create);
  static VoteDelta _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get selfVote => $_getBF(0);
  @$pb.TagNumber(1)
  set selfVote($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSelfVote() => $_has(0);
  @$pb.TagNumber(1)
  void clearSelfVote() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get votesFor => $_getIZ(1);
  @$pb.TagNumber(2)
  set votesFor($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasVotesFor() => $_has(1);
  @$pb.TagNumber(2)
  void clearVotesFor() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get totalVoters => $_getIZ(2);
  @$pb.TagNumber(3)
  set totalVoters($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTotalVoters() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalVoters() => clearField(3);
}

class CrdtInit extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CrdtInit',
      package: const $pb.PackageName('cloudstate.crdt'),
      createEmptyInstance: create)
    ..aOS(1, 'serviceName')
    ..aOS(2, 'entityId')
    ..aOM<CrdtState>(3, 'state', subBuilder: CrdtState.create)
    ..hasRequiredFields = false;

  CrdtInit._() : super();
  factory CrdtInit() => create();
  factory CrdtInit.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CrdtInit.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CrdtInit clone() => CrdtInit()..mergeFromMessage(this);
  CrdtInit copyWith(void Function(CrdtInit) updates) =>
      super.copyWith((message) => updates(message as CrdtInit));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CrdtInit create() => CrdtInit._();
  CrdtInit createEmptyInstance() => create();
  static $pb.PbList<CrdtInit> createRepeated() => $pb.PbList<CrdtInit>();
  @$core.pragma('dart2js:noInline')
  static CrdtInit getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CrdtInit>(create);
  static CrdtInit _defaultInstance;

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
  CrdtState get state => $_getN(2);
  @$pb.TagNumber(3)
  set state(CrdtState v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasState() => $_has(2);
  @$pb.TagNumber(3)
  void clearState() => clearField(3);
  @$pb.TagNumber(3)
  CrdtState ensureState() => $_ensure(2);
}

class CrdtDelete extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CrdtDelete',
      package: const $pb.PackageName('cloudstate.crdt'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  CrdtDelete._() : super();
  factory CrdtDelete() => create();
  factory CrdtDelete.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CrdtDelete.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CrdtDelete clone() => CrdtDelete()..mergeFromMessage(this);
  CrdtDelete copyWith(void Function(CrdtDelete) updates) =>
      super.copyWith((message) => updates(message as CrdtDelete));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CrdtDelete create() => CrdtDelete._();
  CrdtDelete createEmptyInstance() => create();
  static $pb.PbList<CrdtDelete> createRepeated() => $pb.PbList<CrdtDelete>();
  @$core.pragma('dart2js:noInline')
  static CrdtDelete getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CrdtDelete>(create);
  static CrdtDelete _defaultInstance;
}

class CrdtReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CrdtReply',
      package: const $pb.PackageName('cloudstate.crdt'),
      createEmptyInstance: create)
    ..aInt64(1, 'commandId')
    ..aOM<$0.ClientAction>(2, 'clientAction',
        subBuilder: $0.ClientAction.create)
    ..pc<$0.SideEffect>(4, 'sideEffects', $pb.PbFieldType.PM,
        subBuilder: $0.SideEffect.create)
    ..aOM<CrdtStateAction>(5, 'stateAction', subBuilder: CrdtStateAction.create)
    ..aOB(6, 'streamed')
    ..hasRequiredFields = false;

  CrdtReply._() : super();
  factory CrdtReply() => create();
  factory CrdtReply.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CrdtReply.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CrdtReply clone() => CrdtReply()..mergeFromMessage(this);
  CrdtReply copyWith(void Function(CrdtReply) updates) =>
      super.copyWith((message) => updates(message as CrdtReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CrdtReply create() => CrdtReply._();
  CrdtReply createEmptyInstance() => create();
  static $pb.PbList<CrdtReply> createRepeated() => $pb.PbList<CrdtReply>();
  @$core.pragma('dart2js:noInline')
  static CrdtReply getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CrdtReply>(create);
  static CrdtReply _defaultInstance;

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

  @$pb.TagNumber(4)
  $core.List<$0.SideEffect> get sideEffects => $_getList(2);

  @$pb.TagNumber(5)
  CrdtStateAction get stateAction => $_getN(3);
  @$pb.TagNumber(5)
  set stateAction(CrdtStateAction v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasStateAction() => $_has(3);
  @$pb.TagNumber(5)
  void clearStateAction() => clearField(5);
  @$pb.TagNumber(5)
  CrdtStateAction ensureStateAction() => $_ensure(3);

  @$pb.TagNumber(6)
  $core.bool get streamed => $_getBF(4);
  @$pb.TagNumber(6)
  set streamed($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasStreamed() => $_has(4);
  @$pb.TagNumber(6)
  void clearStreamed() => clearField(6);
}

enum CrdtStateAction_Action { create_5, update, delete, notSet }

class CrdtStateAction extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, CrdtStateAction_Action>
      _CrdtStateAction_ActionByTag = {
    5: CrdtStateAction_Action.create_5,
    6: CrdtStateAction_Action.update,
    7: CrdtStateAction_Action.delete,
    0: CrdtStateAction_Action.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CrdtStateAction',
      package: const $pb.PackageName('cloudstate.crdt'),
      createEmptyInstance: create)
    ..oo(0, [5, 6, 7])
    ..aOM<CrdtState>(5, 'create', subBuilder: CrdtState.create)
    ..aOM<CrdtDelta>(6, 'update', subBuilder: CrdtDelta.create)
    ..aOM<CrdtDelete>(7, 'delete', subBuilder: CrdtDelete.create)
    ..e<CrdtWriteConsistency>(8, 'writeConsistency', $pb.PbFieldType.OE,
        defaultOrMaker: CrdtWriteConsistency.LOCAL,
        valueOf: CrdtWriteConsistency.valueOf,
        enumValues: CrdtWriteConsistency.values)
    ..hasRequiredFields = false;

  CrdtStateAction._() : super();
  factory CrdtStateAction() => create();
  factory CrdtStateAction.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CrdtStateAction.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CrdtStateAction clone() => CrdtStateAction()..mergeFromMessage(this);
  CrdtStateAction copyWith(void Function(CrdtStateAction) updates) =>
      super.copyWith((message) => updates(message as CrdtStateAction));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CrdtStateAction create() => CrdtStateAction._();
  CrdtStateAction createEmptyInstance() => create();
  static $pb.PbList<CrdtStateAction> createRepeated() =>
      $pb.PbList<CrdtStateAction>();
  @$core.pragma('dart2js:noInline')
  static CrdtStateAction getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CrdtStateAction>(create);
  static CrdtStateAction _defaultInstance;

  CrdtStateAction_Action whichAction() =>
      _CrdtStateAction_ActionByTag[$_whichOneof(0)];
  void clearAction() => clearField($_whichOneof(0));

  @$pb.TagNumber(5)
  CrdtState get create_5 => $_getN(0);
  @$pb.TagNumber(5)
  set create_5(CrdtState v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasCreate_5() => $_has(0);
  @$pb.TagNumber(5)
  void clearCreate_5() => clearField(5);
  @$pb.TagNumber(5)
  CrdtState ensureCreate_5() => $_ensure(0);

  @$pb.TagNumber(6)
  CrdtDelta get update => $_getN(1);
  @$pb.TagNumber(6)
  set update(CrdtDelta v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasUpdate() => $_has(1);
  @$pb.TagNumber(6)
  void clearUpdate() => clearField(6);
  @$pb.TagNumber(6)
  CrdtDelta ensureUpdate() => $_ensure(1);

  @$pb.TagNumber(7)
  CrdtDelete get delete => $_getN(2);
  @$pb.TagNumber(7)
  set delete(CrdtDelete v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasDelete() => $_has(2);
  @$pb.TagNumber(7)
  void clearDelete() => clearField(7);
  @$pb.TagNumber(7)
  CrdtDelete ensureDelete() => $_ensure(2);

  @$pb.TagNumber(8)
  CrdtWriteConsistency get writeConsistency => $_getN(3);
  @$pb.TagNumber(8)
  set writeConsistency(CrdtWriteConsistency v) {
    setField(8, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasWriteConsistency() => $_has(3);
  @$pb.TagNumber(8)
  void clearWriteConsistency() => clearField(8);
}

class CrdtStreamedMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CrdtStreamedMessage',
      package: const $pb.PackageName('cloudstate.crdt'),
      createEmptyInstance: create)
    ..aInt64(1, 'commandId')
    ..aOM<$0.ClientAction>(2, 'clientAction',
        subBuilder: $0.ClientAction.create)
    ..pc<$0.SideEffect>(3, 'sideEffects', $pb.PbFieldType.PM,
        subBuilder: $0.SideEffect.create)
    ..aOB(4, 'endStream')
    ..hasRequiredFields = false;

  CrdtStreamedMessage._() : super();
  factory CrdtStreamedMessage() => create();
  factory CrdtStreamedMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CrdtStreamedMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CrdtStreamedMessage clone() => CrdtStreamedMessage()..mergeFromMessage(this);
  CrdtStreamedMessage copyWith(void Function(CrdtStreamedMessage) updates) =>
      super.copyWith((message) => updates(message as CrdtStreamedMessage));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CrdtStreamedMessage create() => CrdtStreamedMessage._();
  CrdtStreamedMessage createEmptyInstance() => create();
  static $pb.PbList<CrdtStreamedMessage> createRepeated() =>
      $pb.PbList<CrdtStreamedMessage>();
  @$core.pragma('dart2js:noInline')
  static CrdtStreamedMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CrdtStreamedMessage>(create);
  static CrdtStreamedMessage _defaultInstance;

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
  $core.bool get endStream => $_getBF(3);
  @$pb.TagNumber(4)
  set endStream($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasEndStream() => $_has(3);
  @$pb.TagNumber(4)
  void clearEndStream() => clearField(4);
}

class CrdtStreamCancelledResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'CrdtStreamCancelledResponse',
      package: const $pb.PackageName('cloudstate.crdt'),
      createEmptyInstance: create)
    ..aInt64(1, 'commandId')
    ..pc<$0.SideEffect>(2, 'sideEffects', $pb.PbFieldType.PM,
        subBuilder: $0.SideEffect.create)
    ..aOM<CrdtStateAction>(3, 'stateAction', subBuilder: CrdtStateAction.create)
    ..hasRequiredFields = false;

  CrdtStreamCancelledResponse._() : super();
  factory CrdtStreamCancelledResponse() => create();
  factory CrdtStreamCancelledResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CrdtStreamCancelledResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CrdtStreamCancelledResponse clone() =>
      CrdtStreamCancelledResponse()..mergeFromMessage(this);
  CrdtStreamCancelledResponse copyWith(
          void Function(CrdtStreamCancelledResponse) updates) =>
      super.copyWith(
          (message) => updates(message as CrdtStreamCancelledResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CrdtStreamCancelledResponse create() =>
      CrdtStreamCancelledResponse._();
  CrdtStreamCancelledResponse createEmptyInstance() => create();
  static $pb.PbList<CrdtStreamCancelledResponse> createRepeated() =>
      $pb.PbList<CrdtStreamCancelledResponse>();
  @$core.pragma('dart2js:noInline')
  static CrdtStreamCancelledResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CrdtStreamCancelledResponse>(create);
  static CrdtStreamCancelledResponse _defaultInstance;

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
  $core.List<$0.SideEffect> get sideEffects => $_getList(1);

  @$pb.TagNumber(3)
  CrdtStateAction get stateAction => $_getN(2);
  @$pb.TagNumber(3)
  set stateAction(CrdtStateAction v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasStateAction() => $_has(2);
  @$pb.TagNumber(3)
  void clearStateAction() => clearField(3);
  @$pb.TagNumber(3)
  CrdtStateAction ensureStateAction() => $_ensure(2);
}
