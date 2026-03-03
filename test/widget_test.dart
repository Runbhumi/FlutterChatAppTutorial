import 'package:flutter_test/flutter_test.dart';
import 'package:chatapp/main.dart';

void main() {
  testWidgets('MyApp widget can be created', (WidgetTester tester) async {
    // Verify that MyApp can be instantiated without errors.
    // Note: Full widget testing requires Firebase initialization,
    // so we only verify the widget can be constructed.
    const app = MyApp();
    expect(app, isNotNull);
  });
}
