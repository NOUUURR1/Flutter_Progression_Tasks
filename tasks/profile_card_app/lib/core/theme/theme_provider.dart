import 'package:flutter/material.dart';
import 'app_theme.dart'; 

class ThemeProvider extends ChangeNotifier {
  bool isDarkMode = true;
  ThemeData get currentTheme => isDarkMode ? AppTheme.dark : AppTheme.light;
  void toggleTheme() {
    isDarkMode = !isDarkMode; 
    notifyListeners(); 
  }
}