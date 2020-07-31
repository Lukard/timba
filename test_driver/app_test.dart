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
    });

    tearDown(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('when game starts then it shows the whole grid', () async {
      await driver.waitFor(find.text('0'));
      await driver.waitFor(find.text('1'));
      await driver.waitFor(find.text('2'));
      await driver.waitFor(find.text('3'));
      await driver.waitFor(find.text('5'));
      await driver.waitFor(find.text('8'));
      await driver.waitFor(find.text('13'));
      await driver.waitFor(find.text('?'));
      await driver.waitFor(find.text('☕️'));
    });
  });
}
