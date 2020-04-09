///
//  Generated code. Do not modify.
//  source: persistence/domain.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class LineItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LineItem', package: const $pb.PackageName('com.example.shoppingcart.persistence'), createEmptyInstance: create)
    ..aOS(1, 'productId', protoName: 'productId')
    ..aOS(2, 'name')
    ..a<$core.int>(3, 'quantity', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  LineItem._() : super();
  factory LineItem() => create();
  factory LineItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LineItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LineItem clone() => LineItem()..mergeFromMessage(this);
  LineItem copyWith(void Function(LineItem) updates) => super.copyWith((message) => updates(message as LineItem));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LineItem create() => LineItem._();
  LineItem createEmptyInstance() => create();
  static $pb.PbList<LineItem> createRepeated() => $pb.PbList<LineItem>();
  @$core.pragma('dart2js:noInline')
  static LineItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LineItem>(create);
  static LineItem _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get productId => $_getSZ(0);
  @$pb.TagNumber(1)
  set productId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProductId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProductId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get quantity => $_getIZ(2);
  @$pb.TagNumber(3)
  set quantity($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasQuantity() => $_has(2);
  @$pb.TagNumber(3)
  void clearQuantity() => clearField(3);
}

class ItemAdded extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ItemAdded', package: const $pb.PackageName('com.example.shoppingcart.persistence'), createEmptyInstance: create)
    ..aOM<LineItem>(1, 'item', subBuilder: LineItem.create)
    ..hasRequiredFields = false
  ;

  ItemAdded._() : super();
  factory ItemAdded() => create();
  factory ItemAdded.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ItemAdded.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ItemAdded clone() => ItemAdded()..mergeFromMessage(this);
  ItemAdded copyWith(void Function(ItemAdded) updates) => super.copyWith((message) => updates(message as ItemAdded));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ItemAdded create() => ItemAdded._();
  ItemAdded createEmptyInstance() => create();
  static $pb.PbList<ItemAdded> createRepeated() => $pb.PbList<ItemAdded>();
  @$core.pragma('dart2js:noInline')
  static ItemAdded getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ItemAdded>(create);
  static ItemAdded _defaultInstance;

  @$pb.TagNumber(1)
  LineItem get item => $_getN(0);
  @$pb.TagNumber(1)
  set item(LineItem v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasItem() => $_has(0);
  @$pb.TagNumber(1)
  void clearItem() => clearField(1);
  @$pb.TagNumber(1)
  LineItem ensureItem() => $_ensure(0);
}

class ItemRemoved extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ItemRemoved', package: const $pb.PackageName('com.example.shoppingcart.persistence'), createEmptyInstance: create)
    ..aOS(1, 'productId', protoName: 'productId')
    ..hasRequiredFields = false
  ;

  ItemRemoved._() : super();
  factory ItemRemoved() => create();
  factory ItemRemoved.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ItemRemoved.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ItemRemoved clone() => ItemRemoved()..mergeFromMessage(this);
  ItemRemoved copyWith(void Function(ItemRemoved) updates) => super.copyWith((message) => updates(message as ItemRemoved));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ItemRemoved create() => ItemRemoved._();
  ItemRemoved createEmptyInstance() => create();
  static $pb.PbList<ItemRemoved> createRepeated() => $pb.PbList<ItemRemoved>();
  @$core.pragma('dart2js:noInline')
  static ItemRemoved getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ItemRemoved>(create);
  static ItemRemoved _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get productId => $_getSZ(0);
  @$pb.TagNumber(1)
  set productId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProductId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProductId() => clearField(1);
}

class Cart extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Cart', package: const $pb.PackageName('com.example.shoppingcart.persistence'), createEmptyInstance: create)
    ..pc<LineItem>(1, 'items', $pb.PbFieldType.PM, subBuilder: LineItem.create)
    ..hasRequiredFields = false
  ;

  Cart._() : super();
  factory Cart() => create();
  factory Cart.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Cart.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Cart clone() => Cart()..mergeFromMessage(this);
  Cart copyWith(void Function(Cart) updates) => super.copyWith((message) => updates(message as Cart));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Cart create() => Cart._();
  Cart createEmptyInstance() => create();
  static $pb.PbList<Cart> createRepeated() => $pb.PbList<Cart>();
  @$core.pragma('dart2js:noInline')
  static Cart getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Cart>(create);
  static Cart _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<LineItem> get items => $_getList(0);
}

