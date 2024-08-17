import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:leaf_social_media_app/pages/home_page.dart';
import 'package:leaf_social_media_app/widgets/post_card.dart';

void main() {
  testWidgets('Testing HomePage widget', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: HomePage()));

    // Test: Scaffold widget
    expect(find.byType(Scaffold), findsOneWidget);

    // Test: AppBar widget
    expect(find.byType(AppBar), findsOneWidget);

    // Test: "Leaf" text
    expect(find.text('Leaf'), findsOneWidget);

    // Test: ListView widget
    expect(find.byType(ListView), findsOneWidget);

    // Test: PostCard widget
    expect(find.byType(PostCard), findsWidgets);
  });
}
