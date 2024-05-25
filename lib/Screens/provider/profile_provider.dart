import 'package:flutter/widgets.dart';

class ProfileProvider extends ChangeNotifier{
  bool show=false;
  void showProfile(bool value)
  {
    show= value;
    notifyListeners();
  }
}