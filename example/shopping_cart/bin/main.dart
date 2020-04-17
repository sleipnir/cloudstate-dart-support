import 'package:cloudstate/cloudstate.dart';
import 'package:shopping_cart/src/eventsourced_entity.dart';

void main() {
  Cloudstate()
    ..port = 8089
    ..address = 'localhost'
    ..registerEventSourcedEntity(
        'com.example.shoppingcart.ShoppingCart', ShoppingCartEntity)
    ..start();
}
