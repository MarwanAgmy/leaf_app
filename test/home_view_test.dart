import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:leaf_social_media_app/views/home_view.dart';

void main() {
  testWidgets('Testing HomePage widget', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: HomeView()));

    // Test: Scaffold widget
    expect(find.byType(Scaffold), findsOneWidget);

    // Test: AppBar widget
    expect(find.byType(AppBar), findsOneWidget);

    // Test: 2 Text widgets
    expect(find.byType(Text), findsNWidgets(2));

    // Test: "Leaf" text
    expect(find.text('Leaf'), findsOneWidget);

    // Test: "Hello world!" text
    expect(find.text('Hello world!'), findsOneWidget);
  });
}
