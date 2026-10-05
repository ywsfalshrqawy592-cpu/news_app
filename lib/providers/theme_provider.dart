import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
  //attributes
  ThemeMode themeMode = ThemeMode.dark;

  //methods
  void changeTheme(ThemeMode newTheme){
    if(themeMode==newTheme)return;
    themeMode=newTheme;
    notifyListeners();
  }
  bool isDark(){
    return themeMode==ThemeMode.dark;
  }
}