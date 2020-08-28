import 'package:Timba/feature/privacy_policy/presentation/page/privacy_policy.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../core/presentation/page/test_widget.dart';

void main() {
  testWidgets(
    'when privacy policy is shown then no required information text is displayed',
    (WidgetTester tester) async {
      await tester.pumpWidget(Test(child: PrivacyPolicy()));

      expect(
        find.text('No personal information is gathered. Enjoy! :)'),
        findsOneWidget,
      );
    },
  );
}
