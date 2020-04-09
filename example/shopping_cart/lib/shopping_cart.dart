import 'dart:io';

import 'package:cloudstate_dart_support/cloudstate_dart_support.dart';
import 'src/eventsourced_entity.dart';

void main() {

  Cloudstate()
    ..port = 8080
    ..address = 'localhost'
    ..registerEventSourcedEntity(ShoppinCartEntity, 'ShoppingCart')
    ..start();
}