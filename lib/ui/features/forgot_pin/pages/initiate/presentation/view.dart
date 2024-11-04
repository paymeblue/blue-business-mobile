import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/models/security_question/get/data/get_question_data.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/ui/widgets/buttons/app_buttons.dart';
import 'package:blue_business/ui/widgets/textfield/blue_textfield.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'view_model.dart';

class InitiatePinResetView extends StatelessWidget {
  const InitiatePinResetView({super.key, this.securityQuestion});

  final GetQuestionData? securityQuestion;

  @override
  Widget build(BuildContext context) {
    return BaseView<InitiatePinResetViewModel>(
      model: InitiatePinResetViewModel(),
      onModelReady: (model) => model.init(context, securityQuestion),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () => model.goBack(context),
            icon: Icons.arrow_back_ios_new,
          ),
          body: Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 16, bottom: 35, top: 8),
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      ...titleAndSubtitle(model),
                      50.verticalGap,
                      if (model.useQuestion)
                        ...questionFieldAndGap(model)
                      else
                        ...phoneFieldAndGap(model),
                      if (securityQuestion != null) subtextAction(model),
                    ],
                  ),
                ),
                AppButton.primary(
                  title: "Continue",
                  isEnabled: model.isActive(),
                  onTap: () {
                    model.sendRecoveryPhone(context);
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget subtextAction(InitiatePinResetViewModel model) {
    return RichText(
      text: TextSpan(
        children: [
          if (model.useQuestion)
            TextSpan(
              text: "I have a recovery phone. ",
              style: AppTextStyles.subText,
            )
          else
            TextSpan(
              text: "I will answer security questions instead. ",
              style: AppTextStyles.subText,
            ),
          TextSpan(
            text: "Click here",
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                model.useQuestion = !model.useQuestion;
              },
            style: AppTextStyles.subText,
          )
        ],
      ),
    );
  }

  List<Widget> titleAndSubtitle(InitiatePinResetViewModel model) {
    return [
      Text(
        "Forget PIN",
        style: AppTextStyles.header,
      ),
      8.verticalGap,
      SizedBox(
        width: 350.w,
        child: Text(
          model.useQuestion
              ? "Please answer the question below to verify your identity"
              : "Please enter your recovery phone number to receive an OTP",
          style: AppTextStyles.subHeader,
          textAlign: TextAlign.start,
        ),
      )
    ];
  }

  List<Widget> phoneFieldAndGap(InitiatePinResetViewModel model) {
    return [
      BlueTextField.phone(
        title: "Phone number",
        selectedItem: model.selectedCountry,
        onCountryChanged: (value) {
          if (value != null) {
            model.selectedCountry = value;
          }
        },
        onChanged: model.onChanged,
        controller: model.phoneController,
        searchController: model.searchController,
      ),
      20.verticalGap,
    ];
  }

  List<Widget> questionFieldAndGap(InitiatePinResetViewModel model) {
    return [
      BlueTextField.plaintext(
        title: securityQuestion!.question,
        hint: "Answer...",
        onChanged: model.onChanged,
        controller: model.answerController,
      ),
      20.verticalGap,
    ];
  }
}
