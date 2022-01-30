import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:timeago_flutter/timeago_flutter.dart';

void main() {
  testWidgets('Timeago basic test', (WidgetTester tester) async {
    await tester.pumpWidget(
      Directionality(
        textDirection: TextDirection.ltr,
        child: Timeago(
          date: DateTime.now(),
          builder: (_, value) => Text(value),
        ),
      ),
    );

    final valueFinder = find.byType(Text);
    final textFinder = find.text('a moment ago');

    expect(valueFinder, findsOneWidget);
    expect(textFinder, findsOneWidget);
  });

  testWidgets('Timeago 10 minutes ago', (WidgetTester tester) async {
    final now = DateTime.now();
    await tester.pumpWidget(
      Directionality(
        textDirection: TextDirection.ltr,
        child: Timeago(
          date: now.subtract(Duration(minutes: 10)),
          clock: now,
          builder: (_, value) => Text(value),
        ),
      ),
    );

    final valueFinder = find.byType(Text);
    final textFinder = find.text('10 minutes ago');

    expect(valueFinder, findsOneWidget);
    expect(textFinder, findsOneWidget);
  });

  testWidgets('Timeago locale', (WidgetTester tester) async {
    final now = DateTime.now();
    await tester.pumpWidget(
      Directionality(
        textDirection: TextDirection.ltr,
        child: Timeago(
          date: now,
          clock: now,
          locale: 'es',
          builder: (_, value) => Text(value),
        ),
      ),
    );

    final valueFinder = find.byType(Text);
    final textFinder = find.text('hace un momento');

    expect(valueFinder, findsOneWidget);
    expect(textFinder, findsOneWidget);
  });
}
