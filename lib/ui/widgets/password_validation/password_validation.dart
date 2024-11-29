import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordCheckOption extends StatelessWidget {
  const PasswordCheckOption({
    super.key,
    required this.isComplete,
    required this.condition,
  });

  final bool isComplete;
  final String condition;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              isComplete
                  ? CupertinoIcons.check_mark_circled
                  : Icons.circle_outlined,
              color: AppColors.success,
              size: 22,
            ),
            10.horizontalGap,
            Text(
              condition,
              style: AppTextStyles.subHeader.copyWith(
                  color: AppColors.textColor,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        6.verticalGap,
      ],
    );
  }
}
