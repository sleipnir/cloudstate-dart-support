import 'package:cloudstate/cloudstate.dart';

// ignore: avoid_relative_lib_imports
import '../lib/src/eventsourced_entity.dart';

void main() {
  Cloudstate()
    ..port = 8089
    ..address = 'localhost'
    ..registerEventSourcedEntity('ShoppingCart', ShoppingCartEntity)
    ..start();
}
