import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/io/api/country_code.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:blue_business/widgets/password_validation/password_validation.dart';
import 'package:blue_business/widgets/textfield/blue_textfield.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class EnterAccountPhoneView extends StatefulWidget {
  const EnterAccountPhoneView({super.key});

  @override
  State<EnterAccountPhoneView> createState() => _EnterAccountPhoneViewState();
}

class _EnterAccountPhoneViewState extends State<EnterAccountPhoneView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<EnterAccountPhoneViewModel>(
      onModelReady: (model) => model.init(context),
      model: EnterAccountPhoneViewModel(),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () {
              model.goBack(context);
            },
            icon: Icons.arrow_back_ios_new,
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
            child: Form(
              key: model.formKey,
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                      children: [
                        ...titleAndSubtitle(),
                        50.verticalGap,
                        ...phoneFieldAndGap(model),
                        20.verticalGap,
                        BlueTextField.password(
                          title: "Choose a password",
                          controller: model.passwordController,
                          onChanged: model.onChanged,
                        ),
                        20.verticalGap,
                        ...List.generate(
                          model.conditions().length,
                          (i) => PasswordCheckOption(
                              isComplete: model.conditions()[i]["isComplete"],
                              condition: model.conditions()[i]["condition"]),
                        ),
                        20.verticalGap,
                        BlueTextField.password(
                          title: "Confirm password",
                          controller: model.confirmPasswordController,
                          onChanged: model.onChanged,
                        ),
                        15.verticalGap,
                        subtext(() {
                          model.goToLogin(context);
                        }),
                      ],
                    ),
                  ),
                  AppButton.primary(
                    title: "Send OTP",
                    isEnabled: model.isActive(),
                    onTap: () {
                      model.register(context);
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget subtext(VoidCallback onTap) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
          text: "Already have an account? ",
          style: AppTextStyles.subText,
        ),
        TextSpan(
          text: "Login",
          style: AppTextStyles.subText.copyWith(
            color: AppColors.success,
          ),
          recognizer: TapGestureRecognizer()..onTap = onTap,
        )
      ]),
    );
  }

  List<Widget> titleAndSubtitle() {
    return [
      Text(
        "What's your phone number?",
        style: AppTextStyles.header,
      ),
      8.verticalGap,
      SizedBox(
        width: 350,
        child: Text(
          "Please enter your phone number. We’ll send an OTP to verify it.",
          style: AppTextStyles.subHeader,
          textAlign: TextAlign.start,
        ),
      )
    ];
  }

  List<Widget> phoneFieldAndGap(EnterAccountPhoneViewModel model) {
    return [
      BlueTextField.phone(
        title: "Phone",
        countries: countryCodes,
        selectedItem: model.selectedCountry,
        onCountryChanged: (value) {
          model.selectedCountry = value;
        },
        onChanged: model.onChanged,
        controller: model.phoneController,
        searchController: model.searchController,
      ),
      20.verticalGap,
    ];
  }
}
