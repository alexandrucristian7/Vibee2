import 'package:flutter/material.dart';

class AppTheme {
  static const Color neonGreen = Color(0xFF39FF14);
  static const Color neonPurple = Color(0xFFB026FF);
  static const Color darkBackground = Color(0xFF121212);
  static const Color charcoal = Color(0xFF1E1E1E);

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: darkBackground,
      colorScheme: const ColorScheme.dark(
        primary: neonGreen,
        onPrimary: Colors.black,
        secondary: neonPurple,
        onSecondary: Colors.white,
        surface: charcoal,
        onSurface: Colors.white,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: darkBackground,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: neonGreen,
          foregroundColor: Colors.black,
          textStyle: const TextStyle(fontWeight: FontWeight.bold),
          shape: RoundedRectangleManager.buttonShape,
        ),
      ),
    );
  }

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: neonGreen,
      colorScheme: ColorScheme.fromSeed(
        seedColor: neonGreen,
        brightness: Brightness.light,
      ),
    );
  }
}

class RoundedRectangleManager {
  static const double radius = 12.0;
  static RoundedRectangleBorder get buttonShape => RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      );
}
