import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum IconAlignment { left, right }

sealed class PumpPriceButton extends StatelessWidget {
  const PumpPriceButton({super.key});

  factory PumpPriceButton.primary({
    required String title,
    required void Function() onTap,
    bool isEnabled = true,
    bool isLoading = false,
    Color? color,
    Color? textColor,
  }) =>
      _PumpPriceButtonPrimary(
        title: title,
        onTap: onTap,
        isEnabled: isEnabled,
        isLoading: isLoading,
        color: color,
        textColor: textColor,
      );

  factory PumpPriceButton.ghostPrimary({
    required String title,
    required void Function() onTap,
    bool isEnabled = true,
    Color? textColor,
    bool isLoading = false,
  }) =>
      _PumpPriceButtonGhostPrimary(
        title: title,
        onTap: onTap,
        textColor: textColor,
        isEnabled: isEnabled,
        isLoading: isLoading,
      );

  factory PumpPriceButton.ghost({
    required String title,
    required void Function() onTap,
    bool isEnabled = true,
    Color? textColor,
    bool isLoading = false,
  }) =>
      _PumpPriceButtonGhost(
        title: title,
        onTap: onTap,
        textColor: textColor,
        isEnabled: isEnabled,
        isLoading: isLoading,
      );

  factory PumpPriceButton.primaryWithIcon({
    required String title,
    required Widget icon,
    Color backgroundColor = AppColors.pumpPriceprimary,
    Color textColor = AppColors.pumpPriceblack,
    IconAlignment iconAlignment = IconAlignment.left,
    required void Function() onTap,
    bool isEnabled = true,
    bool isLoading = false,
  }) =>
      _$PumpPriceButton(
        title: title,
        icon: icon,
        iconAlignment: iconAlignment,
        backgroundColor: backgroundColor,
        textColor: textColor,
        onTap: onTap,
        isEnabled: isEnabled,
        isLoading: isLoading,
      );

  static Widget icon({
    IconData? icon,
    Widget? iconWidget,
    double? iconSize,
    Color? color,
    double? borderRadius,
    void Function()? onTap,
  }) =>
      _AppIconButton(
        icon: icon,
        iconSize: iconSize,
        iconWidget: iconWidget,
        color: color,
        borderRadius: borderRadius,
        onTap: onTap,
      );
}

