import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:blue_business/widgets/password_validation/password_validation.dart';
import 'package:blue_business/widgets/textfield/blue_textfield.dart';
import 'package:flutter/material.dart';
import 'view_model.dart';

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
          ),
          body: Container(
            height: model.size.height,
            width: model.size.width,
            padding:
                const EdgeInsets.only(left: 16, right: 16, bottom: 35, top: 35),
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
                    model.changePassword(context);
                  },
                )
              ],
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
        width: 350,
        child: Text(
          "Enter your current password to set a new one. Please do not share with anyone.",
          style: AppTextStyles.subHeader,
          textAlign: TextAlign.start,
        ),
      ),
    ];
  }
}
