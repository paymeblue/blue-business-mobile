import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/material.dart';

class BlueAppBar {
  static show(
          {Widget? title,
          bool showBack = true,
          double? elevation,
          double fontSize = 20,
          VoidCallback? onBackTap,
          IconData? leadingIcon,
          Key? key,
          Widget? leading,
          List<Widget>? actions,
          PreferredSizeWidget? bottom}) =>
      AppBar(
        elevation: elevation,
        leading: leading ??
            GestureDetector(
              onTap: () {
                if (onBackTap != null) {
                  onBackTap();
                }
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 1000),
                margin: const EdgeInsets.only(left: 16),
                height: 34,
                width: 34,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: const Color(0xFFE5E6E8))),
                child: Icon(
                  leadingIcon ?? Icons.close,
                  color: AppColors.textcolor,
                  size: 16.5,
                ),
              ),
            ),
        title: title,
        automaticallyImplyLeading: false,
        actions: actions,
        bottom: bottom,
      );
}
