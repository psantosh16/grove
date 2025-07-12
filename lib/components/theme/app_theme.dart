import 'package:flutter/material.dart';
import 'custom_color_scheme.dart';
import 'theme_extensions.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFF01BD4D), // Using your accent green
        brightness: Brightness.light,
      ),
    ).withCustomColorScheme(CustomColorScheme.light);
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFF01BD4D), // Using your accent green
        brightness: Brightness.dark,
      ),
    ).withCustomColorScheme(CustomColorScheme.dark);
  }
}
