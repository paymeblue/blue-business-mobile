import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:blue_business/widgets/textfield/blue_textfield.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_text_styles.dart';
import 'view_model.dart';

class VerifyPinRecoveryOtpView extends StatefulWidget {
  final String phone;
  const VerifyPinRecoveryOtpView({super.key, required this.phone});

  @override
  State<VerifyPinRecoveryOtpView> createState() =>
      _VerifyPinRecoveryOtpViewState();
}

class _VerifyPinRecoveryOtpViewState extends State<VerifyPinRecoveryOtpView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<VerifyPinRecoveryOtpViewModel>(
      onModelReady: (model) => model.init(context, widget.phone),
      model: VerifyPinRecoveryOtpViewModel(),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () {
              model.goBack(context);
            },
            icon: Icons.arrow_back_ios_new,
          ),
          body: Container(
            height: model.size.height,
            width: model.size.width,
            padding:
                const EdgeInsets.only(left: 16, right: 16, bottom: 35, top: 35),
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
                    model.resendOtp,
                  ),
                ),
                const Spacer(),
                AppButton.primary(
                  title: "Continue",
                  isEnabled: model.canContinue,
                  onTap: () {
                    model.verifyOtp(context);
                  },
                ),
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
        "Verify phone number",
        style: AppTextStyles.header,
      ),
      8.verticalGap,
      SizedBox(
        width: 350,
        child: Text(
          "Please enter the OTP code sent to the number ending in ${widget.phone.substring(widget.phone.length - 4)} to create a new PIN.",
          style: AppTextStyles.subHeader,
          textAlign: TextAlign.start,
        ),
      ),
    ];
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
