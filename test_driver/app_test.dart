import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('End to end tests', () {
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
      await driver.waitFor(find.text('½'));
      await driver.waitFor(find.text('1'));
      await driver.waitFor(find.text('2'));
      await driver.waitFor(find.text('3'));
      await driver.waitFor(find.text('5'));
      await driver.waitFor(find.text('8'));
      await driver.waitFor(find.text('13'));
      await driver.waitFor(find.text('21'));
      await driver.waitFor(find.text('40'));
      await driver.waitFor(find.text('?'));
      await driver.waitFor(find.text('☕️'));

      await driver.runUnsynchronized(() async {
        final SerializableFinder pv = find.byValueKey('pageview');
        await driver.waitFor(pv);
        await driver.scroll(pv, 0.0, -1000.0, Duration(milliseconds: 500));
      });

      await driver.waitFor(find.text('0'));
      await driver.waitFor(find.text('XS'));
      await driver.waitFor(find.text('S'));
      await driver.waitFor(find.text('M'));
      await driver.waitFor(find.text('L'));
      await driver.waitFor(find.text('XL'));
      await driver.waitFor(find.text('2XL'));
      await driver.waitFor(find.text('3XL'));
      await driver.waitFor(find.text('4XL'));
      await driver.waitFor(find.text('5XL'));
      await driver.waitFor(find.text('?'));
      await driver.waitFor(find.text('☕️'));
    });
  });
}
