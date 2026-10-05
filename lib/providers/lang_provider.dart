import 'package:flutter/material.dart';

class LangProvider extends ChangeNotifier {
  String locale = 'en';

  void changeLanguage(String language) {
    if (locale == language) return;

    locale = language;
    notifyListeners();
  }

  bool isEnglish() {
    return locale == 'en';
  }

  bool isArabic() {
    return locale == 'ar';
  }
}