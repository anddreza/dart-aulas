import 'package:flutter/material.dart';
//responsável por mudar para troca noturna o app
class AppController extends ChangeNotifier{
  
  static AppController instance =  AppController();
  
  bool isDartTheme = false;
    changeTheme(){
      isDartTheme = !isDartTheme;
      notifyListeners();  
    }
}

