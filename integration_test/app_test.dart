import 'package:flutter/material.dart';
import 'package:flutter_first/presentation/home_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_first/main.dart' as app;

void main(){
  group('end to end test', () {
    testWidgets('verify users with correct username and password', (tester)
    async {
      app.main();
      await tester.pumpAndSettle();
      await tester.enterText(find.byType(TextFormField).at(0), 'testuser@gmail.com');
      await tester.enterText(find.byType(TextFormField).at(1), '123456789');
      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();

      expect(find.byType(HomePage), findsOneWidget);
    });
  });
}


/** group is used to run all tests in a group by the group description

    app.main(); provides the UI for Main  screen

    testWidgets('description',(WidgetTester){}) creates the WidgetTester that provides ways to
    interact with the widget being tested

    await tester.pumpWidget() – renders the provided widget or it first renders the given screen widget

    find.byType(Widget) – finds the widget with the given key. example:- we may have the same text in
    the UI, so find.byKey(Key('string')) becomes really helpful

    expect() – takes the found widget and compares it with the expected Matcher,
    which can be findsOneWidget, findsNothing, etc.*/