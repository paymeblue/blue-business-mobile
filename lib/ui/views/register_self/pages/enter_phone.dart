import 'package:blue_business/ui/views/login/view.dart';
import 'package:blue_business/ui/views/register_self/view_model.dart';
import 'package:blue_business/ui/widgets/dial_code_text_field.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EnterPhoneView extends StatefulWidget {
  const EnterPhoneView({super.key});

  @override
  State<EnterPhoneView> createState() => _EnterPhoneViewState();
}

class _EnterPhoneViewState extends State<EnterPhoneView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<RegisterSelfViewModel>(builder: (context, model, _) {
      return Form(
        key: model.formKeys[model.authStateManager.signupIndex],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Create your blue account",
              style: AppTextStyles.header,
            ),
            const SizedBox(height: 5),
            Text(
              "Please enter your phone number and email. We’ll send an OTP to verify your phone number.",
              style: AppTextStyles.subHeader,
            ),
            const SizedBox(height: 50),
            const TextFieldHeader(title: "Phone number"),
            PhoneNumberWithDialCodeTextField(
              onChanged: (n) {
                model.authStateManager.username = n.number;
              },
              onSaved: (n) {
                model.authStateManager.username = n!.number;
              },
            ),
            const SizedBox(height: 36),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "Already have an account? ",
                    style: AppTextStyles.subText),
                TextSpan(
                    text: "Login",
                    recognizer: TapGestureRecognizer()..onTap = () {},
                    style: AppTextStyles.subText
                        .copyWith(color: AppColors.promptTextColor)),
              ]),
            ),
          ],
        ),
      );
    });
  }
}
