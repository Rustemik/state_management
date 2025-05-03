import 'package:flutter/material.dart';

class CounterModel with ChangeNotifier {
  int count = 0;

  void inc() {
    count++;
    notifyListeners();
  }
}
