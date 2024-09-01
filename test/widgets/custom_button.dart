import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:changenotifier_counter/widgets/custom_button.dart';

void main() {
  testWidgets('CustomButtonのウィジェットテスト', (WidgetTester tester) async {
    // Arrange
    var wasPressed = false;
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CustomButton(
            label: 'Test Button',
            onPressed: () {
              wasPressed = true;
            },
          ),
        ),
      ),
    );

    // Act
    await tester.tap(find.text('Test Button'));
    await tester.pump(); // ウィジェットをリビルド

    // Assert
    expect(wasPressed, isTrue); // ボタンが押されたかどうかを確認
  });
}
