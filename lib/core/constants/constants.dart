import 'package:flutter/material.dart';

class AppConstants {
  // App Info
  static const String appName = 'Dashboard Mahasiswa D4TI';
  static const String appVersion = '1.0.0';

  // Keys
  static const String userPrefsKey = 'user_prefs';

  // Spacing
  static const double paddingSmall = 8.0;
  static const double paddingMedium = 16.0;
  static const double paddingLarge = 24.0;

  // Border Radius
  static const double radiusSmall = 8.0;
  static const double radiusMedium = 12.0;
  static const double radiusLarge = 16.0;

  // Dashboard Gradient Colors
  // (Warna anget: Sunset, Rose, Coral, Amber)
  static const List<List<Color>> dashboardGradients = [
    [Color(0xFFFF7E5F), Color(0xFFFEB47B)], // Pengganti Purple
    [Color(0xFFFA709A), Color(0xFFFEE140)], // Pengganti Pink
    [Color(0xFFFF512F), Color(0xFFDD2476)], // Pengganti Blue
    [Color(0xFFFAD961), Color(0xFFF76B1C)], // Pengganti Green
  ];

  // Individual Gradient Colors (Sesuai nama di modul tapi warna beda)
  static const List<Color> gradientPurple = [
    Color(0xFFFF7E5F),
    Color(0xFFFEB47B),
  ];

  static const List<Color> gradientPink = [
    Color(0xFFFA709A),
    Color(0xFFFEE140),
  ];

  static const List<Color> gradientBlue = [
    Color(0xFFFF512F),
    Color(0xFFDD2476),
  ];

  static const List<Color> gradientGreen = [
    Color(0xFFFAD961),
    Color(0xFFF76B1C),
  ];
}