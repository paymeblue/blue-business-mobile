import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/settings_option/section_option.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppsSectionContainer extends StatelessWidget {
  final SectionOption option;
  const AppsSectionContainer({
    super.key,
    required this.option,
  });

  @override
  Widget build(BuildContext context) {
    return actionTile(option);
  }

  Widget actionTile(SectionOption option) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: option.onTap,
        splashColor: AppColors.brightBlue.withOpacityValue(.3),
        child: Container(
          constraints: const BoxConstraints(minHeight: 86),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: AppColors.inputField,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Row(
            children: [
              option.icon,
              10.horizontalGap,
              Expanded(
                child: textColumn(option),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget textColumn(SectionOption option) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          option.title,
          style: AppTextStyles.header.copyWith(
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.textColor,
          ),
        ),
        if (option.subtitle != null)
          Text(
            option.subtitle!,
            style: AppTextStyles.subHeader.copyWith(
              fontSize: 13.sp,
              height: 1.2,
              fontWeight: FontWeight.w400,
              color: AppColors.bodyTextColor2,
            ),
          ),
      ],
    );
  }
}
