import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:theming/features/presentation/constants/theme_data.dart';

class ThemeSetting extends ChangeNotifier {
  ThemeSetting(bool isDark) {
    if (isDark) {
      _currentTheme = ThemePreferencesImpl().dark;
    } else {
      _currentTheme = ThemePreferencesImpl().light;
    }
  }

  var _currentTheme = ThemePreferencesImpl().light;
  ThemeData get currentTheme => _currentTheme;
  bool dark = false;

  void toggleTheme() async {
    SharedPreferences sp = await SharedPreferences.getInstance();

    if (dark) {
      _currentTheme = ThemePreferencesImpl().dark;
      sp.setBool("is_dark", true);
    } else {
      _currentTheme = ThemePreferencesImpl().light;
      sp.setBool("is_dark", false);
    }
    notifyListeners();
  }
}
