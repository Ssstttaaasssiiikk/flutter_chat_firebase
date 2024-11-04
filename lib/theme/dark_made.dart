import 'package:chat_flutter_firebase/theme/colors.dart';
import 'package:flutter/material.dart';

ThemeData darkMode = ThemeData(
  scaffoldBackgroundColor: AppColors.bgDarkMode,
  colorScheme: ColorScheme.dark(
    surface: Colors.grey.shade900,
    primary: Colors.grey.shade600,
    secondary: Colors.grey.shade700,
    tertiary: Colors.grey.shade800,
    inversePrimary: Colors.grey.shade300,
  ),
  textTheme: const TextTheme(
    titleMedium: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: AppColors.white,
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: AppColors.white,
    ),
    bodySmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: AppColors.white,
    ),
    labelSmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: AppColors.white,
    ),
  ),
);
