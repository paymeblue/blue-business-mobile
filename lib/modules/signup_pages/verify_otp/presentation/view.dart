import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:blue_business/widgets/textfield/blue_textfield.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_text_styles.dart';
import 'view_model.dart';

class VerifyRegistrationOtpView extends StatefulWidget {
  final String phone;
  const VerifyRegistrationOtpView({super.key, required this.phone});

  @override
  State<VerifyRegistrationOtpView> createState() =>
      _VerifyRegistrationOtpViewState();
}

class _VerifyRegistrationOtpViewState extends State<VerifyRegistrationOtpView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<VerifyRegistrationOtpViewModel>(
      onModelReady: (model) => model.init(context, widget.phone),
      model: VerifyRegistrationOtpViewModel(),
      builder: (context, model, _) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...titleAndSubtitle(),
              50.verticalGap,
              BlueTextField.otp(
                onChanged: model.onChanged,
                onSubmit: model.onSubmit,
              ),
              35.verticalGap,
              subtextAndTimeAction(
                "Didn’t receive a code?",
                resendButton(
                  model.canResend
                      ? "Resend code"
                      : "Resend in ${model.timeString()}",
                  model.canResend,
                  () {},
                ),
              ),
              const Spacer(),
              AppButton.primary(
                title: "Verify phone number",
                isEnabled: model.canContinue,
                onTap: () {
                  model.goToNext(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  List<Widget> titleAndSubtitle() {
    return [
      Text(
        "Verify your phone number",
        style: AppTextStyles.header,
      ),
      8.verticalGap,
      subtitle(
        "Please enter the OTP code sent to the number ending in ${widget.phone.substring(widget.phone.length - 4)}",
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

  Widget resendButton(String text, bool isEnabled, VoidCallback action) {
    return GestureDetector(
      onTap: () {
        if (isEnabled) {
          action();
        }
      },
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: !isEnabled ? AppColors.grey : AppColors.primary,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(
          text,
          style: AppTextStyles.subText.copyWith(
            color: isEnabled ? AppColors.white : AppColors.bodyTextColor,
          ),
        ),
      ),
    );
  }

  Widget subtextAndTimeAction(String text, Widget action) {
    return SizedBox(
      width: 350,
      child: Row(
        children: [
          Text(
            text,
            style: AppTextStyles.subText,
            textAlign: TextAlign.start,
          ),
          15.horizontalGap,
          action,
        ],
      ),
    );
  }
}
