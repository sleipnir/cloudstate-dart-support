///
//  Generated code. Do not modify.
//  source: cloudstate/eventing.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Eventing extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Eventing',
      package: const $pb.PackageName('cloudstate'), createEmptyInstance: create)
    ..aOS(1, 'in')
    ..aOS(2, 'out')
    ..hasRequiredFields = false;

  Eventing._() : super();
  factory Eventing() => create();
  factory Eventing.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Eventing.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Eventing clone() => Eventing()..mergeFromMessage(this);
  Eventing copyWith(void Function(Eventing) updates) =>
      super.copyWith((message) => updates(message as Eventing));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Eventing create() => Eventing._();
  Eventing createEmptyInstance() => create();
  static $pb.PbList<Eventing> createRepeated() => $pb.PbList<Eventing>();
  @$core.pragma('dart2js:noInline')
  static Eventing getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Eventing>(create);
  static Eventing _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get in_1 => $_getSZ(0);
  @$pb.TagNumber(1)
  set in_1($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasIn_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearIn_1() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get out => $_getSZ(1);
  @$pb.TagNumber(2)
  set out($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasOut() => $_has(1);
  @$pb.TagNumber(2)
  void clearOut() => clearField(2);
}

class EventingExt {
  static final $pb.Extension eventing = $pb.Extension<Eventing>(
      'google.protobuf.MethodOptions', 'eventing', 50003, $pb.PbFieldType.OM,
      defaultOrMaker: Eventing.getDefault, subBuilder: Eventing.create);
  static void registerAllExtensions($pb.ExtensionRegistry registry) {
    registry.add(eventing);
  }
}
