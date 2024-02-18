import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class RegisterSuccessView extends StatefulWidget {
  const RegisterSuccessView({super.key});

  @override
  State<RegisterSuccessView> createState() => _RegisterSuccessViewState();
}

class _RegisterSuccessViewState extends State<RegisterSuccessView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<SuccessViewModel>(
      model: SuccessViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Scaffold(
          body: Container(
            height: model.size.height,
            width: model.size.width,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 35),
            decoration: const BoxDecoration(
              color: AppColors.success,
            ),
            child: Column(
              children: [
                const Spacer(),
                AppAssets.images.icons.success.svg(),
                25.verticalGap,
                successTitle(),
                11.verticalGap,
                successMessage(),
                const Spacer(),
                setupProfileButton(
                  onTap: () {
                    model.goToNext(context);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  AppButton doneButton({required VoidCallback onTap}) {
    return AppButton.ghostPrimary(
      title: "Done",
      onTap: onTap,
      textColor: AppColors.white,
    );
  }

  AppButton setupProfileButton({required VoidCallback onTap}) {
    return AppButton.primaryWithIcon(
      title: "Setup profile",
      icon: 0.horizontalGap,
      backgroundColor: AppColors.white,
      textColor: AppColors.textColor,
      onTap: onTap,
    );
  }

  Widget successTitle() {
    return Text(
      "Welcome, ${locator<AppStateValues>().currentUser!.firstName}! 🎉",
      style: AppTextStyles.header.copyWith(
        color: AppColors.white,
      ),
    );
  }

  Widget successMessage() {
    return SizedBox(
        width: 260,
        child: Text(
          "You’ve successfully created an account on Blue Business. Now, let's set up your Business Profile.",
          style: AppTextStyles.subHeader.copyWith(
            color: const Color(0xFFB0F0EA),
          ),
          textAlign: TextAlign.center,
        ));
  }
}
