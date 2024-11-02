import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/modules/dashboard_pages/settings/models/settings_option/settings_option.dart';
import 'package:blue_business/modules/dashboard_pages/settings/models/settings_section/settings_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsSectionContainer extends StatelessWidget {
  final SettingsSection section;
  final bool isDelete;
  const SettingsSectionContainer({
    super.key,
    required this.section,
    this.isDelete = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [titleText(), 10.verticalGap, actionSection(context)],
    );
  }

  Widget actionSection(BuildContext context) {
    return Container(
      width: context.mediaQuery.size.width,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.inputField,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        children: List.generate(section.options.length, (index) {
          return Column(
            children: [
              actionTile(section.options[index]),
              if (index < section.options.length - 1) 20.verticalGap,
            ],
          );
        }),
      ),
    );
  }

  Widget actionTile(SettingsOption option) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: option.onTap,
        splashColor: AppColors.brightBlue.withOpacity(.3),
        child: Container(
          constraints: const BoxConstraints(minHeight: 46),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
          padding: const EdgeInsets.all(5),
          child: Row(
            children: [
              option.icon,
              10.horizontalGap,
              Expanded(
                child: textColumn(option),
              ),
              12.horizontalGap,
              option.trailing ??
                  const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: AppColors.bodyTextColor,
                    size: 15,
                  )
            ],
          ),
        ),
      ),
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
            color: isDelete ? AppColors.error : AppColors.textColor,
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
              color: isDelete ? AppColors.error : AppColors.bodyTextColor,
            ),
          ),
      ],
    );
  }

  Widget titleText() {
    return Text(
      section.sectionTitle,
      style: AppTextStyles.smallText.copyWith(
        color: isDelete ? AppColors.error : AppColors.bodyTextColor,
      ),
    );
  }
}
