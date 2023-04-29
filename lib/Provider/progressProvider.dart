import 'package:flutter/material.dart';

class progressProvider with ChangeNotifier {
  int _progress = 0;

  int get progress => _progress;

  void changeProgress(value) {
    _progress = value;
    notifyListeners();
  }
}
