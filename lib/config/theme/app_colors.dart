import 'package:flutter/material.dart';

class AppColors {
  // Primary Colors
  static const Color primary = Color(0xFF2D5F4F); // Deep Green
  static const Color primaryLight = Color(0xFF4A7C68); // Light Green
  static const Color primaryLighter = Color(0xFFE8F1EC); // Very Light Green

  // Secondary Colors
  static const Color secondary = Color(0xFFF5A623); // Warm Orange
  static const Color secondaryLight = Color(0xFFFFD699); // Light Orange
  static const Color secondaryLighter = Color(0xFFFFF5E6); // Very Light Orange

  // Neutral Colors
  static const Color background = Color(0xFFFAFBFC); // Off White
  static const Color surface = Color(0xFFFFFFFF); // Pure White
  static const Color surfaceVariant = Color(0xFFF5F5F5); // Light Gray

  // Text Colors
  static const Color textPrimary = Color(0xFF1F1F1F); // Dark Gray
  static const Color textSecondary = Color(0xFF666666); // Medium Gray
  static const Color textTertiary = Color(0xFF999999); // Light Gray
  static const Color textInverse = Color(0xFFFFFFFF); // White

  // Status Colors
  static const Color success = Color(0xFF4CAF50); // Green
  static const Color error = Color(0xFFEF5350); // Red
  static const Color warning = Color(0xFFFFC107); // Amber
  static const Color info = Color(0xFF2196F3); // Blue

  // Border Colors
  static const Color borderPrimary = Color(0xFFDDDDDD); // Light Border
  static const Color borderSecondary = Color(0xFFEEEEEE); // Lighter Border

  // Shadows
  static const Color shadowColor = Color(0x0D000000); // Subtle Shadow

  // Gradient Colors
  static const List<Color> primaryGradient = [Color(0xFF2D5F4F), Color(0xFF4A7C68)];

  static const List<Color> secondaryGradient = [Color(0xFFF5A623), Color(0xFFFFD699)];

  // Utility method for opacity
  static Color withOpacity(Color color, double opacity) {
    return color.withOpacity(opacity);
  }
}
