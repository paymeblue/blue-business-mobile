import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/pump_price/widgets/buttons/app_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum PumpPriceTab { branch, attendant, logout }

class PumpPriceNavBar extends StatelessWidget {
  const PumpPriceNavBar({
    super.key,
    required this.onTap,
    this.currentIndex = 0,
  });

  final Function(int index, {bool notify}) onTap;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(
        left: 16.w,
        right: 16.w,
        bottom: 28.h,
        top: 10.h,
      ),
      height: 90.h,
      decoration: BoxDecoration(
        boxShadow: kElevationToShadow[3],
        color: AppColors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(PumpPriceTab.values.length, (i) {
          PumpPriceTab t = PumpPriceTab.values[i];
          return GestureDetector(
            onTap: () {
              if (t.index == PumpPriceTab.logout.index) {
                showLogout(context);
              } else {
                onTap(t.index);
              }
            },
            child: Column(
              children: [
                Container(
                  height: 28,
                  width: 28,
                  alignment: Alignment.center,
                  child: icon(t),
                ),
                if (i == currentIndex)
                  Container(
                    height: 4.dm,
                    width: 4.dm,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.primary,
                    ),
                  ),
              ],
            ),
          );
        }),
      ),
    );
  }

  void showLogout(BuildContext context) {
    FocusManager.instance.primaryFocus?.unfocus();
    showModalBottomSheet(
      context: context,
      barrierColor: AppColors.pumpPriceblack.withOpacityValue(.55),
      backgroundColor: Colors.transparent,
      builder: (ctx) {
        return Container(
          height: 240.h,
          width: context.getWidth(),
          margin: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 35.w),
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            color: AppColors.pumpPricewhite,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AppAssets.images.icons.warning.svg(height: 64.dm, width: 64.dm),
              Text(
                'Are you sure you want to exit Pump Price?',
                style: context.textTheme.titleSmall,
                textAlign: TextAlign.center,
              ),
              PumpPriceButton.primary(
                title: 'Exit',
                onTap: () {
                  locator<AppRouter>().back();
                  locator<AppRouter>().replaceAll([AppsRoute()]);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Widget icon(PumpPriceTab tab) {
    switch (tab) {
      case PumpPriceTab.branch:
        if (currentIndex == PumpPriceTab.branch.index) {
          return AppAssets.images.pumpPrice.svg.active.branch.svg(
            height: 20.dm,
            width: 20.dm,
          );
        } else {
          return AppAssets.images.pumpPrice.svg.inactive.branch.svg(
            height: 20.dm,
            width: 20.dm,
          );
        }
      case PumpPriceTab.attendant:
        if (currentIndex == PumpPriceTab.attendant.index) {
          return AppAssets.images.pumpPrice.svg.active.attendant.svg(
            height: 20.dm,
            width: 20.dm,
          );
        } else {
          return AppAssets.images.pumpPrice.svg.inactive.attendant.svg(
            height: 20.dm,
            width: 20.dm,
          );
        }
      case PumpPriceTab.logout:
        if (currentIndex == PumpPriceTab.logout.index) {
          return AppAssets.images.pumpPrice.svg.active.logout.svg(
            height: 20.dm,
            width: 20.dm,
          );
        } else {
          return AppAssets.images.pumpPrice.svg.inactive.logout.svg(
            height: 20.dm,
            width: 20.dm,
          );
        }
    }
  }
}
