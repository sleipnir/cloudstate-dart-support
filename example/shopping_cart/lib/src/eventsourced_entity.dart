import 'package:cloudstate/cloudstate.dart';

import 'generated/google/protobuf/empty.pb.dart';
// ignore: library_prefixes
import 'generated/persistence/domain.pb.dart' as Domain;
// ignore: library_prefixes
import 'generated/shoppingcart.pb.dart' as Shoppingcart;

@EventSourcedEntity('')
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
    /*var item = Shoppingcart.LineItem.create()
      ..name = 'teste'
      ..productId = '1'
      ..quantity = 1;*/

    return Shoppingcart.Cart.create()
        //..items.add(item);
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