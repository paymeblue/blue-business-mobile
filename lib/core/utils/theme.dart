import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/gen/fonts.gen.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  AppTheme._();

  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: AppColors.primary,
      primarySwatch: AppColors.primary,
      scaffoldBackgroundColor: AppColors.white,
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontFamily: AppFonts.neueMontreal,
          fontSize: 26.sp,
          height: 100.percentToLineHeight(26),
          letterSpacing: -3.percentToLetterSpacing(26),
          fontWeight: FontWeight.w700,
          color: AppColors.pumpPriceheaderText,
        ),
        titleMedium: TextStyle(
          fontFamily: AppFonts.neueMontreal,
          fontSize: 22.sp,
          height: 100.percentToLineHeight(22),
          letterSpacing: 0.percentToLetterSpacing(22),
          fontWeight: FontWeight.w500,
          color: AppColors.pumpPriceheaderText,
        ),
        titleSmall: TextStyle(
          fontFamily: AppFonts.neueMontreal,
          fontSize: 16.sp,
          height: 100.percentToLineHeight(16),
          letterSpacing: 0.percentToLetterSpacing(16),
          fontWeight: FontWeight.w500,
          color: AppColors.pumpPriceheaderText,
        ),
        displaySmall: TextStyle(
          fontFamily: AppFonts.neueMontreal,
          fontSize: 11.sp,
          height: 100.percentToLineHeight(11),
          letterSpacing: 1.percentToLetterSpacing(11),
          fontWeight: FontWeight.w400,
          color: AppColors.pumpPricegreyText,
        ),
        bodyLarge: TextStyle(
          fontFamily: AppFonts.neueMontreal,
          fontSize: 14.sp,
          height: 100.percentToLineHeight(13),
          letterSpacing: 0.percentToLetterSpacing(13),
          fontWeight: FontWeight.w500,
          color: AppColors.pumpPriceheaderText,
        ),
        bodyMedium: TextStyle(
          fontFamily: AppFonts.neueMontreal,
          fontSize: 13.sp,
          height: 100.percentToLineHeight(13),
          letterSpacing: 0.percentToLetterSpacing(13),
          fontWeight: FontWeight.w400,
          color: AppColors.pumpPricegreyText,
        ),
      ),
    );
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
