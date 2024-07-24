import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/country_code.dart';
import 'package:blue_business/core/models/security_question/get/data/get_question_data.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:blue_business/widgets/textfield/blue_textfield.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class EnterPinRecoveryPhoneView extends StatefulWidget {
  final GetQuestionData? securityQuestion;
  const EnterPinRecoveryPhoneView({
    super.key,
    required this.securityQuestion,
  });

  @override
  State<EnterPinRecoveryPhoneView> createState() =>
      _EnterPinRecoveryPhoneViewState();
}

class _EnterPinRecoveryPhoneViewState extends State<EnterPinRecoveryPhoneView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<EnterPinRecoveryPhoneViewModel>(
      model: EnterPinRecoveryPhoneViewModel(),
      onModelReady: (model) => model.init(
        context,
        widget.securityQuestion,
      ),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(onBackTap: () {
            model.goBack(context);
          }),
          body: Container(
            height: model.size.height,
            width: model.size.width,
            padding:
                const EdgeInsets.only(left: 16, right: 16, bottom: 35, top: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...titleAndSubtitle(model),
                50.verticalGap,
                if (model.useQuestion)
                  ...questionFieldAndGap(model)
                else
                  ...phoneFieldAndGap(model),
                if (widget.securityQuestion != null) subtextAction(model),
                const Spacer(),
                AppButton.primary(
                  title: "Send OTP",
                  isEnabled: model.isActive(),
                  onTap: () {
                    model.onButtonTap(context);
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget subtextAction(EnterPinRecoveryPhoneViewModel model) {
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

  List<Widget> titleAndSubtitle(EnterPinRecoveryPhoneViewModel model) {
    return [
      Text(
        "Forget PIN",
        style: AppTextStyles.header,
      ),
      8.verticalGap,
      SizedBox(
        width: 350,
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

  List<Widget> phoneFieldAndGap(EnterPinRecoveryPhoneViewModel model) {
    return [
      BlueTextField.phone(
        title: "Phone number",
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

  List<Widget> questionFieldAndGap(EnterPinRecoveryPhoneViewModel model) {
    return [
      BlueTextField.plaintext(
        title: widget.securityQuestion!.question,
        hint: "Answer...",
        onChanged: model.onChanged,
        controller: model.answerController,
      ),
      20.verticalGap,
    ];
  }
}
