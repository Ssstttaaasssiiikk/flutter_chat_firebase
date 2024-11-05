import 'package:chat_flutter_firebase/theme/colors.dart';
import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  scaffoldBackgroundColor: AppColors.white,
  colorScheme: ColorScheme.light(
    surface: AppColors.white,
    primary: AppColors.black,
    secondary: Colors.grey.shade200,
    tertiary: Colors.white,
    inversePrimary: Colors.grey.shade900,
  ),
  textTheme: const TextTheme(
    titleMedium: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: AppColors.black,
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: AppColors.black,
    ),
    bodySmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: AppColors.darkGrey,
    ),
    labelSmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: AppColors.darkGrey,
    ),
  ),
);
