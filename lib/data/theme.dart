import 'package:flutter/material.dart';

class Themes extends ChangeNotifier{
  bool isdark=false;

  void toglle(){
    isdark=!isdark;
    notifyListeners();
  }
}