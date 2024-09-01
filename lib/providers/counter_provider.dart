// lib/providers/counter_provider.dart
import 'package:flutter/material.dart';
import '../models/counter.dart';

class CounterProvider extends ChangeNotifier {
  final Counter _counter = Counter();

  int get counter => _counter.count;

  void increment() {
    _counter.increment();
    notifyListeners(); // 値の変更を通知
  }
}
