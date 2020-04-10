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
    return Domain.Cart.create();
    /*return Domain.Cart.newBuilder()
        .addAllItems(cart.values().stream().map(this::convert).collect(Collectors.toList()))
        .build();*/
  }

  @SnapshotHandler()
  void handleSnapshot(Domain.Cart cart) {
    _cart.clear();
    /*for (Domain.LineItem item : cart.getItemsList()) {
      this.cart.put(item.getProductId(), convert(item));
    }*/

  }

  @EventHandler()
  void itemAdded(Domain.ItemAdded itemAdded) {
    /*Shoppingcart.LineItem item = _cart.get(itemAdded.getItem().getProductId());
    if (item == null) {
      item = convert(itemAdded.getItem());
    } else {
      item =
          item.toBuilder()
              .setQuantity(item.getQuantity() + itemAdded.getItem().getQuantity())
              .build();
    }
    _cart.put(item.getProductId(), item);*/
  }

  @EventHandler()
  void itemRemoved(Domain.ItemRemoved itemRemoved) {
    _cart.remove(itemRemoved.productId);
  }

  @EventSourcedCommandHandler()
  Shoppingcart.Cart getCart() {
    return null;//Shoppingcart.Cart.newBuilder().addAllItems(cart.values()).build();
  }

  @EventSourcedCommandHandler()
  Empty addItem(Shoppingcart.AddLineItem item/*, CommandContext ctx*/) {
    if (item.quantity <= 0) {
      //ctx.fail('Cannot add negative quantity of to item' + item.productId);
    }
    /*ctx.emit(
        Domain.ItemAdded.newBuilder()
            .setItem(
            Domain.LineItem.newBuilder()
                .setProductId(item.getProductId())
                .setName(item.getName())
                .setQuantity(item.getQuantity())
                .build())
            .build());*/
    return Empty.getDefault();
  }

  @EventSourcedCommandHandler()
  Empty removeItem(Shoppingcart.RemoveLineItem item/*, CommandContext ctx*/) {
    /*if (!cart.containsKey(item.getProductId())) {
      ctx.fail("Cannot remove item " + item.getProductId() + " because it is not in the cart.");
    }
    ctx.emit(Domain.ItemRemoved.newBuilder().setProductId(item.getProductId()).build());*/
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