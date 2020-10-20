import 'package:Timba/feature/game/presentation/widget/pageview/pointer_aware_page_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../core/presentation/page/test_widget.dart';

void main() {
  testWidgets(
    'when mouse wheel is scrolled then next page is shown',
    (WidgetTester tester) async {
      await tester.pumpWidget(
        Test(
          child: PointerAwarePageView(
            children: [
              Text('1'),
              Text('2'),
            ],
          ),
        ),
      );

      expect(find.text('1'), findsOneWidget);

      final Offset scrollEventLocation = tester.getCenter(find.byType(PointerAwarePageView));
      final TestPointer testPointer = TestPointer(1, PointerDeviceKind.mouse);
      testPointer.hover(scrollEventLocation);
      await tester.sendEventToBinding(testPointer.scroll(const Offset(0.0, 1.0)));
      await tester.pumpAndSettle();

      expect(find.text('2'), findsOneWidget);
    },
  );
}
