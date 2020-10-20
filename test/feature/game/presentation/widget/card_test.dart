import 'package:Timba/feature/game/presentation/widget/card.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../core/presentation/page/test_widget.dart';

void main() {
  testWidgets(
    'when card is shown then symbol shown',
    (WidgetTester tester) async {
      final symbol = "3";

      await tester.pumpWidget(Test(
        child: Card(symbol: symbol),
      ));

      expect(find.text(symbol), findsOneWidget);
    },
  );
}
