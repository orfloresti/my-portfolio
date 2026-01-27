import 'package:flutter_test/flutter_test.dart';
import 'package:my_portfolio/main.dart';

void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyPortfolioApp());

    // Verify that the name is displayed.
    expect(find.text('Orlando Flores Teomitzi.'), findsOneWidget);
    expect(find.text('I build things for the web.'), findsOneWidget);
  });
}
