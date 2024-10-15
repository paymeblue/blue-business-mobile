import 'package:another_flushbar/flushbar.dart';
import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/services/navigation_service.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppNotification {
  AppNotification._();

  static BuildContext context =
      locator<NavigationService>().navigatorKey.currentContext!;
  static success({required message}) {
    Flushbar flush = Flushbar(
      shouldIconPulse: true,
      isDismissible: true,
      boxShadows: kElevationToShadow[3],
      mainButton: 0.horizontalGap,
      messageText: Text(
        message,
        style: AppTextStyles.subText
            .copyWith(fontSize: 14.sp, color: AppColors.textColor),
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
          child: AppAssets.images.icons.success.svg()),
      duration: const Duration(milliseconds: 6000),
      animationDuration: const Duration(milliseconds: 1000),
    );

    return flush.show(context);
  }

  static error({required message}) {
    Flushbar flush = Flushbar(
      shouldIconPulse: true,
      isDismissible: true,
      mainButton: 0.horizontalGap,
      messageText: Text(
        message ?? "Something went wrong. Please try again later.",
        style: AppTextStyles.subText
            .copyWith(fontSize: 14.sp, color: AppColors.textColor),
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
            child: const Icon(
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

  static warning({required message}) {
    Flushbar flush = Flushbar(
      shouldIconPulse: true,
      isDismissible: true,
      mainButton: 0.horizontalGap,
      messageText: Text(
        message,
        style: AppTextStyles.subText
            .copyWith(fontSize: 14.sp, color: AppColors.textColor),
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
        child: AppAssets.images.icons.warning.svg(),
      ),
      duration: const Duration(milliseconds: 6000),
      animationDuration: const Duration(milliseconds: 350),
    );

    return flush.show(context);
  }

  static notification({required title, required message}) {
    Flushbar flush = Flushbar(
      shouldIconPulse: true,
      isDismissible: true,
      mainButton: 0.horizontalGap,
      boxShadows: kElevationToShadow[3],
      titleText: Text(
        title,
        style: AppTextStyles.subText.copyWith(
          color: AppColors.textColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      messageText: Text(
        message,
        style: AppTextStyles.subText
            .copyWith(fontSize: 14.sp, color: AppColors.textColor),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 21.5, vertical: 6),
      borderColor: AppColors.midGrey,
      backgroundColor: AppColors.white,
      flushbarPosition: FlushbarPosition.TOP,
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
      borderRadius: BorderRadius.circular(6),
      icon: AppAssets.images.icons.aboutBlue.image(
        fit: BoxFit.scaleDown,
        height: 35,
        width: 35,
      ),
      duration: const Duration(milliseconds: 6000),
      animationDuration: const Duration(milliseconds: 1000),
    );

    return flush.show(context);
  }

  static message({required title, required message}) {
    Flushbar flush = Flushbar(
      shouldIconPulse: true,
      isDismissible: true,
      mainButton: 0.horizontalGap,
      boxShadows: kElevationToShadow[3],
      titleText: Text(
        title,
        style: AppTextStyles.subText.copyWith(
          color: AppColors.textColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      messageText: Text(
        message,
        style: AppTextStyles.subText
            .copyWith(fontSize: 14.sp, color: AppColors.textColor),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 21.5, vertical: 6),
      borderColor: AppColors.midGrey,
      backgroundColor: AppColors.white,
      flushbarPosition: FlushbarPosition.TOP,
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
      borderRadius: BorderRadius.circular(6),
      icon: AppAssets.images.notificationMessage.image(
        fit: BoxFit.scaleDown,
        height: 35,
        width: 35,
      ),
      duration: const Duration(milliseconds: 6000),
      animationDuration: const Duration(milliseconds: 1000),
    );

    return flush.show(context);
  }
}
