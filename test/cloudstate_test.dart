import 'package:cloudstate/cloudstate.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    Cloudstate cloudstate;

    setUp(() {
      cloudstate = Cloudstate()
        ..port = 8080
        ..address = 'localhost';
    });

    test('First Test', () {
      expect(cloudstate, isNotNull);
    });
  });
}
