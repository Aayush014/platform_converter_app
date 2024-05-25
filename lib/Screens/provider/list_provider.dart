import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../modal/addscreen_modal.dart';

class AddListProvider extends ChangeNotifier{

  final picker = ImagePicker();

  File? image;

  List<ListModal> list = [];

  DateTime dateTime = DateTime.now();
  TimeOfDay timeOfDay = TimeOfDay.now();

  TextEditingController txtname = TextEditingController();
  TextEditingController txtnumber = TextEditingController();
  TextEditingController txtmsg = TextEditingController();

  Future addImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      image = File(pickedFile.path);
    }
    notifyListeners();
  }


  void addlist(ListModal listModal)
  {
    list.add(listModal);
    log(list.length);
    notifyListeners();
  }

  DateTime time=DateTime.now();
  void DatePicker(value){
    time=value!;
    notifyListeners();
  }

  TimeOfDay Time=TimeOfDay(hour: TimeOfDay.hoursPerDay, minute: TimeOfDay.minutesPerHour);
  void TimePicker(value){
    Time=value!;
    notifyListeners();
  }
}