import 'package:flutter/material.dart';
import 'app_theme.dart';

class ThemeService with ChangeNotifier {
  ThemeData _currentTheme = AppThemes.vibrantTheme;
  bool _isDarkMode = false;

  ThemeData get currentTheme => _currentTheme;
  bool get isDarkMode => _isDarkMode;

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    _currentTheme = _isDarkMode ? AppThemes.darkTheme : AppThemes.vibrantTheme;
    notifyListeners();
  }

  void setTheme(bool isDark) {
    _isDarkMode = isDark;
    _currentTheme = isDark ? AppThemes.darkTheme : AppThemes.vibrantTheme;
    notifyListeners();
  }
}
