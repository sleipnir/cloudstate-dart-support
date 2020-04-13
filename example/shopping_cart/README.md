Cloudstate Dart library

## Usage

A simple usage example:

Create new Dart project.

Add dependencies in pubspec.yml:

```yaml
name: shopping_cart
version: 0.5.0
description: A Cloudstate Dart ShoppingCart Example.
author: Adriano Santos <sleipnir@bsd.com.br>

environment:
  sdk: '>=2.7.0 <3.0.0'

dependencies:
  cloudstate:
    path: ../../
  async: ^2.2.0
  grpc: ^2.1.3
  protobuf: ^1.0.1

dev_dependencies:
  pedantic: ^1.8.0
  build_runner: ^1.5.2
  build_test: ^0.10.8
  build_web_compilers: ^2.1.1
  mockito: ^4.1.0
  test: ^1.6.4

```

Write Protofiles:
```proto
// File => protos/shoppingcart.proto

// This is the public API offered by the shopping cart entity.
syntax = "proto3";

package com.example.shoppingcart;

import "google/protobuf/empty.proto";
import "cloudstate/entity_key.proto";
import "cloudstate/eventing.proto";
import "google/api/annotations.proto";
import "google/api/http.proto";
import "google/api/httpbody.proto";

message AddLineItem {
    string user_id = 1 [(.cloudstate.entity_key) = true];
    string product_id = 2;
    string name = 3;
    int32 quantity = 4;
}

message RemoveLineItem {
    string user_id = 1 [(.cloudstate.entity_key) = true];
    string product_id = 2;
}

message GetShoppingCart {
    string user_id = 1 [(.cloudstate.entity_key) = true];
}

message LineItem {
    string product_id = 1;
    string name = 2;
    int32 quantity = 3;
}

message Cart {
    repeated LineItem items = 1;
}

service ShoppingCart {
    rpc AddItem(AddLineItem) returns (google.protobuf.Empty) {
        option (google.api.http) = {
            post: "/cart/{user_id}/items/add",
            body: "*",
        };
        option (.cloudstate.eventing).in = "items";
    }

    rpc RemoveItem(RemoveLineItem) returns (google.protobuf.Empty) {
        option (google.api.http).post = "/cart/{user_id}/items/{product_id}/remove";
    }

    rpc GetCart(GetShoppingCart) returns (Cart) {
        option (google.api.http) = {
          get: "/carts/{user_id}",
          additional_bindings: {
            get: "/carts/{user_id}/items",
            response_body: "items"
          }
        };
    }
}

// File => protos/persistence/domain.proto
// These are the messages that get persisted - the events, plus the current state (Cart) for snapshots.
syntax = "proto3";

package com.example.shoppingcart.persistence;

message LineItem {
    string productId = 1;
    string name = 2;
    int32 quantity = 3;
}

// The item added event.
message ItemAdded {
    LineItem item = 1;
}

// The item removed event.
message ItemRemoved {
    string productId = 1;
}

// The shopping cart state.
message Cart {
    repeated LineItem items = 1;
}

```

Compiling your proto files:
```shell script
[sleipnir@sleipnir example]# protoc --include_imports \
     --descriptor_set_out=user-function.desc \
     -I protos/persistence/domain.proto protos/shoppingcart.proto \
     --dart_out=grpc:lib/src/generated
````

Write file => lib/eventsourced_entity.dart:
```dart

import 'package:cloudstate/cloudstate.dart';

import 'generated/google/protobuf/empty.pb.dart';
// ignore: library_prefixes
import 'generated/persistence/domain.pb.dart' as Domain;
// ignore: library_prefixes
import 'generated/shoppingcart.pb.dart' as Shoppingcart;

@EventSourcedEntity('ShoppingCartEntity')
class ShoppingCartEntity {
  final Map<String, Shoppingcart.LineItem> _cart = {};

  @Snapshot()
  Domain.Cart snapshot() {
    return Domain.Cart.create()
        ..items.addAll(
            _cart.values.map((e) => convertShoppingItem(e))
            .toList());
  }

  @SnapshotHandler()
  void handleSnapshot(Domain.Cart cart) {
    _cart.clear();
    for (var item in cart.items) {
      _cart[item.productId] =  convert(item);
    }

  }

  @EventHandler()
  void itemAdded(Domain.ItemAdded itemAdded) {
    var item = _cart[itemAdded.item.productId];
    if (item == null) {
      item = convert(itemAdded.item);
    } else {
      item =
          item..quantity = item.quantity + itemAdded.item.quantity;
    }
    _cart[item.productId] = item;
  }

  @EventHandler()
  void itemRemoved(Domain.ItemRemoved itemRemoved) {
    _cart.remove(itemRemoved.productId);
  }

  @EventSourcedCommandHandler()
  Shoppingcart.Cart getCart() {
    return Shoppingcart.Cart.create()
        ..items.addAll(_cart.values);
  }

  @EventSourcedCommandHandler()
  Empty addItem(Shoppingcart.AddLineItem item, CommandContext ctx) {
    if (item.quantity <= 0) {
      ctx.fail('Cannot add negative quantity of to item ${item.productId}');
    }

    var lineIem = Domain.LineItem.create()
      ..productId = item.productId
      ..name = item.name
      ..quantity = item.quantity;

    ctx.emit(Domain.ItemAdded.create()..item = lineIem);
    return Empty.getDefault();
  }

  @EventSourcedCommandHandler()
  Empty removeItem(Shoppingcart.RemoveLineItem item, CommandContext ctx) {
    if (!_cart.containsKey(item.productId)) {
      ctx.fail('Cannot remove item ${item.productId} because it is not in the cart.');
    }
    ctx.emit(Domain.ItemRemoved.create()..productId = item.productId);
    return Empty.getDefault();
  }

  Shoppingcart.LineItem convert(Domain.LineItem item) {
    return Shoppingcart.LineItem.create()
        ..productId = item.productId
        ..name = item.name
        ..quantity = item.quantity;
  }

  Domain.LineItem convertShoppingItem(Shoppingcart.LineItem item) {
    return Domain.LineItem.create()
        ..productId = item.productId
        ..name = item.name
        ..quantity = item.quantity;
  }

}
```

Write file => bin/shopping_cart.dart:

```dart

import 'package:cloudstate/cloudstate.dart';

// ignore: avoid_relative_lib_imports
import '../lib/src/eventsourced_entity.dart';

void main() {
  Cloudstate()
    ..port = 8080
    ..address = 'localhost'
    ..registerEventSourcedEntity('com.example.shoppingcart.ShoppingCart', ShoppingCartEntity)
    ..start();
}
```