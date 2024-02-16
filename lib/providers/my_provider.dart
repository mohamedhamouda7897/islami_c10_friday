import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  String languageCode = "en";
  ThemeMode myTheme = ThemeMode.light;

  changeLanguage(String code) {
    languageCode = code;
    notifyListeners();
  }

  changeTheme(ThemeMode mode) {
    myTheme = mode;
    notifyListeners();
  }

  String getBackgroundImagePath(){
    if(myTheme==ThemeMode.light){
      return"assets/images/bg.png";
    }else{
      return"assets/images/bg_dark.png";
    }
  }
}
