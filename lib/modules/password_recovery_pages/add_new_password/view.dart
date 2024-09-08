import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:blue_business/widgets/password_validation/password_validation.dart';
import 'package:blue_business/widgets/textfield/blue_textfield.dart';
import 'package:flutter/material.dart';
import 'view_model.dart';

class AddNewPasswordView extends StatefulWidget {
  final String phone;
  const AddNewPasswordView({super.key, required this.phone});

  @override
  State<AddNewPasswordView> createState() => _AddNewPasswordViewState();
}

class _AddNewPasswordViewState extends State<AddNewPasswordView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<AddNewPasswordViewModel>(
      model: AddNewPasswordViewModel(),
      onModelReady: (model) => model.init(context, widget.phone),
      builder: (context, model, child) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () {},
          ),
          body: Container(
            height: model.size.height,
            width: model.size.width,
            padding:
                const EdgeInsets.only(left: 16, right: 16, bottom: 35, top: 35),
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
