import 'package:Timba/feature/privacy_policy/presentation/page/privacy_policy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Privacy Policy is shown', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: PrivacyPolicy()));

    expect(find.text('No personal information is gathered. Enjoy! :)'),
        findsOneWidget);
  });
}
