import 'package:blue_business/ui/views/login/view.dart';
import 'package:blue_business/ui/views/register_self/view_model.dart';
import 'package:blue_business/ui/widgets/condition_check.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../widgets/custom_textfield.dart';

class EnterPasswordView extends StatefulWidget {
  const EnterPasswordView({super.key});

  @override
  State<EnterPasswordView> createState() => _EnterPasswordViewState();
}

class _EnterPasswordViewState extends State<EnterPasswordView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<RegisterSelfViewModel>(builder: (context, model, _) {
      return Form(
        key: model.formKeys[model.authStateManager.signupIndex],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Create your password",
              style: AppTextStyles.header,
            ),
            const SizedBox(height: 5),
            Text(
              "Please create a strong password to sign in to your Blue account.",
              style: AppTextStyles.subHeader,
            ),
            const SizedBox(height: 50),
            const TextFieldHeader(title: "Password"),
            CustomTextField(
              hintText: "Password",
              isPassword: true,
              onChanged: model.onPasswordChanged,
              onSaved: model.onPasswordSaved,
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
            const TextFieldHeader(
              title: "Confirm password",
            ),
            CustomTextField(
              hintText: "Confirm password",
              isPassword: true,
              onChanged: model.onConfPasswordChanged,
              onSaved: model.onConfPasswordSaved,
              validator: model.confirmPasswordValidator,
            ),
          ],
        ),
      );
    });
  }
}
