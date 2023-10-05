import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/material.dart';

class AppButton extends StatefulWidget {
  final Function onTap;
  final String buttonText;
  final bool isLoading;
  final bool isPrimary;
  final bool hasBorder;
  final bool isActive;
  final double? width;
  final Color? textColor;
  final Widget? icon;
  const AppButton(
      {Key? key,
      required this.onTap,
      required this.buttonText,
      this.isLoading = false,
      this.isPrimary = true,
      this.hasBorder = true,
      this.width,
      this.textColor,
      this.isActive = true,
      this.icon})
      : super(key: key);

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: () {
          if (widget.isActive && !widget.isLoading) {
            widget.onTap();
          }
        },
        splashColor: AppColors.primaryColor,
        child: Container(
          height: 50,
          width: widget.width ?? 330,
          decoration: BoxDecoration(
              color: widget.isActive && !widget.isLoading
                  ? widget.isPrimary
                      ? AppColors.primaryColor
                      : AppColors.white
                  : AppColors.primaryColor.withOpacity(.4),
              borderRadius: BorderRadius.circular(6),
              border: widget.hasBorder
                  ? Border.all(
                      color: AppColors.primaryColor
                          .withOpacity(widget.isActive ? 1 : .4))
                  : null),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (widget.icon != null) widget.icon!,
              if (widget.icon != null) const SizedBox(width: 12),
              Text(widget.isLoading ? 'Processing...' : widget.buttonText,
                  style: !widget.isPrimary
                      ? AppTextStyles.largeButtonText.copyWith(
                          color: widget.textColor ?? AppColors.primaryColor)
                      : AppTextStyles.largeButtonText.copyWith(
                          color: widget.textColor ?? AppColors.white)),
            ],
          ),
        ),
      ),
    );
  }
}

class AppBorderButton extends StatefulWidget {
  final Function onTap;
  final String buttonText;
  final bool isActive;
  final double? width;
  final Color? textColor;
  const AppBorderButton(
      {Key? key,
      required this.onTap,
      required this.buttonText,
      this.width,
      this.textColor,
      this.isActive = true})
      : super(key: key);

  @override
  State<AppBorderButton> createState() => _AppBorderButtonState();
}

class _AppBorderButtonState extends State<AppBorderButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: () {
          if (widget.isActive) {
            widget.onTap();
          }
        },
        splashColor: Theme.of(context).primaryColor,
        child: Container(
          height: 50,
          width: widget.width ?? 330,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: AppColors.white)),
          alignment: Alignment.center,
          child: Text(widget.buttonText,
              style: AppTextStyles.largeButtonText
                  .copyWith(color: widget.textColor ?? AppColors.white)),
        ),
      ),
    );
  }
}

class AppTextButton extends StatefulWidget {
  final Function onTap;
  final String buttonText;
  final bool isLoading;
  final bool isPrimary;
  final bool isActive;
  const AppTextButton(
      {Key? key,
      required this.onTap,
      required this.buttonText,
      this.isLoading = false,
      this.isPrimary = true,
      this.isActive = true})
      : super(key: key);

  @override
  State<AppTextButton> createState() => _AppTextButtonState();
}

class _AppTextButtonState extends State<AppTextButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: GestureDetector(
        onTap: () {
          if (widget.isActive) {
            widget.onTap();
          }
        },
        child: DecoratedBox(
          decoration: const BoxDecoration(),
          child: Text(
            widget.buttonText,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.primaryColor),
          ),
        ),
      ),
    );
  }
}

class AppSmallButton extends StatefulWidget {
  final Function onTap;
  final String buttonText;
  final bool isLoading;
  final bool isPrimary;
  final bool isActive;
  const AppSmallButton({
    Key? key,
    required this.onTap,
    required this.buttonText,
    this.isLoading = false,
    this.isPrimary = true,
    this.isActive = true,
  }) : super(key: key);

  @override
  State<AppSmallButton> createState() => _AppSmallButtonState();
}

class _AppSmallButtonState extends State<AppSmallButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: () {
          if (widget.isActive) {
            widget.onTap();
          }
        },
        splashColor: Theme.of(context).primaryColor,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8.5),
          decoration: BoxDecoration(
            color: widget.isActive
                ? AppColors.primaryColor
                : AppColors.primaryColor.withOpacity(.4),
            borderRadius: BorderRadius.circular(6),
          ),
          alignment: Alignment.center,
          child: Text(
            widget.isLoading ? 'Processing...' : widget.buttonText,
            style: !widget.isPrimary
                ? AppTextStyles.smallButtonText
                : AppTextStyles.smallButtonText
                    .copyWith(color: AppColors.white),
          ),
        ),
      ),
    );
  }
}
