import 'package:blue_business/core/managers/auth_state_manager.dart';
import 'package:blue_business/core/navigation/pages.dart';
import 'package:blue_business/ui/base/base_view.dart';
import 'package:blue_business/ui/views/login/view.dart';
import 'package:blue_business/ui/widgets/app_button.dart';
import 'package:blue_business/ui/widgets/condition_check.dart';
import 'package:blue_business/ui/widgets/custom_app_bar.dart';
import 'package:blue_business/ui/widgets/custom_textfield.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'view_model.dart';

class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({super.key});

  static MaterialPage page() {
    return MaterialPage(
        name: AppPages.resetPasswordPath,
        key: ValueKey(AppPages.resetPasswordPath),
        child: const ResetPasswordView());
  }

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<ResetPasswordViewModel>(
        model: ResetPasswordViewModel(),
        onModelReady: (model) => model.init(),
        builder: (context, model, _) {
          return Scaffold(
            appBar: BlueAppBar.show(
              leadingIcon: Icons.arrow_back_ios_new,
              onBackTap: () {
                model.appStateManager.resetPassword = false;
              },
            ),
            body: SingleChildScrollView(
              child: Container(
                height: 800,
                padding: const EdgeInsets.only(
                    top: 25, bottom: 52, left: 16, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "New Password",
                      style: AppTextStyles.header,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Please enter your desired new password and ensure to follow the password format.",
                      style: AppTextStyles.subHeader,
                    ),
                    const SizedBox(height: 50),
                    const TextFieldHeader(title: "Choose a password"),
                    CustomTextField(
                      isPassword: true,
                      onChanged: model.onPasswordChanged,
                      onSaved: model.onPasswordSaved,
                      hintText: "New Password",
                    ),
                    ConditionCheck(
                      isComplete: model.password.length >= 9,
                      condition: "Must contain 9 characters",
                    ),
                    const SizedBox(height: 10),
                    ConditionCheck(
                      isComplete: model.letters.hasMatch(model.password),
                      condition: "Must contain a letter",
                    ),
                    const SizedBox(height: 10),
                    ConditionCheck(
                      isComplete: model.special.hasMatch(model.password),
                      condition: "Must contain a symbol",
                    ),
                    const SizedBox(height: 10),
                    ConditionCheck(
                      isComplete: model.numbers.hasMatch(model.password),
                      condition: "Must contain a number",
                    ),
                    const SizedBox(height: 20),
                    const TextFieldHeader(title: "Confirm password"),
                    CustomTextField(
                      isPassword: true,
                      onChanged: model.onConfPasswordChanged,
                      onSaved: model.onConfPasswordSaved,
                      hintText: "Confirm Password",
                    ),
                    const Spacer(),
                    Consumer<AuthStateManager>(builder: (context, auth, _) {
                      return Center(
                        child: AppButton(
                          onTap: () {
                            model.resetPassword(context);
                          },
                          isActive: model.password.isNotEmpty &&
                              model.confPassword == model.password &&
                              model.password.length >= 9 &&
                              model.letters.hasMatch(model.password) &&
                              model.numbers.hasMatch(model.password) &&
                              model.special.hasMatch(model.password),
                          buttonText: "Continue",
                        ),
                      );
                    })
                  ],
                ),
              ),
            ),
          );
        });
  }
}
