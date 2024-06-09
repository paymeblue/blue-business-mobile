import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:blue_business/widgets/steppers/circular_step_indicator.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class SignupProgressView extends StatefulWidget {
  const SignupProgressView({super.key});

  @override
  State<SignupProgressView> createState() => _SignupProgressViewState();
}

class _SignupProgressViewState extends State<SignupProgressView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<SignupProgressViewModel>(
      model: SignupProgressViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Column(
          children: [
            const CircularStepIndicator(
              max: 3,
              progress: 1,
            ),
            20.verticalGap,
            const Divider(
              color: AppColors.midGrey,
            ),
            Expanded(
              child: ListView.separated(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
                  itemBuilder: (ctx, i) => signupStep(
                        index: i,
                        progress: 1,
                        title: "KYC Verification",
                        subtitle:
                            "Verify your identify as the owner/shareholder of the business",
                      ),
                  separatorBuilder: (ctx, i) => 18.verticalGap,
                  itemCount: 3),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: AppButton.primary(
                  title: "Continue",
                  onTap: () {
                    model.goToNext(context);
                  }),
            )
          ],
        );
      },
    );
  }

  Widget signupStep({
    required String title,
    required String subtitle,
    required int index,
    required int progress,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.midGrey),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                statusTag(index, progress),
                8.verticalGap,
                Text(
                  title,
                  style: AppTextStyles.smallHeader,
                ),
                Text(
                  subtitle,
                  style: AppTextStyles.smallText
                      .copyWith(color: AppColors.bodyTextColor),
                )
              ],
            ),
          ),
          16.horizontalGap,
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: index < progress ? AppColors.blue : Colors.transparent,
              border: Border.all(color: AppColors.blue),
            ),
            alignment: Alignment.center,
            child: index < progress
                ? const Icon(
                    Icons.check_rounded,
                    color: AppColors.white,
                    size: 18,
                  )
                : Text(
                    "${index + 1}",
                    style: AppTextStyles.smallText.copyWith(
                      color: AppColors.blue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
          ),
        ],
      ),
    );
  }

  Widget statusTag(int index, int progress) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: containerColor(
          status(index, progress),
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        status(index, progress).sentenceCase,
        style: AppTextStyles.smallText.copyWith(
          color: textColor(
            status(index, progress),
          ),
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Color containerColor(String status) {
    switch (status) {
      case "completed":
        return const Color(0xFFF0FEFD);
      case "in progress":
        return const Color(0xFFFDF4E6);
      default:
        return AppColors.inputField;
    }
  }

  Color textColor(String status) {
    switch (status) {
      case "completed":
        return const Color(0xFF2FB9AC);
      case "in progress":
        return const Color(0xFFFF9601);
      default:
        return AppColors.bodyTextColor2;
    }
  }

  String status(int index, int progress) {
    if (index == progress) {
      return "in progress";
    } else if (index < progress) {
      return "completed";
    } else {
      return "not started";
    }
  }
}
