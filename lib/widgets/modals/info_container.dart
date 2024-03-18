import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:flutter/cupertino.dart';

class InfoContainer extends StatelessWidget {
  const InfoContainer({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12.56, horizontal: 16.56),
      decoration: const BoxDecoration(
        color: AppColors.info,
      ),
      child: Row(
        children: [
          const Icon(
            CupertinoIcons.info_circle,
            color: AppColors.primary,
            size: 20,
          ),
          const SizedBox(
            width: 11,
          ),
          Expanded(
            child: Text(
              text,
              style: AppTextStyles.subHeader.copyWith(
                  color: AppColors.textColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 14.5),
            ),
          ),
        ],
      ),
    );
  }
}
