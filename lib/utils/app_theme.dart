import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      fontFamily: "Gilroy",
      scaffoldBackgroundColor: AppColors.white,
      primaryColor: AppColors.primaryColor,
      primaryColorLight: AppColors.brightBlue,
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
          backgroundColor: AppColors.offWhite,
          elevation: 0),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      brightness: Brightness.dark,
      fontFamily: "Gilroy",
      scaffoldBackgroundColor: const Color(0xFF202020),
      primaryColor: const Color(0xFF16A6E9),
      primaryColorLight: const Color(0xFF3891CA),
      appBarTheme: AppBarTheme(
          centerTitle: true,
          iconTheme: IconThemeData(
            color: AppColors.offWhite,
          ),
          titleTextStyle: TextStyle(
            color: AppColors.offWhite,
            fontSize: 16.5,
          ),
          titleSpacing: 1.5,
          backgroundColor: const Color(0xFF202020),
          elevation: 0),
    );
  }
}

class AppColors {
  AppColors._();

  static Color primaryColor = const Color(0xFF4341CD);
  static Color white = const Color(0xFFFFFFFF);
  static Color offWhite = const Color(0xFFFEFEFE);
  static Color grey = const Color(0xFFF7F7FA);
  static Color bgGrey = const Color(0xFFEAEAFE);
  static Color midGrey = const Color(0xFFE5E6E8);
  static Color textcolor = const Color(0xFF232949);
  static Color bodyTextcolor = const Color(0xFF666B7E);
  static Color bodyTextcolor2 = const Color(0xFF32374E);
  static Color promptTextColor = const Color(0xFF2FB9AC);
  static Color success = const Color(0xFF2FB9AC);
  static Color error = const Color(0xFFEF2A5A);
  static Color info = const Color(0xFFF6FAFE);
  static Color brightBlue = const Color(0xFF807FF3);
  static Color accentGreen = const Color(0xFFF6FEFA);
  static Color green = const Color(0xFF039C53);
  static Color bg = const Color(0xFFF5F7FD);
  static Color dark = const Color(0xFF181D36);
  static Color accountLogoBg = const Color(0xFFF9E9DC);
  static Color otherBlue = const Color(0xFF3095F7);
}

class AppTextStyles {
  AppTextStyles._();

  static TextStyle header = TextStyle(
    fontFamily: "Gilroy",
    fontSize: 23,
    fontWeight: FontWeight.w600,
    color: AppColors.textcolor,
  );

  static TextStyle header2 = TextStyle(
    fontFamily: "Gilroy",
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.textcolor,
  );

  static TextStyle numberButton = TextStyle(
      fontSize: 31,
      fontFamily: "Gilroy",
      fontWeight: FontWeight.w700,
      color: AppColors.textcolor);

  static TextStyle subHeader = TextStyle(
    fontSize: 16,
    fontFamily: "Gilroy",
    letterSpacing: -0.02,
    fontWeight: FontWeight.w500,
    color: AppColors.bodyTextcolor,
  );

  static TextStyle textField = TextStyle(
    fontSize: 17,
    fontFamily: "Gilroy",
    fontWeight: FontWeight.w600,
    color: AppColors.textcolor,
  );

  static TextStyle disabledTextField = TextStyle(
    fontSize: 17,
    fontFamily: "Gilroy",
    fontWeight: FontWeight.w400,
    color: AppColors.textcolor,
  );

  static TextStyle indicatorText = TextStyle(
      fontSize: 16, fontFamily: "Gilroy", color: AppColors.primaryColor);

  static TextStyle subText = TextStyle(
      fontSize: 15,
      fontFamily: "Gilroy",
      color: AppColors.bodyTextcolor,
      fontWeight: FontWeight.w500);

  static TextStyle smallButtonText = TextStyle(
      fontSize: 15,
      fontFamily: "Gilroy",
      fontWeight: FontWeight.w500,
      color: AppColors.primaryColor);

  static TextStyle smallText = TextStyle(
      fontSize: 13,
      fontFamily: "Gilroy",
      fontWeight: FontWeight.w400,
      color: AppColors.offWhite);

  static TextStyle largeButtonText = TextStyle(
      fontSize: 17,
      fontFamily: "Gilroy",
      fontWeight: FontWeight.w500,
      color: AppColors.primaryColor);
}
