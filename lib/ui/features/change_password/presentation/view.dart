import 'package:auto_route/auto_route.dart';
import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/ui/widgets/buttons/app_buttons.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';
import 'package:blue_business/ui/widgets/password_validation/password_validation.dart';
import 'package:blue_business/ui/widgets/textfield/blue_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'view_model.dart';

@RoutePage()
class ChangePasswordView extends StatefulWidget {
  const ChangePasswordView({super.key});

  @override
  State<ChangePasswordView> createState() => _ChangePasswordViewState();
}

class _ChangePasswordViewState extends State<ChangePasswordView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<ChangePasswordViewModel>(
      model: ChangePasswordViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, child) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () {
              model.goBack(context);
            },
            icon: Icons.arrow_back_ios_new,
          ),
          body: Form(
            key: model.formKey,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, bottom: 35, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: ListView(
                    children: [
                      ...titleAndSubtitle(),
                      50.verticalGap,
                      BlueTextField.password(
                        title: "Current password",
                        controller: model.passwordController,
                        onChanged: model.onChanged,
                      ),
                      20.verticalGap,
                      BlueTextField.password(
                        title: "New password",
                        controller: model.newPasswordController,
                        onChanged: model.onChanged,
                      ),
                      20.verticalGap,
                      ...conditionList(model),
                      20.verticalGap,
                      BlueTextField.password(
                        title: "Confirm password",
                        controller: model.confirmPasswordController,
                        onChanged: model.onChanged,
                      ),
                    ],
                  )),
                  35.verticalGap,
                  AppButton.primary(
                    title: "Continue",
                    isEnabled: model.isActive(),
                    onTap: () {
                      if (model.passwordController.text ==
                          model.newPasswordController.text) {
                        AppNotification.error(
                            message:
                                "New password cannot be the same as old password");
                      } else {
                        model.changePassword(context);
                      }
                    },
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  List<Widget> conditionList(ChangePasswordViewModel model) {
    return List.generate(
      model.conditions().length,
      (i) => PasswordCheckOption(
          isComplete: model.conditions()[i]["isComplete"],
          condition: model.conditions()[i]["condition"]),
    );
  }

  List<Widget> titleAndSubtitle() {
    return [
      Text(
        "Change Password",
        style: AppTextStyles.header,
      ),
      8.verticalGap,
      SizedBox(
        width: 350.w,
        child: Text(
          "Enter your current password to set a new one. Please do not share with anyone.",
          style: AppTextStyles.subHeader,
          textAlign: TextAlign.start,
        ),
      ),
    ];
  }
}
