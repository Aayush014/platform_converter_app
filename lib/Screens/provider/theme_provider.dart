
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier
{
  bool isDark=false;

  void theme(bool value)
  {
    isDark=value;

    notifyListeners();
  }

}




