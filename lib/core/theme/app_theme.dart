import 'package:flutter/material.dart';
import 'package:online_exam_app/core/theme/app_colors.dart';

abstract class AppTheme {
  static ThemeData getTheme(ColorScheme colorScheme) {
    return ThemeData(
      colorScheme: colorScheme,
      textTheme:
          TextTheme(
            bodyLarge: TextStyle(color: AppColors.black[0]!),
            bodyMedium: TextStyle(color: AppColors.black[0]!),
            bodySmall: TextStyle(color: AppColors.black[0]!),
            titleLarge: TextStyle(color: AppColors.black[0]!),
            titleMedium: TextStyle(color: AppColors.black[0]!),
            titleSmall: TextStyle(color: AppColors.black[0]!),
            labelLarge: TextStyle(color: AppColors.black[0]!),
            labelMedium: TextStyle(color: AppColors.black[0]!),
            labelSmall: TextStyle(color: AppColors.black[0]!),
            displayLarge: TextStyle(color: AppColors.black[0]!),
            displayMedium: TextStyle(color: AppColors.black[0]!),
            displaySmall: TextStyle(color: AppColors.black[0]!),
            headlineLarge: TextStyle(color: AppColors.black[0]!),
            headlineMedium: TextStyle(color: AppColors.black[0]!),
            headlineSmall: TextStyle(color: AppColors.black[0]!),
          ).apply(
            bodyColor: AppColors.black[0]!,
            displayColor: AppColors.black[0]!,
          ),
    );
  }
  static ThemeData lightTheme = getTheme(
    ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.blue[0]!,
      onPrimary: AppColors.white,
      secondary: AppColors.black,
      onSecondary: Colors.white,
      error: AppColors.red,
      onError: Colors.white,
      surface: Colors.white,
      onSurface: Colors.blue,
    ),
  );
}
