import 'package:cloudstate_dart_support/cloudstate_dart_support.dart';

void main() {

  Cloudstate()
    ..port = 8080
    ..address = 'localhost'
    ..registerEventSourcedEntity(ShoppinCartEntity, null, [])
    ..start();
}

@EventSourcedEntity()
class ShoppinCartEntity {

}
