import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color(0xFF1F2525),

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      foregroundColor: Colors.white70,
      iconTheme: IconThemeData(color: Colors.white70),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),

    iconTheme: const IconThemeData(color: Colors.white70),
    colorScheme: const ColorScheme.dark(
      primary: Colors.grey,
      secondary: Color(0xFF1F2525),
      onPrimary: Colors.black,
    ),

    cardTheme: CardThemeData(
      color: Colors.white10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),

    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: Color.fromARGB(248, 255, 255, 255),
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        color: Color.fromARGB(192, 255, 255, 255),
        fontSize: 14,
      ),
    ),
  );

  static ThemeData light = ThemeData(
    brightness: Brightness.light,

    scaffoldBackgroundColor: const Color(0xFF7784A4),

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      foregroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),

    iconTheme: const IconThemeData(color: Colors.white),

    colorScheme: const ColorScheme.light(
      primary: Color(0xFFBB9D99),
      secondary: Colors.white70,
      onPrimary: Colors.white,
    ),

    cardTheme: CardThemeData(
      // ignore: deprecated_member_use
      color: Colors.white.withOpacity(0.15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),

    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: Colors.brown,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(color: Colors.white, fontSize: 14),
    ),
  );
}
