import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/models/signup_profile/request/signup_profile_request.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:blue_business/widgets/password_validation/password_validation.dart';
import 'package:blue_business/widgets/textfield/blue_textfield.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class AddPasswordView extends StatefulWidget {
  final String id;
  final SignupProfileRequest request;
  const AddPasswordView({super.key, required this.id, required this.request});

  @override
  State<AddPasswordView> createState() => _AddPasswordViewState();
}

class _AddPasswordViewState extends State<AddPasswordView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<AddPasswordViewModel>(
      model: AddPasswordViewModel(),
      onModelReady: (model) => model.init(context, widget.id, widget.request),
      builder: (context, model, _) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            AppButton.primary(
              title: "Continue",
              isEnabled: model.isActive(),
              onTap: () {
                model.goToNext(context);
              },
            )
          ],
        );
      },
    );
  }

  List<Widget> titleAndSubtitle() {
    return [
      Text(
        "Create your password",
        style: AppTextStyles.header,
      ),
      8.verticalGap,
      subtitle(
        "Please create a strong password to sign in to your Blue account.",
      ),
    ];
  }

  Widget subtitle(String text) {
    return SizedBox(
      width: 350,
      child: Text(
        text,
        style: AppTextStyles.subHeader,
        textAlign: TextAlign.start,
      ),
    );
  }
}
