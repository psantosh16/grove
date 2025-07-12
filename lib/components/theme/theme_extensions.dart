import 'package:flutter/material.dart';
import 'custom_color_scheme.dart';

/// Extension on BuildContext to easily access custom colors
extension CustomColorSchemeContext on BuildContext {
  /// Access the custom color scheme
  CustomColorScheme get colorScheme {
    final customColorScheme = Theme.of(this).extension<CustomColorScheme>();
    if (customColorScheme == null) {
      throw Exception('CustomColorScheme not found in theme. Make sure to add it to your ThemeData.');
    }
    return customColorScheme;
  }
}

/// Extension on ThemeData to easily add custom color scheme
extension ThemeDataExtension on ThemeData {
  /// Create a copy of this theme with custom color scheme
  ThemeData withCustomColorScheme(CustomColorScheme customColorScheme) {
    return copyWith(
      extensions: [
        ...extensions.values,
        customColorScheme,
      ],
    );
  }
}
