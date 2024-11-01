import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StepIndicator extends StatelessWidget {
  const StepIndicator(
      {super.key,
      required this.index,
      this.isActive = false,
      this.indicatorCount = 1});

  final int index;
  final bool isActive;
  final int indicatorCount;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(indicatorCount, (i) {
          return Row(
            children: [
              Container(
                  height: 40.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                      color: index > i ? AppColors.primary : null,
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: index >= i
                              ? AppColors.primary
                              : AppColors.midGrey)),
                  alignment: Alignment.center,
                  child: index > i
                      ? const Icon(
                          Icons.check,
                          color: AppColors.white,
                          size: 18,
                        )
                      : Text(
                          "${i + 1}",
                          style: AppTextStyles.indicatorText,
                        )),
              if (i < indicatorCount - 1)
                SizedBox(
                  width: (size.width - 200) / ((indicatorCount - 1) / 1.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                        double.parse(((28 / indicatorCount - 1) + 4).toString())
                            .toInt(), (ix) {
                      return Container(
                        height: 3.h,
                        width: 5.w,
                        color: index > i || (index == i && isActive)
                            ? AppColors.primary
                            : AppColors.midGrey,
                      );
                    }),
                  ),
                )
            ],
          );
        }),
      ),
    );
  }
}
