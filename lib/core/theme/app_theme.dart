import 'package:flutter/material.dart';

class AppColors {
  // Vibrant Modern Palette
  static const Color vibrantPrimary = Color(0xFFFF4081);
  static const Color vibrantSecondary = Color(0xFF00E5FF);
  static const Color vibrantAccent = Color(0xFFFFD600);
  static const Color vibrantBackground = Color(0xFFF5F5F5);
  static const Color vibrantSurface = Colors.white;

  // Sophisticated Dark Palette
  static const Color darkPrimary = Color(0xFFBB86FC);
  static const Color darkSecondary = Color(0xFF03DAC6);
  static const Color darkAccent = Color(0xFFFFB74D);
  static const Color darkBackground = Color(0xFF121212);
  static const Color darkSurface = Color(0xFF1E1E1E);
}

class AppThemes {
  static ThemeData get vibrantTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.light(
        primary: AppColors.vibrantPrimary,
        secondary: AppColors.vibrantSecondary,
        surface: AppColors.vibrantSurface,
        background: AppColors.vibrantBackground,
      ),
      scaffoldBackgroundColor: AppColors.vibrantBackground,
      cardTheme: CardTheme(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 2,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.dark(
        primary: AppColors.darkPrimary,
        secondary: AppColors.darkSecondary,
        surface: AppColors.darkSurface,
        background: AppColors.darkBackground,
      ),
      scaffoldBackgroundColor: AppColors.darkBackground,
      cardTheme: CardTheme(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 2,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        ),
      ),
    );
  }
}
