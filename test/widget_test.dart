// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:keepintouch/main.dart';

void main() {
  testWidgets('App builds and displays home page smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the home page title and filter chips are present.
    expect(find.text('Home'), findsAtLeastNWidgets(1));
    expect(find.text('Gönderilmemiş'), findsOneWidget);
    expect(find.text('Kontrol Edilmemiş'), findsOneWidget);

    // Verify that there is no 'plus' icon from the old counter app
    expect(find.byIcon(Icons.add), findsNothing);
  });
}
