import 'package:flutter/material.dart';

class StateController extends ChangeNotifier {
  bool isChanged = true;

  void onChanged(bool newValue) {
    isChanged = newValue;

    notifyListeners();
  }
}
