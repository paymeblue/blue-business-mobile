import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle header = const TextStyle(
      fontFamily: AppFonts.satoshi,
      fontSize: 23.5,
      fontWeight: FontWeight.w600,
      color: AppColors.textColor);

  static TextStyle semiLargeHeader = const TextStyle(
      fontFamily: AppFonts.satoshi,
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: AppColors.textColor);

  static TextStyle midHeader = const TextStyle(
      fontFamily: AppFonts.satoshi,
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: AppColors.bodyTextColor);

  static TextStyle smallHeader = const TextStyle(
      fontFamily: AppFonts.satoshi,
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: AppColors.bodyTextColor);

  static TextStyle numberButton = const TextStyle(
      fontSize: 31.5,
      fontFamily: AppFonts.satoshi,
      fontWeight: FontWeight.w700,
      color: AppColors.textColor);

  static TextStyle subHeader = const TextStyle(
    fontSize: 16.5,
    fontFamily: AppFonts.satoshi,
    letterSpacing: -0.02,
    fontWeight: FontWeight.w500,
    color: AppColors.bodyTextColor,
  );

  static TextStyle textField = const TextStyle(
    fontSize: 17.5,
    fontFamily: AppFonts.satoshi,
    fontWeight: FontWeight.w600,
    color: AppColors.textColor,
  );

  static TextStyle disabledTextField = const TextStyle(
    fontSize: 17.5,
    fontFamily: AppFonts.satoshi,
    fontWeight: FontWeight.w400,
    color: AppColors.textColor,
  );

  static TextStyle indicatorText = const TextStyle(
      fontSize: 16.5, fontFamily: AppFonts.satoshi, color: AppColors.primary);

  static TextStyle subText = const TextStyle(
      fontSize: 15.5,
      fontFamily: AppFonts.satoshi,
      color: AppColors.bodyTextColor,
      fontWeight: FontWeight.w500);

  static TextStyle smallButtonText = const TextStyle(
      fontSize: 15.5,
      fontFamily: AppFonts.satoshi,
      fontWeight: FontWeight.w500,
      color: AppColors.primary);

  static TextStyle smallText = const TextStyle(
      fontSize: 13.5,
      fontFamily: AppFonts.satoshi,
      fontWeight: FontWeight.w400,
      color: AppColors.offWhite);

  static TextStyle largeButtonText = const TextStyle(
      fontSize: 17.5,
      fontFamily: AppFonts.satoshi,
      fontWeight: FontWeight.w500,
      color: AppColors.primary);

  static TextStyle receiptFieldTitle = const TextStyle(
    fontSize: 13.5,
    color: AppColors.bodyTextColor,
    fontWeight: FontWeight.w400,
    fontFamily: "GT Walsheim Pro",
  );
  static TextStyle receiptFieldbody = const TextStyle(
    fontSize: 14.5,
    color: AppColors.textColor,
    fontWeight: FontWeight.w400,
    fontFamily: "GT Walsheim Pro",
  );
}
