import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/settings_option%20copy/settings_option.dart';
import 'package:blue_business/core/models/settings_section/settings_section.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountRecoverySectionContainer extends StatelessWidget {
  final SettingsSection section;
  const AccountRecoverySectionContainer({
    super.key,
    required this.section,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [titleText(), 10.verticalGap, actionSection(context)],
    );
  }

  Widget actionSection(BuildContext context) {
    return SizedBox(
      width: context.mediaQuery.size.width,
      child: Column(
        children: List.generate(section.options.length, (index) {
          return actionTile(
              section.options[index], index < section.options.length - 1);
        }),
      ),
    );
  }

  Widget actionTile(SettingsOption option, bool hasSpace) {
    return Column(
      children: [
        Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: option.onTap,
            splashColor: AppColors.brightBlue.withOpacity(.3),
            child: Container(
              constraints: const BoxConstraints(minHeight: 55),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: AppColors.inputField,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Row(
                children: [
                  Container(
                    height: 38.h,
                    width: 38.w,
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.lightOverlay2,
                    ),
                    child: option.icon,
                  ),
                  10.horizontalGap,
                  Expanded(
                    child: textColumn(option),
                  ),
                ],
              ),
            ),
          ),
        ),
        if (hasSpace) 12.verticalGap,
      ],
    );
  }

  Widget textColumn(SettingsOption option) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          option.title,
          style: AppTextStyles.header.copyWith(
            fontSize: 15.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.textColor,
          ),
        ),
        4.verticalGap,
        if (option.subtitle != null)
          Text(
            option.subtitle!,
            style: AppTextStyles.subHeader.copyWith(
              fontSize: 13.sp,
              height: 1,
              fontWeight: FontWeight.w400,
              color: AppColors.bodyTextColor,
            ),
          ),
      ],
    );
  }

  Widget titleText() {
    return Text(
      section.sectionTitle,
      style: AppTextStyles.smallText.copyWith(
        color: AppColors.bodyTextColor,
      ),
    );
  }
}
