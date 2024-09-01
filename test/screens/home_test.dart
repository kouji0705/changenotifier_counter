import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:changenotifier_counter/providers/counter_provider.dart';
import 'package:changenotifier_counter/screens/home.dart';

void main() {
  testWidgets('HomeScreenのウィジェットテスト increment decrement',
      (WidgetTester tester) async {
    // Arrange: CounterProviderを提供し、HomeScreenをビルド
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (_) => CounterProvider(),
        child: MaterialApp(
          home: HomeScreen(),
        ),
      ),
    );

    // Assert: 初期状態でカウンターの値が「0」であることを確認
    expect(find.text('0'), findsOneWidget);
    expect(find.text('You have pushed the button this many times:'),
        findsOneWidget);

    // Act: Incrementボタンをタップ
    await tester.tap(find.text('Increment'));
    await tester.pump(); // ウィジェットをリビルド

    // Assert: カウンターの値が「1」になることを確認
    expect(find.text('1'), findsOneWidget);

    // Act: Decrementボタンをタップ
    await tester.tap(find.text('Decrement'));
    await tester.pump(); // ウィジェットをリビルド

    // Assert: カウンターの値が再び「0」になることを確認
    expect(find.text('0'), findsOneWidget);
  });
}
