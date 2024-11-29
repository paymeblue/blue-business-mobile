import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oktoast/oktoast.dart';

class BlueToast {
  BlueToast._();

  static primaryWithoutIcon(
    String message, {
    IconAlignment iconAlignment = IconAlignment.left,
  }) {
    showToastWidget(
      _BluePrimaryToast(
        message: message,
        showIcon: false,
        iconAlignment: iconAlignment,
      ),
      dismissOtherToast: true,
      duration: const Duration(seconds: 5),
      position: ToastPosition.bottom,
    );
  }

  static primaryWithcon(
    String message, {
    IconAlignment iconAlignment = IconAlignment.left,
  }) {
    showToastWidget(
      _BluePrimaryToast(
        message: message,
        showIcon: true,
        iconAlignment: iconAlignment,
      ),
      dismissOtherToast: true,
      duration: const Duration(seconds: 5),
      position: ToastPosition.bottom,
    );
  }

  static customIcon(
    String message,
    Widget icon, {
    IconAlignment iconAlignment = IconAlignment.left,
  }) {
    showToastWidget(
      _BlueCustomIconToast(
        message: message,
        icon: icon,
        iconAlignment: iconAlignment,
      ),
      dismissOtherToast: true,
      duration: const Duration(seconds: 5),
      position: ToastPosition.bottom,
    );
  }
}

class _BluePrimaryToast extends StatelessWidget {
  final String message;
  final bool showIcon;
  final IconAlignment iconAlignment;
  const _BluePrimaryToast({
    required this.message,
    this.showIcon = true,
    this.iconAlignment = IconAlignment.left,
  });

  @override
  Widget build(BuildContext context) {
    return _$AppToast(
      message: message,
      showIcon: showIcon,
      iconAlignment: iconAlignment,
    );
  }
}

class _BlueCustomIconToast extends StatelessWidget {
  final String message;
  final IconAlignment iconAlignment;
  final Widget icon;
  const _BlueCustomIconToast({
    required this.message,
    required this.icon,
    this.iconAlignment = IconAlignment.left,
  });

  @override
  Widget build(BuildContext context) {
    return _$AppToast(
      message: message,
      showIcon: true,
      iconAlignment: iconAlignment,
      icon: icon,
    );
  }
}

class _$AppToast extends StatelessWidget {
  final String message;
  final bool showIcon;
  final IconAlignment iconAlignment;
  final Widget? icon;
  const _$AppToast({
    required this.message,
    this.showIcon = true,
    this.iconAlignment = IconAlignment.left,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: AppColors.white,
          border: Border.all(
            color: AppColors.paleBlue,
          )),
      child: showIcon ? textWithIcon() : textWidget(),
    );
  }

  Widget textWithIcon() {
    if (iconAlignment == IconAlignment.left) {
      return messageWithIconLeft();
    }
    return messageWithIconRight();
  }

  Widget messageWithIconLeft() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
            height: 24.h,
            width: 24.w,
            child: icon ?? AppAssets.images.logos.blueBgLogo.image()),
        12.horizontalGap,
        textWidget(),
      ],
    );
  }

  Widget messageWithIconRight() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        textWidget(),
        12.horizontalGap,
        SizedBox(
            height: 24.h,
            width: 24.w,
            child: icon ?? AppAssets.images.logos.blueBgLogo.image()),
      ],
    );
  }

  Widget textWidget() {
    return Text(
      message,
      style: AppTextStyles.subHeader.copyWith(
        fontWeight: FontWeight.w600,
        color: AppColors.textColor,
      ),
    );
  }
}

enum IconAlignment { left, right }
