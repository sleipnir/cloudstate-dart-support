import 'dart:io';

import 'package:cloudstate/cloudstate.dart';
import 'src/eventsourced_entity.dart';

void main() {

  Cloudstate()
    ..port = 8080
    ..address = 'localhost'
    ..registerEventSourcedEntity(ShoppinCartEntity, 'ShoppingCart')
    ..start();
}