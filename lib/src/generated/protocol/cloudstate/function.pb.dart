///
//  Generated code. Do not modify.
//  source: protocol/cloudstate/function.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/any.pb.dart' as $5;
import 'entity.pb.dart' as $0;

class FunctionCommand extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FunctionCommand', package: const $pb.PackageName('cloudstate.function'), createEmptyInstance: create)
    ..aOS(2, 'serviceName')
    ..aOS(3, 'name')
    ..aOM<$5.Any>(4, 'payload', subBuilder: $5.Any.create)
    ..hasRequiredFields = false
  ;

  FunctionCommand._() : super();
  factory FunctionCommand() => create();
  factory FunctionCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FunctionCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FunctionCommand clone() => FunctionCommand()..mergeFromMessage(this);
  FunctionCommand copyWith(void Function(FunctionCommand) updates) => super.copyWith((message) => updates(message as FunctionCommand));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FunctionCommand create() => FunctionCommand._();
  FunctionCommand createEmptyInstance() => create();
  static $pb.PbList<FunctionCommand> createRepeated() => $pb.PbList<FunctionCommand>();
  @$core.pragma('dart2js:noInline')
  static FunctionCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FunctionCommand>(create);
  static FunctionCommand _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get serviceName => $_getSZ(0);
  @$pb.TagNumber(2)
  set serviceName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasServiceName() => $_has(0);
  @$pb.TagNumber(2)
  void clearServiceName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $5.Any get payload => $_getN(2);
  @$pb.TagNumber(4)
  set payload($5.Any v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPayload() => $_has(2);
  @$pb.TagNumber(4)
  void clearPayload() => clearField(4);
  @$pb.TagNumber(4)
  $5.Any ensurePayload() => $_ensure(2);
}

enum FunctionReply_Response {
  failure, 
  reply, 
  forward, 
  notSet
}

class FunctionReply extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, FunctionReply_Response> _FunctionReply_ResponseByTag = {
    1 : FunctionReply_Response.failure,
    2 : FunctionReply_Response.reply,
    3 : FunctionReply_Response.forward,
    0 : FunctionReply_Response.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FunctionReply', package: const $pb.PackageName('cloudstate.function'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<$0.Failure>(1, 'failure', subBuilder: $0.Failure.create)
    ..aOM<$0.Reply>(2, 'reply', subBuilder: $0.Reply.create)
    ..aOM<$0.Forward>(3, 'forward', subBuilder: $0.Forward.create)
    ..pc<$0.SideEffect>(4, 'sideEffects', $pb.PbFieldType.PM, subBuilder: $0.SideEffect.create)
    ..hasRequiredFields = false
  ;

  FunctionReply._() : super();
  factory FunctionReply() => create();
  factory FunctionReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FunctionReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FunctionReply clone() => FunctionReply()..mergeFromMessage(this);
  FunctionReply copyWith(void Function(FunctionReply) updates) => super.copyWith((message) => updates(message as FunctionReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FunctionReply create() => FunctionReply._();
  FunctionReply createEmptyInstance() => create();
  static $pb.PbList<FunctionReply> createRepeated() => $pb.PbList<FunctionReply>();
  @$core.pragma('dart2js:noInline')
  static FunctionReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FunctionReply>(create);
  static FunctionReply _defaultInstance;

  FunctionReply_Response whichResponse() => _FunctionReply_ResponseByTag[$_whichOneof(0)];
  void clearResponse() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $0.Failure get failure => $_getN(0);
  @$pb.TagNumber(1)
  set failure($0.Failure v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFailure() => $_has(0);
  @$pb.TagNumber(1)
  void clearFailure() => clearField(1);
  @$pb.TagNumber(1)
  $0.Failure ensureFailure() => $_ensure(0);

  @$pb.TagNumber(2)
  $0.Reply get reply => $_getN(1);
  @$pb.TagNumber(2)
  set reply($0.Reply v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasReply() => $_has(1);
  @$pb.TagNumber(2)
  void clearReply() => clearField(2);
  @$pb.TagNumber(2)
  $0.Reply ensureReply() => $_ensure(1);

  @$pb.TagNumber(3)
  $0.Forward get forward => $_getN(2);
  @$pb.TagNumber(3)
  set forward($0.Forward v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasForward() => $_has(2);
  @$pb.TagNumber(3)
  void clearForward() => clearField(3);
  @$pb.TagNumber(3)
  $0.Forward ensureForward() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.List<$0.SideEffect> get sideEffects => $_getList(3);
}

