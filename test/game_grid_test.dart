import 'package:Timba/game.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Game is shown', (WidgetTester tester) async {
    await tester.pumpWidget(Game());

    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsOneWidget);
    expect(find.text('2'), findsOneWidget);
    expect(find.text('3'), findsOneWidget);
    expect(find.text('5'), findsOneWidget);
    expect(find.text('8'), findsOneWidget);
    expect(find.text('13'), findsOneWidget);
    expect(find.text('?'), findsOneWidget);
    expect(find.text('☕️'), findsOneWidget);
  });
}
