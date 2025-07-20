import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oktoast/oktoast.dart';

class PumpPriceToast {
  PumpPriceToast._();

  static success({
    required String message,
  }) {
    showToastWidget(
      _AppCustomIconToast(
        message: message,
        icon: AppAssets.images.icons.success.svg(),
        iconAlignment: IconAlignment.left,
      ),
      dismissOtherToast: true,
      duration: const Duration(seconds: 7),
      position: ToastPosition.bottom,
    );
  }

  static error({
    required String message,
  }) {
    showToastWidget(
      _AppCustomIconToast(
        message: message,
        icon: Container(
          height: 22.dm,
          width: 22.dm,
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
              color: const Color(0xFFEF2A5A).withOpacityValue(.2),
              shape: BoxShape.circle),
          child: Container(
            decoration: const BoxDecoration(
                color: Color(0xFFEF2A5A), shape: BoxShape.circle),
            child: const Icon(
              Icons.close,
              color: AppColors.white,
              size: 14,
            ),
          ),
        ),
        iconAlignment: IconAlignment.left,
      ),
      dismissOtherToast: true,
      duration: const Duration(seconds: 7),
      position: ToastPosition.bottom,
    );
  }
}

class _AppCustomIconToast extends StatelessWidget {
  final String message;
  final IconAlignment iconAlignment;
  final Widget icon;
  const _AppCustomIconToast({
    required this.message,
    required this.icon,
    this.iconAlignment = IconAlignment.left,
  });

  @override
  Widget build(BuildContext context) {
    return _$PumpPriceToast(
      message: message,
      showIcon: true,
      iconAlignment: iconAlignment,
      icon: icon,
    );
  }
}

class _$PumpPriceToast extends StatelessWidget {
  final String message;
  final bool showIcon;
  final IconAlignment iconAlignment;
  final Widget? icon;
  const _$PumpPriceToast({
    required this.message,
    this.showIcon = true,
    this.iconAlignment = IconAlignment.left,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 10.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11.r),
        color: AppColors.pumpPricebodyText,
      ),
      child: showIcon ? textWithIcon(context) : textWidget(context),
    );
  }

  Widget textWithIcon(BuildContext context) {
    if (iconAlignment == IconAlignment.left) {
      return messageWithIconLeft(context);
    }
    return messageWithIconRight(context);
  }

  Widget messageWithIconLeft(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 24.dm,
          width: 24.dm,
          child: icon,
        ),
        8.horizontalGap,
        Expanded(child: textWidget(context)),
      ],
    );
  }

  Widget messageWithIconRight(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(child: textWidget(context)),
        8.horizontalGap,
        SizedBox(
          height: 24.dm,
          width: 24.dm,
          child: icon,
        ),
      ],
    );
  }

  Widget textWidget(BuildContext context) {
    return Text(
      message,
      style: context.textTheme.bodyMedium!.copyWith(
        height: 18.toLineHeight(13),
        color: AppColors.pumpPricewhite,
      ),
    );
  }
}

enum IconAlignment { left, right }
