// lib/models/my_model.dart
import 'package:flutter/material.dart';

class MyModel extends ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void increment() {
    _counter++;
    notifyListeners();
  }
}
