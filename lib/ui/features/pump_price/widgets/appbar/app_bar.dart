import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class PumpPriceAppBar {
  PumpPriceAppBar._();

  static PreferredSizeWidget primary({
    IconData? icon,
    Widget? leading,
    Widget? title,
    VoidCallback? onBackTap,
    List<Widget>? actions,
    double? leadingWidth,
  }) {
    return _BillmatePrimaryAppBar(
      icon: icon,
      leading: leading,
      title: title,
      onBackTap: onBackTap,
      actions: actions,
      leadingWidth: leadingWidth,
    );
  }
}

class _BillmatePrimaryAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final IconData? icon;
  final Widget? leading;
  final Widget? title;
  final VoidCallback? onBackTap;
  final List<Widget>? actions;
  final double? leadingWidth;

  const _BillmatePrimaryAppBar({
    this.icon,
    this.leading,
    this.title,
    this.onBackTap,
    this.actions,
    this.leadingWidth,
  });

  @override
  Widget build(BuildContext context) {
    return _$AppBar(
      centerTitle: true,
      icon: icon,
      leading: leading,
      title: title,
      onBackTap: onBackTap,
      actions: actions,
      leadingWidth: leadingWidth,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _$AppBar extends StatelessWidget implements PreferredSizeWidget {
  final IconData? icon;
  final Widget? leading;
  final bool centerTitle;
  final Widget? title;
  final VoidCallback? onBackTap;
  final double? leadingWidth;
  final List<Widget>? actions;

  const _$AppBar({
    this.icon,
    this.leading,
    this.centerTitle = true,
    this.title,
    this.onBackTap,
    this.actions,
    this.leadingWidth,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.pumpPricewhite,
      elevation: 0,
      leadingWidth: leadingWidth,
      leading: leading ??
          GestureDetector(
            onTap: () {
              if (onBackTap != null) {
                onBackTap!();
              }
            },
            child: Container(
              margin: const EdgeInsets.only(left: 16),
              height: 34,
              width: 34,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: const Color(0xFFE5E6E8)),
              ),
              child: Icon(
                icon ?? Icons.arrow_back_ios_new,
                size: 16,
                color: AppColors.pumpPriceheaderText,
                weight: .6,
              ),
            ),
          ),
      title: title,
      actions: actions,
      automaticallyImplyLeading: false,
      centerTitle: centerTitle,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
