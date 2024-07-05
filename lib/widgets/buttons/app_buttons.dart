import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/io/schemes/size_config.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

enum IconAlignment {
  left,
  right,
}

sealed class AppButton extends StatelessWidget {
  const AppButton({super.key});

  factory AppButton.primary(
          {required String title,
          required void Function() onTap,
          bool isEnabled = true,
          bool isLoading = false}) =>
      _AppButtonPrimary(
          title: title,
          onTap: onTap,
          isEnabled: isEnabled,
          isLoading: isLoading);

  factory AppButton.ghostPrimary(
          {required String title,
          required void Function() onTap,
          bool isEnabled = true,
          Color? textColor,
          bool isLoading = false}) =>
      _AppButtonGhostPrimary(
          title: title,
          onTap: onTap,
          textColor: textColor,
          isEnabled: isEnabled,
          isLoading: isLoading);

  factory AppButton.ghost(
          {required String title,
          required void Function() onTap,
          bool isEnabled = true,
          Color? textColor,
          bool isLoading = false}) =>
      _AppButtonGhost(
          title: title,
          onTap: onTap,
          textColor: textColor,
          isEnabled: isEnabled,
          isLoading: isLoading);

  factory AppButton.primaryWithIcon(
          {required String title,
          required Widget icon,
          Color backgroundColor = AppColors.primary,
          Color textColor = AppColors.white,
          IconAlignment iconAlignment = IconAlignment.left,
          required void Function() onTap,
          bool isEnabled = true,
          bool isLoading = false}) =>
      _$AppButton(
          title: title,
          icon: icon,
          iconAlignment: iconAlignment,
          backgroundColor: backgroundColor,
          textColor: textColor,
          onTap: onTap,
          isEnabled: isEnabled,
          isLoading: isLoading);

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

class _AppButtonPrimary extends StatelessWidget implements AppButton {
  final String title;
  final void Function() onTap;
  final bool isEnabled;
  final bool isLoading;

  const _AppButtonPrimary({
    required this.title,
    required this.onTap,
    required this.isEnabled,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return _$AppButton(
      title: title,
      onTap: onTap,
      isEnabled: isEnabled,
      isLoading: isLoading,
      backgroundColor: AppColors.primary,
    );
  }
}

class _AppButtonGhostPrimary extends StatelessWidget implements AppButton {
  final String title;
  final void Function() onTap;
  final bool isEnabled;
  final bool isLoading;
  final Color? textColor;

  const _AppButtonGhostPrimary({
    required this.title,
    required this.onTap,
    required this.isEnabled,
    required this.isLoading,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return _$AppButton(
      title: title,
      onTap: onTap,
      isEnabled: isEnabled,
      textColor: textColor,
      isLoading: isLoading,
      backgroundColor: AppColors.primary,
      isFilled: false,
    );
  }
}

class _AppButtonGhost extends StatelessWidget implements AppButton {
  final String title;
  final void Function() onTap;
  final bool isEnabled;
  final bool isLoading;
  final Color? textColor;

  const _AppButtonGhost({
    required this.title,
    required this.onTap,
    required this.isEnabled,
    required this.isLoading,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return _$AppButton(
      title: title,
      onTap: onTap,
      isEnabled: isEnabled,
      textColor: textColor,
      isLoading: isLoading,
      backgroundColor: AppColors.white,
      isFilled: false,
    );
  }
}

class _$AppButton extends AppButton {
  final String title;
  final void Function() onTap;
  final Widget? icon;
  final bool isEnabled;
  final bool isLoading;
  final IconAlignment iconAlignment;
  final Color backgroundColor;
  final Color? textColor;
  final bool isFilled;

  const _$AppButton({
    required this.title,
    required this.onTap,
    this.icon,
    this.iconAlignment = IconAlignment.left,
    this.backgroundColor = AppColors.primary,
    this.textColor = AppColors.white,
    required this.isEnabled,
    required this.isLoading,
    this.isFilled = true,
  });

  @override
  Widget build(BuildContext context) {
    // final colorProvider = ColorProvider.of(context);

    Widget iconLeftAlignedAndText() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon ?? const SizedBox.shrink(),
          16.horizontalGap,
          FittedBox(
            child: Text(
              title,
              style: AppTextStyles.largeButtonText.copyWith(color: textColor),
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
              style: AppTextStyles.largeButtonText.copyWith(color: textColor),
            ),
          ),
          16.horizontalGap,
          icon ?? const SizedBox.shrink(),
        ],
      );
    }

    Widget ghostedButton = OutlinedButton(
        style: OutlinedButton.styleFrom(
            elevation: 0.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            shadowColor: Colors.transparent,
            minimumSize: const Size(double.infinity, 50),
            disabledBackgroundColor: AppColors.inputField,
            foregroundColor: backgroundColor,
            side: BorderSide(color: textColor ?? backgroundColor, width: 1)),
        onPressed: (!isEnabled || isLoading) ? null : onTap,
        child: icon != null
            ? iconAlignment == IconAlignment.left
                ? iconLeftAlignedAndText()
                : iconRightAlignedAndText()
            : FittedBox(
                child: Text(
                  title,
                  style: AppTextStyles.largeButtonText.copyWith(
                    color: isEnabled || isLoading
                        ? textColor ?? AppColors.primary
                        : AppColors.primary.withOpacity(.4),
                  ),
                ),
              ));

    Widget filledButton = ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0.0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          minimumSize: const Size(double.infinity, 50),
          backgroundColor: backgroundColor,
          disabledBackgroundColor: backgroundColor.withOpacity(0.5),
          foregroundColor: textColor ?? Theme.of(context).colorScheme.onPrimary,
        ),
        onPressed: (!isEnabled || isLoading) ? null : onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null)
              iconAlignment == IconAlignment.left
                  ? iconLeftAlignedAndText()
                  : iconRightAlignedAndText()
            else
              FittedBox(
                child: Text(
                  title,
                  style:
                      AppTextStyles.largeButtonText.copyWith(color: textColor),
                ),
              )
          ],
        ));

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

  const _AppIconButton(
      {this.icon,
      this.iconWidget,
      this.iconSize,
      this.color,
      this.borderRadius,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    final iconColor = color ?? AppColors.primary;
    final boxColor = iconColor.withOpacity(0.2);
    var radius = borderRadius ?? 8.0;
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
              ? Icon(
                  icon,
                  color: iconColor,
                  size: SizeConfig.pxToHeight(iconSize ?? 20.0),
                )
              : iconWidget,
        ),
      ),
    );
  }
}
