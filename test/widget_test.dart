// test/widget_test.dart

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:request_luxo_app/main.dart';

void main() {
  testWidgets('Setup screen shows welcome message', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    // We need to wrap it in a function to allow Hive to initialize.
    await tester.pumpWidget(const LuxoRequestsApp());

    // Wait for the app to settle.
    await tester.pumpAndSettle();

    // Verify that the setup screen shows the welcome message.
    expect(find.text('Welcome to Luxo requests'), findsOneWidget);
    expect(find.text('Let\'s set up your profile to streamline your service requests.'), findsOneWidget);
  });
}