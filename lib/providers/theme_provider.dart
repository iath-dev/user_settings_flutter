import 'package:flutter/material.dart';
import 'package:user_settings/theme/theme.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData currentTheme;

  ThemeProvider({required bool isDarkMode})
      : currentTheme = isDarkMode ? AppTheme.darkTheme : AppTheme.theme;

  setLightMode() {
    currentTheme = AppTheme.theme;
    notifyListeners();
  }

  setDarkMode() {
    currentTheme = AppTheme.darkTheme;
    notifyListeners();
  }
}
