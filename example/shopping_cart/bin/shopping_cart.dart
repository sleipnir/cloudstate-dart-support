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
