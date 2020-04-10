///
//  Generated code. Do not modify.
//  source: shoppingcart.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class AddLineItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AddLineItem', createEmptyInstance: create)
    ..aOS(1, 'userId')
    ..aOS(2, 'productId')
    ..aOS(3, 'name')
    ..a<$core.int>(4, 'quantity', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  AddLineItem._() : super();
  factory AddLineItem() => create();
  factory AddLineItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddLineItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AddLineItem clone() => AddLineItem()..mergeFromMessage(this);
  AddLineItem copyWith(void Function(AddLineItem) updates) => super.copyWith((message) => updates(message as AddLineItem));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddLineItem create() => AddLineItem._();
  AddLineItem createEmptyInstance() => create();
  static $pb.PbList<AddLineItem> createRepeated() => $pb.PbList<AddLineItem>();
  @$core.pragma('dart2js:noInline')
  static AddLineItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddLineItem>(create);
  static AddLineItem _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get productId => $_getSZ(1);
  @$pb.TagNumber(2)
  set productId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProductId() => $_has(1);
  @$pb.TagNumber(2)
  void clearProductId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get quantity => $_getIZ(3);
  @$pb.TagNumber(4)
  set quantity($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasQuantity() => $_has(3);
  @$pb.TagNumber(4)
  void clearQuantity() => clearField(4);
}

class RemoveLineItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RemoveLineItem', createEmptyInstance: create)
    ..aOS(1, 'userId')
    ..aOS(2, 'productId')
    ..hasRequiredFields = false
  ;

  RemoveLineItem._() : super();
  factory RemoveLineItem() => create();
  factory RemoveLineItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveLineItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RemoveLineItem clone() => RemoveLineItem()..mergeFromMessage(this);
  RemoveLineItem copyWith(void Function(RemoveLineItem) updates) => super.copyWith((message) => updates(message as RemoveLineItem));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveLineItem create() => RemoveLineItem._();
  RemoveLineItem createEmptyInstance() => create();
  static $pb.PbList<RemoveLineItem> createRepeated() => $pb.PbList<RemoveLineItem>();
  @$core.pragma('dart2js:noInline')
  static RemoveLineItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveLineItem>(create);
  static RemoveLineItem _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get productId => $_getSZ(1);
  @$pb.TagNumber(2)
  set productId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProductId() => $_has(1);
  @$pb.TagNumber(2)
  void clearProductId() => clearField(2);
}

class GetShoppingCart extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetShoppingCart', createEmptyInstance: create)
    ..aOS(1, 'userId')
    ..hasRequiredFields = false
  ;

  GetShoppingCart._() : super();
  factory GetShoppingCart() => create();
  factory GetShoppingCart.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetShoppingCart.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetShoppingCart clone() => GetShoppingCart()..mergeFromMessage(this);
  GetShoppingCart copyWith(void Function(GetShoppingCart) updates) => super.copyWith((message) => updates(message as GetShoppingCart));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetShoppingCart create() => GetShoppingCart._();
  GetShoppingCart createEmptyInstance() => create();
  static $pb.PbList<GetShoppingCart> createRepeated() => $pb.PbList<GetShoppingCart>();
  @$core.pragma('dart2js:noInline')
  static GetShoppingCart getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetShoppingCart>(create);
  static GetShoppingCart _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

class LineItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LineItem', createEmptyInstance: create)
    ..aOS(1, 'productId')
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

class Cart extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Cart', createEmptyInstance: create)
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

