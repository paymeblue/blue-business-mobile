import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData light() {
    return ThemeData(
        brightness: Brightness.light,
        primaryColor: AppColors.primary,
        primarySwatch: AppColors.primary,
        scaffoldBackgroundColor: AppColors.white,
        tooltipTheme: TooltipThemeData(
          textStyle: AppTextStyles.smallText,
        ));
  }

  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: AppColors.primary,
      primarySwatch: AppColors.primary,
      scaffoldBackgroundColor: AppColors.dark,
    );
  }
}
