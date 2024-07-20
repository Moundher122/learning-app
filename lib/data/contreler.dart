import 'package:flutter/material.dart';

class Contr extends ChangeNotifier {
  String email='';
  String password='';

  void emailpass(String m,String s){
   email=m;
   password=s;
   notifyListeners();
  }
}