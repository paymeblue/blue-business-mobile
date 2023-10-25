import 'dart:io';

import 'package:blue_business/core/managers/auth_state_manager.dart';
import 'package:blue_business/core/navigation/pages.dart';
import 'package:blue_business/ui/base/base_view.dart';
import 'package:blue_business/ui/widgets/app_button.dart';
import 'package:blue_business/ui/widgets/custom_app_bar.dart';
import 'package:blue_business/ui/widgets/custom_textfield.dart';
import 'package:blue_business/ui/widgets/dial_code_text_field.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'view_model.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  static MaterialPage page() {
    return MaterialPage(
      name: AppPages.loginPath,
      key: ValueKey(AppPages.loginPath),
      child: const LoginView(),
    );
  }

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
        model: LoginViewModel(),
        onModelReady: (model) => model.init(),
        builder: (context, model, _) {
          return Consumer<AuthStateManager>(builder: (context, auth, _) {
            return Scaffold(
              appBar: BlueAppBar.show(
                onBackTap: () {
                  model.appStateManager.login = false;
                },
                leadingIcon:
                    auth.isRegistration ? Icons.arrow_back_ios_new : null,
              ),
              body: SingleChildScrollView(
                child: Container(
                  height: model.size.height - 80,
                  padding: const EdgeInsets.only(
                      top: 25, bottom: 52, left: 16, right: 16),
                  child: Form(
                    key: model.authStateManager.loginFormKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          auth.isRegistration
                              ? "Signup with Blue Personal"
                              : model.newLogin
                                  ? "Login Credentials"
                                  : "Login to Wallet, ${model.authStateManager.name}",
                          style: AppTextStyles.header,
                        ),
                        const SizedBox(height: 5),
                        auth.isRegistration
                            ? Text(
                                "Please enter the phone number & password linked to your Blue account.",
                                style: AppTextStyles.subHeader)
                            : model.newLogin
                                ? RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                        text:
                                            "Enter your phone number and password to  login to your blue account. ",
                                        style: AppTextStyles.subHeader,
                                      ),
                                      TextSpan(
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            model.goToResetPhone();
                                          },
                                        text: "Lost your number?",
                                        style: AppTextStyles.subHeader.copyWith(
                                            color: AppColors.primaryColor),
                                      )
                                    ]),
                                  )
                                : Text(
                                    "Please enter your password to securely login to your blue account.",
                                    style: AppTextStyles.subHeader,
                                  ),
                        const SizedBox(height: 50),
                        model.newLogin
                            ? const TextFieldHeader(title: "Phone number")
                            : const SizedBox(),
                        model.newLogin
                            ? PhoneNumberWithDialCodeTextField(
                                onChanged: (n) {
                                  model.authStateManager.username = n.number;
                                },
                                onSaved: (n) {
                                  model.authStateManager.username = n!.number;
                                },
                              )
                            : const SizedBox(),
                        SizedBox(height: model.newLogin ? 20 : 0),
                        const TextFieldHeader(title: "Your password"),
                        CustomTextField(
                          isPassword: true,
                          onChanged: (v) {
                            model.authStateManager.password = v ?? "";
                          },
                          onSaved: (v) {
                            model.authStateManager.password = v ?? "";
                          },
                          controller: model.passC,
                          hintText: "Password",
                        ),
                        if (!auth.isRegistration)
                          Align(
                              alignment: Alignment.centerRight,
                              child: AppTextButton(
                                  onTap: () {
                                    model.goToForgotPassword();
                                  },
                                  buttonText: "Forgot Password?")),
                        const SizedBox(height: 36),
                        auth.isRegistration
                            ? RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "Already have an account? ",
                                      style: AppTextStyles.subText),
                                  TextSpan(
                                      text: "Login",
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          auth.setIsRegistration(false);
                                        },
                                      style: AppTextStyles.subText.copyWith(
                                          color: AppColors.bodyTextcolor)),
                                ]),
                              )
                            : RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: model.newLogin
                                          ? "Don't have an account? "
                                          : "No, I'm not ${model.authStateManager.name}! ",
                                      style: AppTextStyles.subText),
                                  TextSpan(
                                      text: model.newLogin
                                          ? "Signup"
                                          : "Click here",
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = model.handleSubTextClick,
                                      style: AppTextStyles.subText.copyWith(
                                          color: AppColors.bodyTextcolor)),
                                ]),
                              ),
                        const Spacer(),
                        Row(
                          children: [
                            Expanded(
                              child: AppButton(
                                onTap: model.handleButtonTap,
                                isActive: model.passC.text.isNotEmpty &&
                                    auth.username.isNotEmpty,
                                buttonText:
                                    auth.isRegistration ? "Proceed" : "Login",
                              ),
                            ),
                            // if (model.authStateManager.useBiometrics)
                            //   const SizedBox(width: 12),
                            // if (model.authStateManager.useBiometrics)
                            //   GestureDetector(
                            //     onTap: () {
                            //       model.completeWithBiometrics(context);
                            //     },
                            //     child: SvgPicture.asset(
                            //       AppAssets.faceIdIcon,
                            //       height: 51,
                            //       width: 51,
                            //     ),
                            //   )
                          ],
                        ),
                        if (Platform.isIOS)
                          const SizedBox(
                            height: 40,
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          });
        });
  }
}

class TextFieldHeader extends StatelessWidget {
  final String title;
  final bool isOptional;
  const TextFieldHeader(
      {super.key, required this.title, this.isOptional = false});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
          text: title,
          style: AppTextStyles.subHeader.copyWith(color: AppColors.textcolor)),
      if (isOptional)
        TextSpan(
            text: " (Optional)",
            style: AppTextStyles.subHeader
                .copyWith(fontWeight: FontWeight.w400, fontSize: 13))
    ]));
  }
}
