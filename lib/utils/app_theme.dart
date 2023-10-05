import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      fontFamily: "Gilroy",
      scaffoldBackgroundColor: AppColors.white,
      primaryColor: AppColors.primaryColor,
      appBarTheme: AppBarTheme(
          centerTitle: true,
          iconTheme: const IconThemeData(
            color: Color(0xFF202020),
          ),
          titleTextStyle: const TextStyle(
            color: Color(0xFF202020),
            fontSize: 16.5,
          ),
          titleSpacing: 1.5,
          backgroundColor: AppColors.white,
          elevation: 0),
    );
  }
}

class AppColors {
  AppColors._();

  static Color primaryColor = const Color(0xFF5647EB);
  static Color white = const Color(0xFFFFFFFF);
  static Color offWhite = const Color(0xFFF3F5F7);
  static Color black = const Color(0xFf232949);
}

class AppTextStyles {
  AppTextStyles._();

  static TextStyle splash = TextStyle(
    color: AppColors.white,
    fontSize: 24,
    fontFamily: "Gilroy",
    fontWeight: FontWeight.w700,
  );
}
