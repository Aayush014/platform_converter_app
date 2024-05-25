import 'package:flutter/cupertino.dart';

class ChangeOs extends ChangeNotifier{
  bool isTrue=true;
  void change(bool value){
    isTrue=value;
    notifyListeners();

  }
}