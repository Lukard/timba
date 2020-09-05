import 'package:Timba/feature/game/presentation/widget/card.dart' as PokerCard;
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
      await tester.pump(Duration(seconds: 3));

      expect(find.byType(PokerCard.Card), findsNWidgets(12));
    },
  );
}
