import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  final Function onTap;
  final int index;
  final int currentIncex;
  const NavBarItem({
    super.key,
    required this.onTap,
    required this.index,
    this.currentIncex = 0,
  });

  Widget inactiveIcon() {
    switch (index) {
      case 0:
        return Container(
          height: 28,
          width: 28,
          alignment: Alignment.center,
          child: AppAssets.images.navbarIcons.inactive.home.svg(
            height: 20,
            width: 20,
          ),
        );
      case 1:
        return Container(
          height: 28,
          width: 28,
          alignment: Alignment.center,
          child: AppAssets.images.navbarIcons.inactive.insights.svg(
            height: 20,
            width: 20,
          ),
        );
      // case 2:
      //   return Container(
      //     height: 28,
      //     width: 28,
      //     alignment: Alignment.center,
      //     child: AppAssets.images.navbarIcons.inactive.loans.svg(
      //       height: 20,
      //       width: 20,
      //     ),
      //   );
      case 2:
        return Container(
          height: 28,
          width: 28,
          alignment: Alignment.center,
          child: AppAssets.images.navbarIcons.inactive.settings.svg(
            height: 20,
            width: 20,
          ),
        );
      default:
        return Container(
          height: 28,
          width: 28,
          alignment: Alignment.center,
          child: AppAssets.images.navbarIcons.inactive.home.svg(
            height: 20,
            width: 20,
          ),
        );
    }
  }

  Widget activeIcon() {
    switch (index) {
      case 0:
        return Container(
          height: 28,
          width: 28,
          alignment: Alignment.center,
          child: AppAssets.images.navbarIcons.active.home.svg(
            height: 20,
            width: 20,
          ),
        );
      case 1:
        return Container(
          height: 28,
          width: 28,
          alignment: Alignment.center,
          child: AppAssets.images.navbarIcons.active.insights.svg(
            height: 20,
            width: 20,
          ),
        );
      // case 2:
      //   return Container(
      //     height: 28,
      //     width: 28,
      //     alignment: Alignment.center,
      //     child: AppAssets.images.navbarIcons.active.loans.svg(
      //       height: 20,
      //       width: 20,
      //     ),
      //   );
      case 2:
        return Container(
          height: 28,
          width: 28,
          alignment: Alignment.center,
          child: AppAssets.images.navbarIcons.active.settings.svg(
            height: 20,
            width: 20,
          ),
        );
      default:
        return Container(
          height: 28,
          width: 28,
          alignment: Alignment.center,
          child: AppAssets.images.navbarIcons.active.home.svg(
            height: 20,
            width: 20,
          ),
        );
    }
  }

  String name() {
    switch (index) {
      case 0:
        return "Home";
      case 1:
        return "Insights";
      // case 2:
      //   return "Loans";
      case 2:
        return "Settings";
      default:
        return "Home";
    }
  }

  bool isActive() {
    return index == currentIncex;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 1500),
        width: context.mediaQuery.size.width / 6,
        decoration: const BoxDecoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isActive() ? activeIcon() : inactiveIcon(),
            Text(
              name(),
              style: AppTextStyles.smallText.copyWith(
                color: isActive() ? AppColors.primary : AppColors.bodyTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