class _PumpPriceButtonPrimary extends StatelessWidget
    implements PumpPriceButton {
  final String title;
  final void Function() onTap;
  final bool isEnabled;
  final bool isLoading;
  final Color? color;
  final Color? textColor;

  const _PumpPriceButtonPrimary({
    required this.title,
    required this.onTap,
    required this.isEnabled,
    required this.isLoading,
    this.color,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return _$PumpPriceButton(
      title: title,
      onTap: onTap,
      isEnabled: isEnabled,
      isLoading: isLoading,
      backgroundColor: color ?? AppColors.pumpPriceprimary,
      textColor: textColor,
    );
  }
}

class _PumpPriceButtonGhostPrimary extends StatelessWidget
    implements PumpPriceButton {
  final String title;
  final void Function() onTap;
  final bool isEnabled;
  final bool isLoading;
  final Color? textColor;

  const _PumpPriceButtonGhostPrimary({
    required this.title,
    required this.onTap,
    required this.isEnabled,
    required this.isLoading,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return _$PumpPriceButton(
      title: title,
      onTap: onTap,
      isEnabled: isEnabled,
      textColor: textColor,
      isLoading: isLoading,
      backgroundColor: AppColors.pumpPriceprimary,
      isFilled: false,
    );
  }
}

class _PumpPriceButtonGhost extends StatelessWidget implements PumpPriceButton {
  final String title;
  final void Function() onTap;
  final bool isEnabled;
  final bool isLoading;
  final Color? textColor;

  const _PumpPriceButtonGhost({
    required this.title,
    required this.onTap,
    required this.isEnabled,
    required this.isLoading,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return _$PumpPriceButton(
      title: title,
      onTap: onTap,
      isEnabled: isEnabled,
      textColor: textColor,
      isLoading: isLoading,
      backgroundColor: AppColors.pumpPricestroke,
      isFilled: false,
    );
  }
}

class _$PumpPriceButton extends PumpPriceButton {
  final String title;
  final void Function() onTap;
  final Widget? icon;
  final bool isEnabled;
  final bool isLoading;
  final IconAlignment iconAlignment;
  final Color backgroundColor;
  final Color? textColor;
  final bool isFilled;

  const _$PumpPriceButton({
    required this.title,
    required this.onTap,
    this.icon,
    this.iconAlignment = IconAlignment.left,
    this.backgroundColor = AppColors.pumpPriceprimary,
    this.textColor,
    required this.isEnabled,
    required this.isLoading,
    this.isFilled = true,
  });

  @override
  Widget build(BuildContext context) {
    Widget iconLeftAlignedAndText() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon ?? const SizedBox.shrink(),
          10.horizontalGap,
          FittedBox(
            child: Text(
              title,
              style: context.textTheme.bodyMedium!.copyWith(
                height: 18.toLineHeight(13),
                color: textColor ?? AppColors.pumpPricewhite,
              ),
            ),
          ),
        ],
      );
    }

    Widget iconRightAlignedAndText() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FittedBox(
            child: Text(
              title,
              style: context.textTheme.bodyMedium!.copyWith(
                height: 18.toLineHeight(13),
                color: textColor ?? AppColors.pumpPricewhite,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          10.horizontalGap,
          icon ?? const SizedBox.shrink(),
        ],
      );
    }

    Widget ghostedButton = OutlinedButton(
      style: OutlinedButton.styleFrom(
        elevation: 0.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
        shadowColor: Colors.transparent,
        minimumSize: Size(double.infinity, 45.h),
        foregroundColor: backgroundColor,
        side: BorderSide(color: textColor ?? backgroundColor, width: 1.5),
      ),
      onPressed: (!isEnabled || isLoading) ? null : onTap,
      child: isLoading
          ? SizedBox(
              height: 15.w,
              width: 15.w,
              child: CircularProgressIndicator(
                color: textColor,
                strokeWidth: 1.5,
              ),
            )
          : icon != null
              ? iconAlignment == IconAlignment.left
                  ? iconLeftAlignedAndText()
                  : iconRightAlignedAndText()
              : FittedBox(
                  child: Text(
                    title,
                    style: context.textTheme.bodyMedium!.copyWith(
                      height: 18.toLineHeight(13),
                      color: isEnabled || isLoading
                          ? textColor ?? AppColors.pumpPriceprimary
                          : AppColors.pumpPriceprimary.withOpacityValue(.45),
                    ),
                  ),
                ),
    );

    Widget filledButton = ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
        minimumSize: Size(double.infinity, 50.h),
        backgroundColor: backgroundColor,
        disabledBackgroundColor: backgroundColor.withOpacityValue(0.5),
        foregroundColor: textColor ?? AppColors.pumpPricewhite,
      ),
      onPressed: (!isEnabled || isLoading) ? null : onTap,
      child: isLoading
          ? SizedBox(
              height: 15.w,
              width: 15.w,
              child: CircularProgressIndicator(
                color: textColor,
                strokeWidth: 1.5,
              ),
            )
          : icon != null
              ? iconAlignment == IconAlignment.left
                  ? iconLeftAlignedAndText()
                  : iconRightAlignedAndText()
              : FittedBox(
                  child: Text(
                    title,
                    style: context.textTheme.bodyMedium!.copyWith(
                      height: 18.toLineHeight(13),
                      color: textColor ?? AppColors.pumpPricewhite,
                    ),
                  ),
                ),
    );

    return isFilled ? filledButton : ghostedButton;
  }
}

class _AppIconButton extends StatelessWidget {
  final IconData? icon;
  final Widget? iconWidget;
  final double? iconSize;
  final Color? color;
  final double? borderRadius;
  final void Function()? onTap;

  const _AppIconButton({
    this.icon,
    this.iconWidget,
    this.iconSize,
    this.color,
    this.borderRadius,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final iconColor = color ?? AppColors.pumpPriceprimary;
    final boxColor = iconColor.withOpacityValue(0.2);
    var radius = borderRadius ?? 8.r;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(radius),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: icon != null
              ? Icon(icon, color: iconColor, size: iconSize ?? 20.0)
              : iconWidget,
        ),
      ),
    );
  }
}
