import 'package:blue_business/ui/views/register_self/view_model.dart';
import 'package:blue_business/ui/widgets/app_button.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:provider/provider.dart';

class EnterOtpView extends StatefulWidget {
  const EnterOtpView({super.key});

  @override
  State<EnterOtpView> createState() => _EnterOtpViewState();
}

class _EnterOtpViewState extends State<EnterOtpView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<RegisterSelfViewModel>(builder: (context, model, _) {
      return Form(
        key: model.formKeys[model.authStateManager.signupIndex],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Verify your phone number",
              style: AppTextStyles.header,
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Text(
                "Please enter the OTP code sent to the number ending in ${model.authStateManager.username.substring(model.authStateManager.username.length - 4)}",
                style: AppTextStyles.subHeader,
              ),
            ),
            const SizedBox(height: 50),
            OtpTextField(
              numberOfFields: 4,
              mainAxisAlignment: MainAxisAlignment.start,
              fieldWidth: 65,
              showFieldAsBox: true,
              filled: true,
              onSubmit: model.onCodeSubmit,
              onCodeChanged: model.onCodeChanged,
              fillColor: AppColors.grey,
              enabledBorderColor: AppColors.grey,
              focusedBorderColor: AppColors.primaryColor,
              disabledBorderColor: AppColors.grey,
              borderRadius: BorderRadius.circular(5),
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Text(
                  "Didn’t receive a code?",
                  style: AppTextStyles.subText,
                ),
                const SizedBox(width: 10),
                model.canResend
                    ? AppSmallButton(
                        onTap: () {},
                        buttonText: "Resend code",
                      )
                    : Text(
                        "Resend in ${model.timeString()}",
                        style: AppTextStyles.subText,
                      ),
              ],
            ),
          ],
        ),
      );
    });
  }
}
