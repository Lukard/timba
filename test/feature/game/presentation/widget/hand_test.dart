import 'package:Timba/feature/game/presentation/widget/hand.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../core/presentation/page/test_widget.dart';

void main() {
  testWidgets(
    'when hand is shown then gridview with 12 cards is shown',
    (WidgetTester tester) async {
      await tester.pumpWidget(
        Test(
          child: Hand(
            provideCard: (int index) => "$index",
          ),
        ),
      );

      for (int index = 0; index < 12; index++) {
        expect(find.text('$index'), findsOneWidget);
      }
    },
  );
}
