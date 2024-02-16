import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:blue_business/widgets/textfield/blue_textfield.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class ConfirmPasswordView extends StatefulWidget {
  final String phone;
  const ConfirmPasswordView({
    super.key,
    required this.phone,
  });

  @override
  State<ConfirmPasswordView> createState() => _ConfirmPasswordViewState();
}

class _ConfirmPasswordViewState extends State<ConfirmPasswordView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<ConfirmPasswordViewModel>(
      model: ConfirmPasswordViewModel(),
      onModelReady: (model) => model.init(context),
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
                    title: "Your password",
                    controller: model.passwordController,
                    onChanged: model.onChanged,
                  ),
                  20.verticalGap,
                ],
              ),
            ),
            AppButton.primary(
              title: "Continue",
              isEnabled: model.passwordController.text.isNotEmpty,
              onTap: () {
                model.login(context, widget.phone);
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
        "Signup with your Blue Personal account.",
        style: AppTextStyles.header,
      ),
      8.verticalGap,
      subtitle(
        "Use your existing Blue personal account to create a Blue Business account.",
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
