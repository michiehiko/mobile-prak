import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Colors.blue;
  static const Color textPrimaryColor = Colors.black87;
  static const Color textSecondaryColor = Colors.black54;
  static const Color successColor = Colors.green;
  static const Color errorColor = Colors.red;

  static final ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.grey[50],
    colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
    useMaterial3: true,
  );

  static final ThemeData darkTheme = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.grey[900],
    colorScheme: ColorScheme.fromSeed(
      seedColor: primaryColor,
      brightness: Brightness.dark,
    ),
    useMaterial3: true,
  );
}