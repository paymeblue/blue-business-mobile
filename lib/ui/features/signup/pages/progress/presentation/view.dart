import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/signup/data/signup_data.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/ui/widgets/buttons/app_buttons.dart';
import 'package:blue_business/ui/widgets/steppers/circular_step_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'view_model.dart';

class SignupProgressView extends StatefulWidget {
  final SignupData data;
  const SignupProgressView({super.key, required this.data});

  @override
  State<SignupProgressView> createState() => _SignupProgressViewState();
}

class _SignupProgressViewState extends State<SignupProgressView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<SignupProgressViewModel>(
      model: SignupProgressViewModel(),
      onModelReady: (model) => model.init(context, widget.data),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () {
              model.goBack(context);
            },
            icon: Icons.arrow_back_ios_new,
          ),
          body: Column(
            children: [
              CircularStepIndicator(
                max: model.progressSteps.length.toDouble(),
                progress: model.progress.toDouble(),
              ),
              Text(
                "Complete account setup",
                style: AppTextStyles.midHeader,
              ),
              Text(
                "${model.progress} out of ${model.progressSteps.length} complete",
                style: AppTextStyles.smallText
                    .copyWith(color: AppColors.bodyTextColor2),
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
                    progress: model.progress,
                    title: model.progressSteps[i]["title"],
                    subtitle: model.progressSteps[i]["subtitle"],
                  ),
                  separatorBuilder: (ctx, i) => 18.verticalGap,
                  itemCount: model.progressSteps.length,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: AppButton.primary(
                    title: "Continue",
                    onTap: () {
                      // model.goToNext(context, widget.data);
                    }),
              )
            ],
          ),
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
            height: 40.h,
            width: 40.w,
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
