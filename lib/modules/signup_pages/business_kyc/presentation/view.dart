import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/models/shareholders/get/data/shareholders.dart';
import 'package:blue_business/core/models/signup/data/signup_data.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:blue_business/widgets/textfield/blue_textfield.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class SignupBusinessKycView extends StatefulWidget {
  final SignupData data;
  final Shareholders? shareholder;
  const SignupBusinessKycView(
      {super.key, required this.data, this.shareholder});

  @override
  State<SignupBusinessKycView> createState() => _SignupBusinessKycViewState();
}

class _SignupBusinessKycViewState extends State<SignupBusinessKycView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<SignupBusinessKycViewModel>(
      model: SignupBusinessKycViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    ...titleAndSubtitle(),
                    50.verticalGap,
                    BlueTextField.plaintext(
                      title: "First name",
                      hint: "Justin",
                      controller: model.firstNameController,
                      onChanged: model.onChanged,
                    ),
                    20.verticalGap,
                    BlueTextField.plaintext(
                      title: "Last name",
                      hint: "Case",
                      controller: model.lastNameController,
                      onChanged: model.onChanged,
                    ),
                    20.verticalGap,
                    BlueTextField.plaintext(
                      title: "Bank verification number",
                      hint: "000000000",
                      controller: model.bvnController,
                      onChanged: model.onChanged,
                      keyboardType: TextInputType.number,
                    ),
                  ],
                ),
              ),
              AppButton.primary(
                title: "Continue",
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
        "Enter your business details",
        style: AppTextStyles.header,
      ),
      8.verticalGap,
      SizedBox(
        width: 350,
        child: Text(
          "Please provide details of your business by filling the information below.",
          style: AppTextStyles.subHeader,
          textAlign: TextAlign.start,
        ),
      )
    ];
  }
}
