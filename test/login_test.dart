import 'package:flutter/material.dart';
import 'package:flutter_first/presentation/login_page.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  group('Home page widget test', () {

    testWidgets('forgot test is not visible', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: LoginPage()));
      expect(find.byKey(const ValueKey("forgotPassword")), findsOneWidget);
    });

  });
}

/** group is used to run all tests in a group by the group description

    LoginPage() provides the UI for Login home screen

    testWidgets('description',(WidgetTester){}) creates the WidgetTester that provides ways to
    interact with the widget being tested

    await tester.pumpWidget() – renders the provided widget or it first renders the given screen widget

    find.byKey() – finds the widget with the given key. example:- we may have the same text in
    the UI, so find.byKey(Key('string')) becomes really helpful

    expect() – takes the found widget and compares it with the expected Matcher,
    which can be findsOneWidget, findsNothing, etc.*/