import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:leaf_social_media_app/main.dart';
import 'package:leaf_social_media_app/pages/home_page.dart';

void main() {
  const Widget testWidget = LeafApp();
  group("Testing Leaf widget", () {
    testWidgets("Exactly One MaterialApp", (WidgetTester tester) async {
      await tester.pumpWidget(testWidget);
      expect(find.byType(MaterialApp), findsOneWidget);
    });

    testWidgets("Exactly one HomePage", (WidgetTester tester) async {
      await tester.pumpWidget(testWidget);
      expect(find.byType(HomePage), findsOneWidget);
    });
  });
}
