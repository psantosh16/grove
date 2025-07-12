import 'package:flutter/material.dart';
import 'app_color.dart';

/// Custom color scheme extension that adds additional colors to Flutter's ColorScheme
class CustomColorScheme extends ThemeExtension<CustomColorScheme> {
  const CustomColorScheme({
    required this.scaffoldLight,
    required this.oneGrey,
    required this.twoGrey,
    required this.oneWhite,
    required this.textDark,
    required this.accentGreen,
    required this.accentOrange,
    required this.accentLightBlue,
  });

  final Color scaffoldLight;
  final Color oneGrey;
  final Color twoGrey;
  final Color oneWhite;
  final Color textDark;
  final Color accentGreen;
  final Color accentOrange;
  final Color accentLightBlue;

  @override
  CustomColorScheme copyWith({
    Color? scaffoldLight,
    Color? oneGrey,
    Color? twoGrey,
    Color? oneWhite,
    Color? textDark,
    Color? accentGreen,
    Color? accentOrange,
    Color? accentLightBlue,
  }) {
    return CustomColorScheme(
      scaffoldLight: scaffoldLight ?? this.scaffoldLight,
      oneGrey: oneGrey ?? this.oneGrey,
      twoGrey: twoGrey ?? this.twoGrey,
      oneWhite: oneWhite ?? this.oneWhite,
      textDark: textDark ?? this.textDark,
      accentGreen: accentGreen ?? this.accentGreen,
      accentOrange: accentOrange ?? this.accentOrange,
      accentLightBlue: accentLightBlue ?? this.accentLightBlue,
    );
  }

  @override
  CustomColorScheme lerp(ThemeExtension<CustomColorScheme>? other, double t) {
    if (other is! CustomColorScheme) {
      return this;
    }
    return CustomColorScheme(
      scaffoldLight: Color.lerp(scaffoldLight, other.scaffoldLight, t)!,
      oneGrey: Color.lerp(oneGrey, other.oneGrey, t)!,
      twoGrey: Color.lerp(twoGrey, other.twoGrey, t)!,
      oneWhite: Color.lerp(oneWhite, other.oneWhite, t)!,
      textDark: Color.lerp(textDark, other.textDark, t)!,
      accentGreen: Color.lerp(accentGreen, other.accentGreen, t)!,
      accentOrange: Color.lerp(accentOrange, other.accentOrange, t)!,
      accentLightBlue: Color.lerp(accentLightBlue, other.accentLightBlue, t)!,
    );
  }

  /// Light theme color scheme
  static const light = CustomColorScheme(
    scaffoldLight: AppColor.scaffoldLight,
    oneGrey: AppColor.oneGrey,
    twoGrey: AppColor.twoGrey,
    oneWhite: AppColor.oneWhite,
    textDark: AppColor.textDark,
    accentGreen: AppColor.accentGreen,
    accentOrange: AppColor.accentOrange,
    accentLightBlue: AppColor.accentLightBlue,
  );

  /// Dark theme color scheme (you can customize these for dark mode)
  static const dark = CustomColorScheme(
    scaffoldLight: Color(0xFF1A1A1A), // Darker version for dark theme
    oneGrey: Color(0xFF2A2A2A),
    twoGrey: Color(0xFF3A3A3A),
    oneWhite: Color(0xFF0A0A0A),
    textDark: Color(0xFFE0E0E0), // Light text for dark theme
    accentGreen: AppColor.accentGreen,
    accentOrange: AppColor.accentOrange,
    accentLightBlue: Color(0xFF1A1D22),
  );
}
