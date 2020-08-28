import 'package:Timba/feature/game/domain/get_card_use_case.dart';
import 'package:Timba/injection.dart';
import 'package:test/test.dart';

void main() {
  test('when configureDependencies then \$initGetIt is called', () {
    configureDependencies();

    expect(getIt<GetCardUseCase>(), isNotNull);
  });
}