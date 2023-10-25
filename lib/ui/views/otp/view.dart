import 'package:blue_business/core/navigation/pages.dart';
import 'package:blue_business/ui/base/base_view.dart';
import 'package:blue_business/ui/widgets/app_button.dart';
import 'package:blue_business/ui/widgets/custom_app_bar.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'view_model.dart';
import 'package:flutter/material.dart';

class SendOtpView extends StatefulWidget {
  const SendOtpView({super.key});

  static MaterialPage page() {
    return MaterialPage(
        name: AppPages.otpPath,
        key: ValueKey(AppPages.otpPath),
        child: const SendOtpView());
  }

  @override
  State<SendOtpView> createState() => _SendOtpViewState();
}

class _SendOtpViewState extends State<SendOtpView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<SendOtpViewModel>(
      model: SendOtpViewModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.show(
            leadingIcon: Icons.arrow_back_ios_new,
            onBackTap: () {
              model.appStateManager.otp = false;
              model.stopTimer();
            },
          ),
          body: Container(
              padding: const EdgeInsets.only(
                  top: 25, bottom: 52, left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.authStateManager.isRegistration
                        ? "Verify your phone number"
                        : model.appStateManager.resetPhone
                            ? "Verify new phone number"
                            : "Verify your identity",
                    style: AppTextStyles.header,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    model.authStateManager.isRegistration
                        ? "Please enter the OTP sent to your phone number ending in ${model.authStateManager.phone.substring(model.authStateManager.phone.length - 4)}"
                        : model.appStateManager.resetPhone
                            ? "Please enter the OTP sent to your phone number to change it successfully."
                            : "Please enter the OTP sent to your phone number for password reset",
                    style: AppTextStyles.subHeader,
                  ),
                  const SizedBox(height: 50),
                  OtpTextField(
                    numberOfFields: 4,
                    fieldWidth: 65,
                    showFieldAsBox: true,
                    mainAxisAlignment: MainAxisAlignment.start,
                    filled: true,
                    textStyle: AppTextStyles.textField,
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
                              onTap: () {
                                model.onTapResend(context);
                              },
                              buttonText: "Resend code",
                            )
                          : Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 8.5),
                              decoration: BoxDecoration(
                                color: AppColors.grey,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "Resend in ${model.timeString()}",
                                style: AppTextStyles.subText,
                              ),
                            ),
                    ],
                  ),
                  const Spacer(),
                  Center(
                    child: AppButton(
                      onTap: model.authStateManager.onSendOtp,
                      isActive: model.canContinue,
                      buttonText: "Continue",
                    ),
                  ),
                ],
              )),
        );
      },
    );
  }
}
