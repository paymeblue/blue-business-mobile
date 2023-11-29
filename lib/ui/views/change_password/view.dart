import 'package:blue_business/core/helpers/auth/timeout.dart';
import 'package:blue_business/core/helpers/text/validators.dart';
import 'package:blue_business/core/navigation/pages.dart';
import 'package:blue_business/ui/base/base_view.dart';
import 'package:blue_business/ui/views/login/view.dart';
import 'package:blue_business/ui/widgets/app_button.dart';
import 'package:blue_business/ui/widgets/condition_check.dart';
import 'package:blue_business/ui/widgets/custom_app_bar.dart';
import 'package:blue_business/ui/widgets/custom_textfield.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class ChangePasswordView extends StatefulWidget {
  const ChangePasswordView({super.key});

  static MaterialPage page() {
    return MaterialPage(
        name: AppPages.changePassPath,
        key: ValueKey(AppPages.changePassPath),
        child: const ChangePasswordView());
  }

  @override
  State<ChangePasswordView> createState() => _ChangePasswordViewState();
}

class _ChangePasswordViewState extends State<ChangePasswordView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BaseView<ChangePasswordViewModel>(
        model: ChangePasswordViewModel(),
        onModelReady: (model) => model.init(),
        onDispose: (p0) {
          Timeout.dispose();
        },
        builder: (context, model, _) {
          return GestureDetector(
            onTap: () {
              Timeout.resetTimer();
            },
            onPanDown: (details) {
              Timeout.resetTimer();
            },
            child: Scaffold(
                appBar: BlueAppBar.show(
                  leadingIcon: Icons.arrow_back_ios_new,
                  onBackTap: () {
                    model.appStateManager.changePass = false;
                  },
                ),
                body: SingleChildScrollView(
                  child: Container(
                    height: size.height - 80,
                    padding: EdgeInsets.only(
                        top: 25,
                        bottom: size.height > 900 ? 80 : 52,
                        left: 16,
                        right: 16),
                    child: Form(
                      key: model.formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Change Password",
                            style: AppTextStyles.header,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Enter your current password to set a new one. Please do not share your password with anyone.",
                            style: AppTextStyles.subHeader,
                          ),
                          const SizedBox(height: 50),
                          const TextFieldHeader(title: "Current Password"),
                          CustomTextField(
                            isPassword: true,
                            onChanged: model.onCurrentPassChanged,
                            onSaved: model.onCurrentPassSaved,
                            hintText: "Current Password",
                            validator: Validators.text,
                          ),
                          const SizedBox(height: 20),
                          const TextFieldHeader(title: "New Password"),
                          CustomTextField(
                            isPassword: true,
                            onChanged: model.onNewPassChanged,
                            onSaved: model.onNewPassSaved,
                            hintText: "New Password",
                          ),
                          ConditionCheck(
                            isComplete: model.newPass.length >= 9,
                            condition: "Must contain 9 characters",
                          ),
                          const SizedBox(height: 10),
                          ConditionCheck(
                            isComplete: model.letters.hasMatch(model.newPass),
                            condition: "Must contain a letter",
                          ),
                          const SizedBox(height: 10),
                          ConditionCheck(
                            isComplete: model.special.hasMatch(model.newPass),
                            condition: "Must contain a symbol",
                          ),
                          const SizedBox(height: 10),
                          ConditionCheck(
                            isComplete: model.numbers.hasMatch(model.newPass),
                            condition: "Must contain a number",
                          ),
                          const SizedBox(height: 20),
                          const TextFieldHeader(title: "Confirm Password"),
                          CustomTextField(
                            isPassword: true,
                            onChanged: model.onConfirmPassChanged,
                            onSaved: model.onConfirmPassSaved,
                            hintText: "Confirm Password",
                            validator: model.confPassValidator,
                          ),
                          const Spacer(),
                          Center(
                              child: AppButton(
                            onTap: () {
                              model.changePassword(context);
                            },
                            buttonText: "Continue",
                            isActive: model.password.isNotEmpty &&
                                model.newPass.isNotEmpty &&
                                model.confPass == model.newPass &&
                                model.newPass.length >= 9 &&
                                model.letters.hasMatch(model.newPass) &&
                                model.numbers.hasMatch(model.newPass) &&
                                model.special.hasMatch(model.newPass),
                          ))
                        ],
                      ),
                    ),
                  ),
                )),
          );
        });
  }
}
