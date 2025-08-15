import 'package:auto_route/auto_route.dart';
import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/ui/widgets/buttons/app_buttons.dart';
import 'package:blue_business/ui/widgets/password_validation/password_validation.dart';
import 'package:blue_business/ui/widgets/textfield/blue_textfield.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

@RoutePage()
class ResetPasswordView extends StatelessWidget {
  final String phone;
  const ResetPasswordView({super.key, required this.phone});

  @override
  Widget build(BuildContext context) {
    return BaseView<ResetPasswordViewModel>(
      model: ResetPasswordViewModel(),
      onModelReady: (model) => model.init(context, phone),
      builder: (context, model, child) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () {
              model.goBack(context);
            },
          ),
          body: Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 16, bottom: 35, top: 8),
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      ...titleAndSubtitle(),
                      50.verticalGap,
                      BlueTextField.password(
                        title: "Choose a password",
                        controller: model.passwordController,
                        onChanged: model.onChanged,
                      ),
                      20.verticalGap,
                      ...List.generate(
                        model.conditions().length,
                        (i) => PasswordCheckOption(
                            isComplete: model.conditions()[i]["isComplete"],
                            condition: model.conditions()[i]["condition"]),
                      ),
                      20.verticalGap,
                      BlueTextField.password(
                        title: "Confirm password",
                        controller: model.confirmPasswordController,
                        onChanged: model.onChanged,
                      ),
                    ],
                  ),
                ),
                35.verticalGap,
                AppButton.primary(
                  title: "Reset password",
                  isEnabled: model.isActive(),
                  onTap: () {
                    model.resetPassword(context);
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }

  List<Widget> titleAndSubtitle() {
    return [
      Text(
        "New Password",
        style: AppTextStyles.header,
      ),
      8.verticalGap,
      SizedBox(
        width: 350,
        child: Text(
          "Please enter your desired new password and ensure to follow the password format.",
          style: AppTextStyles.subHeader,
          textAlign: TextAlign.start,
        ),
      ),
    ];
  }
}
