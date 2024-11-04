import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterTab extends StatelessWidget {
  final List<String> tabs;
  final String selectedValue;
  final ValueChanged<String> onChanged;
  const FilterTab({
    super.key,
    required this.tabs,
    required this.selectedValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: (context.mediaQuery.size.width - 40).w,
      decoration: BoxDecoration(
        color: AppColors.grey,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: AppColors.bgGrey),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          tabs.length,
          (index) => Row(
            children: [
              tab(index, context),
              if (index < tabs.length - 1)
                Container(
                  height: 50.h,
                  width: 1.5.w,
                  decoration: const BoxDecoration(
                    color: AppColors.bgGrey,
                  ),
                )
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
        height: 50.h,
        width: (context.mediaQuery.size.width - 40) / tabs.length,
        decoration: BoxDecoration(
          color: selectedValue == tabs[index]
              ? AppColors.primary
              : Colors.transparent,
          borderRadius: BorderRadius.only(
            topLeft: index == 0 ? const Radius.circular(6) : Radius.zero,
            bottomLeft: index == 0 ? const Radius.circular(6) : Radius.zero,
            topRight: index == tabs.length - 1
                ? const Radius.circular(6)
                : Radius.zero,
            bottomRight: index == tabs.length - 1
                ? const Radius.circular(6)
                : Radius.zero,
          ),
        ),
        alignment: Alignment.center,
        child: FittedBox(
          child: Text(
            tabs[index],
            style: AppTextStyles.largeButtonText.copyWith(
              fontSize: 15.sp,
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
