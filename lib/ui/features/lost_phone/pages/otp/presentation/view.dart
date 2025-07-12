import 'package:auto_route/auto_route.dart';
import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/recover_phone/add/data/recover_phone_data.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/ui/widgets/buttons/app_buttons.dart';
import 'package:blue_business/ui/widgets/textfield/blue_textfield.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

@RoutePage()
class VerifyPhoneOtpView extends StatelessWidget {
  const VerifyPhoneOtpView({super.key, required this.data});

  final SendNewPhoneData data;

  @override
  Widget build(BuildContext context) {
    return BaseView<VerifyPhoneOtpViewModel>(
      onModelReady: (model) => model.init(context, data),
      model: VerifyPhoneOtpViewModel(),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () {
              model.goBack(context);
            },
            icon: Icons.arrow_back_ios_new,
          ),
          body: Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 16, bottom: 35, top: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: ListView(
                  children: [
                    ...titleAndSubtitle(),
                    50.verticalGap,
                    BlueTextField.otp(
                      onChanged: model.onChanged,
                      onSubmit: model.onSubmit,
                    ),
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
                  ],
                )),
                AppButton.primary(
                  title: "Verify OTP",
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
        "Verify your phone number",
        style: AppTextStyles.header,
      ),
      8.verticalGap,
      SizedBox(
        width: 350,
        child: Text(
          "Please enter the OTP code sent to the number ending in ${data.newPhone.substring(data.newPhone.length - 4)}",
          style: AppTextStyles.subHeader,
          textAlign: TextAlign.start,
        ),
      )
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
