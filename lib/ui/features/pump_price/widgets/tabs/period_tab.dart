import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PumpPriceFilterTab extends StatelessWidget {
  final List<String> tabs;
  final String selectedValue;
  final ValueChanged<String> onChanged;
  const PumpPriceFilterTab({
    super.key,
    required this.tabs,
    required this.selectedValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      width: context.mediaQuery.size.width.w,
      decoration: BoxDecoration(
        color: AppColors.grey,
        borderRadius: BorderRadius.circular(50.r),
        border: Border.all(color: AppColors.bgGrey),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          tabs.length,
          (index) => Row(
            children: [
              tab(index, context),
            ],
          ),
        ),
      ),
    );
  }

  Widget tab(int index, BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(tabs[index]);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 350),
        height: 45.h,
        width: (context.mediaQuery.size.width - 40) / tabs.length,
        decoration: BoxDecoration(
          color: selectedValue == tabs[index]
              ? AppColors.pumpPriceprimary
              : Colors.transparent,
          borderRadius: BorderRadius.only(
            topLeft: index == 0 || tabs[index] == selectedValue
                ? Radius.circular(50.r)
                : Radius.zero,
            bottomLeft: index == 0 || tabs[index] == selectedValue
                ? Radius.circular(50.r)
                : Radius.zero,
            topRight: index == tabs.length - 1 || tabs[index] == selectedValue
                ? Radius.circular(50.r)
                : Radius.zero,
            bottomRight:
                index == tabs.length - 1 || tabs[index] == selectedValue
                    ? Radius.circular(50.r)
                    : Radius.zero,
          ),
        ),
        alignment: Alignment.center,
        child: FittedBox(
          child: Text(
            tabs[index],
            style: context.textTheme.bodyMedium!.copyWith(
              fontSize: 14.sp,
              color: selectedValue == tabs[index]
                  ? AppColors.white
                  : AppColors.textColor,
            ),
          ),
        ),
      ),
    );
  }
}
