import 'package:flutter/material.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class SettingsLiveDataModel with ChangeNotifier {
  Locale displayLanguage = Constants.localeEnglish;

  void setArabicLanguage() {
    displayLanguage = Constants.localeArabic;
    notifyListeners();
  }

  void setFrenchLanguage() {
    displayLanguage = Constants.localeFrench;
    notifyListeners();
  }

  void setEnglishLanguage() {
    displayLanguage = Constants.localeEnglish;
    notifyListeners();
  }

  void setDisplayLanguage(Locale locale) {
    displayLanguage = locale;
    notifyListeners();
  }
}
