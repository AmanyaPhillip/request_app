import 'package:flutter/material.dart';

/// The Luxo Requests Material 3 theme (sophisticated black + luxury gold).
ThemeData buildAppTheme() {
  return ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFF1B1B1B), // Luxurious dark color
      brightness: Brightness.light,
    ).copyWith(
      primary: const Color(0xFF1B1B1B), // Sophisticated black
      secondary: const Color(0xFFD4AF37), // Luxury gold
      tertiary: const Color(0xFFF5F5F5), // Clean white/light gray
      surface: Colors.white,
      onSurface: const Color(0xFF1B1B1B),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF1B1B1B),
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFD4AF37),
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    cardTheme: CardThemeData(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: Color(0xFFE0E0E0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: Color(0xFFD4AF37), width: 2),
      ),
      filled: true,
      fillColor: const Color(0xFFFAFAFA),
    ),
  );
}
