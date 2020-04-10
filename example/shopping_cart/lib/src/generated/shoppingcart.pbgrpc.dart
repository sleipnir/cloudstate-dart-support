///
//  Generated code. Do not modify.
//  source: shoppingcart.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'shoppingcart.pb.dart' as $0;
import 'google/protobuf/empty.pb.dart' as $1;
export 'shoppingcart.pb.dart';

class ShoppingCartClient extends $grpc.Client {
  static final _$addItem = $grpc.ClientMethod<$0.AddLineItem, $1.Empty>(
      '/ShoppingCart/AddItem',
      ($0.AddLineItem value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$removeItem = $grpc.ClientMethod<$0.RemoveLineItem, $1.Empty>(
      '/ShoppingCart/RemoveItem',
      ($0.RemoveLineItem value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$getCart = $grpc.ClientMethod<$0.GetShoppingCart, $0.Cart>(
      '/ShoppingCart/GetCart',
      ($0.GetShoppingCart value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Cart.fromBuffer(value));

  ShoppingCartClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$1.Empty> addItem($0.AddLineItem request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$addItem, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.Empty> removeItem($0.RemoveLineItem request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$removeItem, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.Cart> getCart($0.GetShoppingCart request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$getCart, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class ShoppingCartServiceBase extends $grpc.Service {
  $core.String get $name => 'ShoppingCart';

  ShoppingCartServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AddLineItem, $1.Empty>(
        'AddItem',
        addItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddLineItem.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RemoveLineItem, $1.Empty>(
        'RemoveItem',
        removeItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RemoveLineItem.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetShoppingCart, $0.Cart>(
        'GetCart',
        getCart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetShoppingCart.fromBuffer(value),
        ($0.Cart value) => value.writeToBuffer()));
  }

  $async.Future<$1.Empty> addItem_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AddLineItem> request) async {
    return addItem(call, await request);
  }

  $async.Future<$1.Empty> removeItem_Pre(
      $grpc.ServiceCall call, $async.Future<$0.RemoveLineItem> request) async {
    return removeItem(call, await request);
  }

  $async.Future<$0.Cart> getCart_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetShoppingCart> request) async {
    return getCart(call, await request);
  }

  $async.Future<$1.Empty> addItem(
      $grpc.ServiceCall call, $0.AddLineItem request);
  $async.Future<$1.Empty> removeItem(
      $grpc.ServiceCall call, $0.RemoveLineItem request);
  $async.Future<$0.Cart> getCart(
      $grpc.ServiceCall call, $0.GetShoppingCart request);
}
