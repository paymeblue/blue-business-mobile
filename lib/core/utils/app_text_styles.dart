import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle header = TextStyle(
      fontFamily: AppFonts.satoshi,
      fontSize: 23.sp,
      fontWeight: FontWeight.w600,
      color: AppColors.textColor);

  static TextStyle semiLargeHeader = TextStyle(
      fontFamily: AppFonts.satoshi,
      fontSize: 20.sp,
      fontWeight: FontWeight.w500,
      color: AppColors.textColor);

  static TextStyle midHeader = TextStyle(
      fontFamily: AppFonts.satoshi,
      fontSize: 18.sp,
      fontWeight: FontWeight.w500,
      color: AppColors.bodyTextColor);

  static TextStyle smallHeader = TextStyle(
      fontFamily: AppFonts.satoshi,
      fontSize: 15.sp,
      fontWeight: FontWeight.w500,
      color: AppColors.bodyTextColor);

  static TextStyle numberButton = TextStyle(
      fontSize: 31.sp,
      fontFamily: AppFonts.satoshi,
      fontWeight: FontWeight.w700,
      color: AppColors.textColor);

  static TextStyle subHeader = TextStyle(
    fontSize: 16.sp,
    fontFamily: AppFonts.satoshi,
    letterSpacing: -0.02,
    fontWeight: FontWeight.w500,
    color: AppColors.bodyTextColor,
  );

  static TextStyle textField = TextStyle(
    fontSize: 17.sp,
    fontFamily: AppFonts.satoshi,
    fontWeight: FontWeight.w600,
    color: AppColors.textColor,
  );

  static TextStyle disabledTextField = TextStyle(
    fontSize: 17.sp,
    fontFamily: AppFonts.satoshi,
    fontWeight: FontWeight.w400,
    color: AppColors.textColor,
  );

  static TextStyle indicatorText = TextStyle(
      fontSize: 16.sp, fontFamily: AppFonts.satoshi, color: AppColors.primary);

  static TextStyle subText = TextStyle(
      fontSize: 15.sp,
      fontFamily: AppFonts.satoshi,
      color: AppColors.bodyTextColor,
      fontWeight: FontWeight.w500);

  static TextStyle smallButtonText = TextStyle(
      fontSize: 15.sp,
      fontFamily: AppFonts.satoshi,
      fontWeight: FontWeight.w500,
      color: AppColors.primary);

  static TextStyle smallText = TextStyle(
      fontSize: 13.sp,
      fontFamily: AppFonts.satoshi,
      fontWeight: FontWeight.w400,
      color: AppColors.offWhite);

  static TextStyle largeButtonText = TextStyle(
      fontSize: 17.sp,
      fontFamily: AppFonts.satoshi,
      fontWeight: FontWeight.w500,
      color: AppColors.primary);

  static TextStyle receiptFieldTitle = TextStyle(
    fontSize: 13.sp,
    color: AppColors.bodyTextColor,
    fontWeight: FontWeight.w400,
    fontFamily: "GT Walsheim Pro",
  );
  static TextStyle receiptFieldbody = TextStyle(
    fontSize: 14.sp,
    color: AppColors.textColor,
    fontWeight: FontWeight.w400,
    fontFamily: "GT Walsheim Pro",
  );
}
