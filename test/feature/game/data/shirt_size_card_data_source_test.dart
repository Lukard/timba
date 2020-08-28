import 'package:Timba/feature/game/data/shirt_size_card_data_source.dart';
import 'package:test/test.dart';

void main() {
  ShirtSizeCardDataSource shirtSizeCardDataSource = ShirtSizeCardDataSource();

  test('given 0 index when getShirtSize then "0" is returned', () {
    final result = shirtSizeCardDataSource.getShirtSize(0);

    expect(result, "0");
  });

  test('given 1 index when getShirtSize then "XS" is returned', () {
    final result = shirtSizeCardDataSource.getShirtSize(1);

    expect(result, "XS");
  });

  test('given 2 index when getShirtSize then "S" is returned', () {
    final result = shirtSizeCardDataSource.getShirtSize(2);

    expect(result, "S");
  });

  test('given 3 index when getShirtSize then "M" is returned', () {
    final result = shirtSizeCardDataSource.getShirtSize(3);

    expect(result, "M");
  });

  test('given 4 index when getShirtSize then "L" is returned', () {
    final result = shirtSizeCardDataSource.getShirtSize(4);

    expect(result, "L");
  });

  test('given 5 index when getShirtSize then "XL" is returned', () {
    final result = shirtSizeCardDataSource.getShirtSize(5);

    expect(result, "XL");
  });

  test('given 6 index when getShirtSize then "2XL" is returned', () {
    final result = shirtSizeCardDataSource.getShirtSize(6);

    expect(result, "2XL");
  });

  test('given 7 index when getShirtSize then "3XL" is returned', () {
    final result = shirtSizeCardDataSource.getShirtSize(7);

    expect(result, "3XL");
  });

  test('given 8 index when getShirtSize then "4XL" is returned', () {
    final result = shirtSizeCardDataSource.getShirtSize(8);

    expect(result, "4XL");
  });

  test('given 9 index when getShirtSize then "5XL" is returned', () {
    final result = shirtSizeCardDataSource.getShirtSize(9);

    expect(result, "5XL");
  });

  test('given 10 index when getShirtSize then "?" is returned', () {
    final result = shirtSizeCardDataSource.getShirtSize(10);

    expect(result, "?");
  });

  test('given any other index when getShirtSize then "☕️" is returned', () {
    final result = shirtSizeCardDataSource.getShirtSize(11);

    expect(result, "☕️");
  });
}
