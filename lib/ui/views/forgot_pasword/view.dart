import 'package:blue_business/core/managers/auth_state_manager.dart';
import 'package:blue_business/core/navigation/pages.dart';
import 'package:blue_business/ui/base/base_view.dart';
import 'package:blue_business/ui/views/forgot_pasword/view_model.dart';
import 'package:blue_business/ui/views/login/view.dart';
import 'package:blue_business/ui/widgets/app_button.dart';
import 'package:blue_business/ui/widgets/custom_app_bar.dart';
import 'package:blue_business/ui/widgets/dial_code_text_field.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({super.key});

  static MaterialPage page() {
    return MaterialPage(
      name: AppPages.forgotPasswordPath,
      key: ValueKey(AppPages.forgotPasswordPath),
      child: const ForgotPasswordView(),
    );
  }

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<ForgotPasswordViewModel>(
        model: ForgotPasswordViewModel(),
        onModelReady: (model) => model.init(),
        builder: (context, model, _) {
          return Scaffold(
              appBar: BlueAppBar.show(
                leadingIcon: Icons.close,
                onBackTap: () {
                  model.appStateManager.forgotPassword = false;
                },
              ),
              body: Container(
                  padding: const EdgeInsets.only(
                      top: 25, bottom: 52, left: 16, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Forgot Password",
                        style: AppTextStyles.header,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Please enter the your phone number to reset your password, an OTP will be sent.",
                        style: AppTextStyles.subHeader,
                      ),
                      const SizedBox(height: 50),
                      const TextFieldHeader(title: "Phone number"),
                      PhoneNumberWithDialCodeTextField(
                        onChanged: (n) {
                          model.authStateManager.phone = n.number;
                        },
                        onSaved: (n) {
                          model.authStateManager.phone = n!.number;
                        },
                      ),
                      const Spacer(),
                      Consumer<AuthStateManager>(builder: (context, auth, _) {
                        return Center(
                          child: AppButton(
                            onTap: () => model.goToOtpScreen(context),
                            isActive: auth.phone.isNotEmpty,
                            buttonText: "Continue",
                          ),
                        );
                      })
                    ],
                  )));
        });
  }
}
