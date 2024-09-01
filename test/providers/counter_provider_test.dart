import 'package:flutter_test/flutter_test.dart';
import 'package:changenotifier_counter/providers/counter_provider.dart';

void main() {
  group('CounterProvider Tests', () {
    test('初期値が0であることを確認', () {
      // Arrange
      final counterProvider = CounterProvider();
      // Assert
      expect(counterProvider.counter, 0);
    });

    test('increment時、1になることを確認', () {
      // Arrange
      final counterProvider = CounterProvider();

      // Act
      counterProvider.increment();

      // Assert
      expect(counterProvider.counter, 1);
    });

    test('decrement時、-1になることを確認', () {
      // Arrange
      final counterProvider = CounterProvider();
      // Act
      counterProvider.decrement();

      // Assert
      expect(counterProvider.counter, -1);
    });
  });
}
