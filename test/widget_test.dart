// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:incodnito/ui/pages/landing.dart';
import 'package:network_image_mock/network_image_mock.dart';

void main() {
  testWidgets('Incodnito title test', (WidgetTester tester) async {
    mockNetworkImagesFor(() async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(MaterialApp(
        home: Landing(),
      ));

      final titleFinder = find.text('Incodnito');

      expect(titleFinder, findsOneWidget);
    });
  });
}
