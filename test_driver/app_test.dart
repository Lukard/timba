import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('End to end tests', () {
    SerializableFinder counter;
    SerializableFinder button;

    FlutterDriver driver;

    setUp(() async {
      driver = await FlutterDriver.connect();
      driver.requestData('holi');
      counter = find.byValueKey('Counter');
      button = find.byValueKey('Button');
    });

    tearDown(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('when click on plus button then it adds one to counter', () async {
      expect(await driver.getText(counter), '0');

      await driver.tap(button);

      expect(await driver.getText(counter), '1');
    });
  });
}