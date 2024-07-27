import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:leaf_social_media_app/main.dart';
import 'package:leaf_social_media_app/views/home_view.dart';

void main() {
  testWidgets('Testing Leaf widget', (WidgetTester tester) async {
    await tester.pumpWidget(const LeafApp());

    // Test: MaterialApp widget presence
    expect(find.byType(MaterialApp), findsOneWidget);

    // Test: HomePage widget presence
    expect(find.byType(HomeView), findsOneWidget);
  });
}
