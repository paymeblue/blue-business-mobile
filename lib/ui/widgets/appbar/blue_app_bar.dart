import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BlueAppBar {
  BlueAppBar._();

  static PreferredSizeWidget primary({
    IconData? icon,
    Widget? leading,
    Widget? title,
    VoidCallback? onBackTap,
    List<Widget>? actions,
  }) {
    return _BluePrimaryAppBar(
      icon: icon,
      leading: leading,
      title: title,
      onBackTap: onBackTap,
      actions: actions,
    );
  }
}

class _BluePrimaryAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final IconData? icon;
  final Widget? leading;
  final Widget? title;
  final VoidCallback? onBackTap;
  final List<Widget>? actions;

  const _BluePrimaryAppBar({
    this.icon,
    this.leading,
    this.title,
    this.onBackTap,
    this.actions,
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
  final List<Widget>? actions;

  const _$AppBar({
    this.icon,
    this.leading,
    this.centerTitle = true,
    this.title,
    this.onBackTap,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.white,
      elevation: 0,
      leading: leading ??
          GestureDetector(
            onTap: () {
              if (onBackTap != null) {
                onBackTap!();
              }
            },
            child: Container(
              margin: const EdgeInsets.only(left: 16),
              height: 34.h,
              width: 34.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: const Color(0xFFE5E6E8)),
              ),
              child: Icon(
                icon ?? Icons.close,
                size: 19,
                color: AppColors.textColor,
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
