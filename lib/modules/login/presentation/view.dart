import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/io/storage/keys.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:blue_business/widgets/textfield/blue_textfield.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class LoginView extends StatefulWidget {
  final VoidCallback? onComplete;
  const LoginView({super.key, this.onComplete});

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
          return Scaffold(
            appBar: BlueAppBar.primary(
              onBackTap: model.goBack,
            ),
            body: Container(
              height: model.size.height,
              width: model.size.width,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ListView(
                      children: [
                        if (StorageValues.name.isEmpty ||
                            StorageValues.username.isEmpty)
                          ...titleAndSubtitle(model)
                        else
                          ...nameTitleAndSubtitle(StorageValues.name),
                        50.verticalGap,
                        if (StorageValues.name.isEmpty ||
                            StorageValues.username.isEmpty)
                          ...phoneFieldAndGap(model),
                        BlueTextField.password(
                            title: "Password",
                            controller: model.passwordController,
                            onChanged: model.onChanged),
                        forgotPasswordButton(() {
                          model.goToRecoverPassword(context);
                        }),
                        37.verticalGap,
                        if (StorageValues.name.isEmpty ||
                            StorageValues.username.isEmpty)
                          subTextWithSignupAction(model)
                        else
                          subTextWithLoginAction(model),
                      ],
                    ),
                  ),
                  buttonRow(model),
                ],
              ),
            ),
          );
        });
  }

  Widget buttonRow(LoginViewModel model) {
    return SizedBox(
      width: model.size.width,
      child: Row(
        children: [
          Expanded(
            child: AppButton.primary(
              title: "Login",
              isEnabled: model.phoneController.text.isNotEmpty &&
                  model.passwordController.text.isNotEmpty,
              onTap: () {
                model.login(context, onComplete: widget.onComplete);
              },
            ),
          ),
          if (model.useBiometrics && StorageValues.password.isNotEmpty) ...[
            20.horizontalGap,
            InkWell(
              onTap: () {
                model.completeWithBiometrics(context,
                    onComplete: widget.onComplete);
              },
              child: Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.midGrey,
                ),
                child: AppAssets.images.icons.faceId.svg(),
              ),
            ),
          ]
        ],
      ),
    );
  }

  Widget forgotPasswordButton(VoidCallback onTap) {
    return Container(
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.only(top: 4),
      child: GestureDetector(
        onTap: onTap,
        child: DecoratedBox(
          decoration: const BoxDecoration(),
          child: Text(
            "Forgot password",
            style: AppTextStyles.subText,
          ),
        ),
      ),
    );
  }

  RichText subTextWithLoginAction(LoginViewModel model) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
          text: "No, I'm not ${StorageValues.name.trimRight()}! ",
          style: AppTextStyles.subText,
        ),
        TextSpan(
            text: "Click here",
            style: AppTextStyles.subText.copyWith(
              color: AppColors.success,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () async {
                await model.deleteStorageItems();
              })
      ]),
    );
  }

  RichText subTextWithSignupAction(LoginViewModel model) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
          text: "Don't have an account? ",
          style: AppTextStyles.subText,
        ),
        TextSpan(
            text: " Sign up",
            style: AppTextStyles.subText.copyWith(
              color: AppColors.blue,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                model.goToSignup(context);
              })
      ]),
    );
  }

  List<Widget> phoneFieldAndGap(LoginViewModel model) {
    return [
      BlueTextField.phone(
        title: "Phone",
        selectedItem: model.selectedCountry,
        onCountryChanged: model.onCountryChanged,
        onChanged: model.onChanged,
        controller: model.phoneController,
        searchController: model.searchController,
      ),
      20.verticalGap,
    ];
  }

  List<Widget> titleAndSubtitle(LoginViewModel model) {
    return [
      Text(
        "Login Credentials",
        style: AppTextStyles.header,
      ),
      8.verticalGap,
      subtitle(
        "Enter your phone number and password to  login to your blue account.",
        actionText: " Lost your number?",
        action: () {
          model.goToenterRecoveryCode(context);
        },
      ),
    ];
  }

  List<Widget> nameTitleAndSubtitle(String name) {
    return [
      Text(
        "Login to your wallet, $name",
        style: AppTextStyles.header,
      ),
      8.verticalGap,
      subtitle(
        "Please enter your password to securely login to your blue account.",
      ),
    ];
  }

  Widget subtitle(String text, {String? actionText, VoidCallback? action}) {
    return SizedBox(
      width: 350,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: text,
              style: AppTextStyles.subHeader,
            ),
            if (actionText != null)
              TextSpan(
                text: actionText,
                recognizer: TapGestureRecognizer()..onTap = action,
                style: AppTextStyles.subHeader.copyWith(
                  color: AppColors.blue,
                ),
              )
          ],
        ),
        textAlign: TextAlign.start,
      ),
    );
  }
}
