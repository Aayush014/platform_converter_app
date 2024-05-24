import 'package:flutter/material.dart';

class PlatformProvider extends ChangeNotifier {
  bool isSwitch = true;

  void PlatformSwitch(bool value) {
    isSwitch = value;
    notifyListeners();
  }
}