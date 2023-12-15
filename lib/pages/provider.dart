import 'package:flutter/material.dart';

import '../config/global.params.dart';

class LanguageProvider extends ChangeNotifier {
  Locale _locale = Locale('en', 'US'); // Langue par défaut

  Locale get locale => _locale;

  void changeLanguage(Locale locale) {
    _locale = locale;
    notifyListeners();
  }
}



