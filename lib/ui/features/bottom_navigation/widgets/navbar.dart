import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum BlueTab {
  home('Home'),
  insights('Insights'),
  apps('MiniApps'),
  settings('Settings');

  const BlueTab(this.name);

  final String name;
}

class BlueNavBar extends StatelessWidget {
  const BlueNavBar({super.key, required this.onTap, this.currentIndex = 0});

  final Function(int index, {bool notify}) onTap;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding:
          EdgeInsets.only(left: 16.w, right: 16.w, bottom: 28.h, top: 10.h),
      height: 90.h,
      decoration: BoxDecoration(
        boxShadow: kElevationToShadow[3],
        color: AppColors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          BlueTab.values.length,
          (i) {
            BlueTab t = BlueTab.values[i];

            return GestureDetector(
              onTap: () {
                onTap(t.index);
              },
              child: Column(
                children: [
                  Container(
                    height: 28,
                    width: 28,
                    alignment: Alignment.center,
                    child: icon(t),
                  ),
                  Text(
                    t.name,
                    style: AppTextStyles.smallText.copyWith(
                      color: textColot(t),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Color textColot(BlueTab tab) {
    if (tab.index == currentIndex) {
      return AppColors.primary;
    } else {
      return AppColors.bodyTextColor;
    }
  }

  Widget icon(BlueTab tab) {
    switch (tab) {
      case BlueTab.home:
        if (currentIndex == BlueTab.home.index) {
          return AppAssets.images.navbarIcons.active.home.svg(
            height: 20.dm,
            width: 20.dm,
          );
        } else {
          return AppAssets.images.navbarIcons.inactive.home.svg(
            height: 20.dm,
            width: 20.dm,
          );
        }
      case BlueTab.insights:
        if (currentIndex == BlueTab.insights.index) {
          return AppAssets.images.navbarIcons.active.insights.svg(
            height: 20.dm,
            width: 20.dm,
          );
        } else {
          return AppAssets.images.navbarIcons.inactive.insights.svg(
            height: 20.dm,
            width: 20.dm,
          );
        }
      case BlueTab.apps:
        if (currentIndex == BlueTab.apps.index) {
          return AppAssets.images.navbarIcons.active.apps.svg(
            height: 20.dm,
            width: 20.dm,
          );
        } else {
          return AppAssets.images.navbarIcons.inactive.apps.svg(
            height: 20.dm,
            width: 20.dm,
          );
        }
      case BlueTab.settings:
        if (currentIndex == BlueTab.settings.index) {
          return AppAssets.images.navbarIcons.active.settings.svg(
            height: 20.dm,
            width: 20.dm,
          );
        } else {
          return AppAssets.images.navbarIcons.inactive.settings.svg(
            height: 20.dm,
            width: 20.dm,
          );
        }
    }
  }
}
