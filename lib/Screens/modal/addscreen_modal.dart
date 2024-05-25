import 'dart:io';

import 'package:flutter/material.dart';

class ListModal{
  File? img;
  String name;
  String number;
  String chats;
  DateTime dateTime;
  TimeOfDay timeOfDay;

  ListModal({required this.img,required this.name,required this.chats,required this.number,required this.timeOfDay,required this.dateTime});
}