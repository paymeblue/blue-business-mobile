import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConditionCheck extends StatelessWidget {
  const ConditionCheck({
    super.key,
    required this.isComplete,
    required this.condition,
  });

  final bool isComplete;
  final String condition;

  @override
  Widget build(BuildContext context) {
    return Row(
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
        const SizedBox(width: 10),
        Text(
          condition,
          style: AppTextStyles.subHeader.copyWith(
              color: AppColors.textcolor,
              fontSize: 13,
              fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
