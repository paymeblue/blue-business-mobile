import 'package:another_flushbar/flushbar.dart';
import 'package:blue_business/utils/app_images.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppNotification {
  AppNotification._();
  static Future<dynamic> success(
      {required message, required BuildContext context}) {
    Flushbar flush = Flushbar(
      shouldIconPulse: true,
      isDismissible: true,
      boxShadows: kElevationToShadow[3],
      messageText: Text(
        message,
        style: AppTextStyles.subText
            .copyWith(fontSize: 14.2, color: AppColors.textcolor),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 21.5, vertical: 12),
      borderColor: const Color(0xFF2FB9AC),
      backgroundColor: const Color(0xFFE6FCFA),
      flushbarPosition: FlushbarPosition.TOP,
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
      borderRadius: BorderRadius.circular(6),
      icon: Container(
          height: 36,
          width: 36,
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
              color: const Color(0xFF2FB9AC).withOpacity(.2),
              shape: BoxShape.circle),
          child: SvgPicture.asset(AppAssets.successIcon)),
      duration: const Duration(milliseconds: 6000),
      animationDuration: const Duration(milliseconds: 1000),
    );

    return flush.show(context);
  }

  static Future<dynamic> error(
      {required message, required BuildContext context}) {
    Flushbar flush = Flushbar(
      shouldIconPulse: true,
      isDismissible: true,
      messageText: Text(
        message ?? "Something went wrong. Please try again later.",
        style: AppTextStyles.subText
            .copyWith(fontSize: 14.2, color: AppColors.textcolor),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 21.5, vertical: 12),
      borderColor: const Color(0xFFEF2A5A),
      backgroundColor: const Color(0xFFFEE5E5),
      flushbarPosition: FlushbarPosition.TOP,
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 7),
      borderRadius: BorderRadius.circular(6),
      icon: Container(
          height: 36,
          width: 36,
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
              color: const Color(0xFFEF2A5A).withOpacity(.2),
              shape: BoxShape.circle),
          child: Container(
            decoration: const BoxDecoration(
                color: Color(0xFFEF2A5A), shape: BoxShape.circle),
            child: Icon(
              Icons.close,
              color: AppColors.white,
              size: 20,
            ),
          )),
      duration: const Duration(milliseconds: 6000),
      animationDuration: const Duration(milliseconds: 1000),
    );

    return flush.show(context);
  }

  static Future<dynamic> warning(
      {required message,
      required BuildContext context,
      String title = 'Info'}) {
    Flushbar flush = Flushbar(
      shouldIconPulse: true,
      isDismissible: true,
      messageText: Text(
        message,
        style: AppTextStyles.subText
            .copyWith(fontSize: 14.2, color: AppColors.textcolor),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 21.5, vertical: 12),
      borderColor: const Color(0xFFFF9601),
      backgroundColor: const Color(0xFFFFF9EC),
      flushbarPosition: FlushbarPosition.TOP,
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 7),
      borderRadius: BorderRadius.circular(4),
      icon: SizedBox(
        height: 36,
        width: 36,
        child: SvgPicture.asset(AppAssets.warningIcon),
      ),
      duration: const Duration(milliseconds: 6000),
      animationDuration: const Duration(milliseconds: 1000),
    );

    return flush.show(context);
  }

  static Future<dynamic> notification(
      {required title, required message, required BuildContext context}) {
    Flushbar flush = Flushbar(
      shouldIconPulse: true,
      isDismissible: true,
      boxShadows: kElevationToShadow[3],
      titleText: Text(
        title,
        style: AppTextStyles.subText.copyWith(
          color: AppColors.textcolor,
          fontWeight: FontWeight.w600,
        ),
      ),
      messageText: Text(
        message,
        style: AppTextStyles.subText
            .copyWith(fontSize: 14.2, color: AppColors.textcolor),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 21.5, vertical: 6),
      borderColor: AppColors.midGrey,
      backgroundColor: AppColors.white,
      flushbarPosition: FlushbarPosition.TOP,
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
      borderRadius: BorderRadius.circular(6),
      icon: Image.asset(
        AppAssets.aboutBlueIcon,
        fit: BoxFit.scaleDown,
        height: 35,
        width: 35,
      ),
      duration: const Duration(milliseconds: 6000),
      animationDuration: const Duration(milliseconds: 1000),
    );

    return flush.show(context);
  }

  // static Future<dynamic> message(
  //     {required title, required message, required BuildContext context}) {
  //   Flushbar flush = Flushbar(
  //     shouldIconPulse: true,
  //     isDismissible: true,
  //     boxShadows: kElevationToShadow[3],
  //     titleText: Text(
  //       title,
  //       style: AppTextStyles.subText.copyWith(
  //         color: AppColors.textcolor,
  //         fontWeight: FontWeight.w600,
  //       ),
  //     ),
  //     messageText: Text(
  //       message,
  //       style: AppTextStyles.subText
  //           .copyWith(fontSize: 14.2, color: AppColors.textcolor),
  //     ),
  //     padding: const EdgeInsets.symmetric(horizontal: 21.5, vertical: 6),
  //     borderColor: AppColors.midGrey,
  //     backgroundColor: AppColors.white,
  //     flushbarPosition: FlushbarPosition.TOP,
  //     margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
  //     borderRadius: BorderRadius.circular(6),
  //     icon: Image.asset(
  //       AppAssets.messageNotification,
  //       fit: BoxFit.scaleDown,
  //       height: 35,
  //       width: 35,
  //     ),
  //     duration: const Duration(milliseconds: 6000),
  //     animationDuration: const Duration(milliseconds: 1000),
  //   );

  //   return flush.show(context);
  // }
}
