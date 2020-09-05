import 'package:Timba/feature/game/presentation/page/game.dart';
import 'package:Timba/feature/game/presentation/widget/hand.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../core/presentation/page/test_widget.dart';

void main() {
  testWidgets(
    'when game is shown then two hands are available',
    (WidgetTester tester) async {
      await tester.pumpWidget(Test(child: Game()));

      expect(find.byType(Hand), findsOneWidget);

      final gesture = await tester.startGesture(Offset.zero);
      await gesture.moveBy(Offset(0.0, -500.0));
      await tester.pump(Duration(seconds: 3));

      expect(find.byType(Hand), findsNWidgets(2));
    },
  );
}
