import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:blue_business/widgets/textfield/blue_textfield.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class EnterPasswordRecoveryPhoneView extends StatefulWidget {
  const EnterPasswordRecoveryPhoneView({super.key});

  @override
  State<EnterPasswordRecoveryPhoneView> createState() =>
      _EnterPasswordRecoveryPhoneViewState();
}

class _EnterPasswordRecoveryPhoneViewState
    extends State<EnterPasswordRecoveryPhoneView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<EnterPasswordRecoveryPhoneViewModel>(
      model: EnterPasswordRecoveryPhoneViewModel(),
      onModelReady: (model) => model.init(context),
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
                ...titleAndSubtitle(),
                50.verticalGap,
                ...phoneFieldAndGap(model),
                15.verticalGap,
                const Spacer(),
                AppButton.primary(
                  title: "Send OTP",
                  isEnabled: model.phoneController.text.isNotEmpty &&
                      model.phoneController.text.length >= 10,
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

  List<Widget> titleAndSubtitle() {
    return [
      Text(
        "Forgot Password",
        style: AppTextStyles.header,
      ),
      8.verticalGap,
      SizedBox(
        width: 350,
        child: Text(
          "Please enter the your phone number to reset your password, an OTP will be sent.",
          style: AppTextStyles.subHeader,
          textAlign: TextAlign.start,
        ),
      )
    ];
  }

  List<Widget> phoneFieldAndGap(EnterPasswordRecoveryPhoneViewModel model) {
    return [
      BlueTextField.phone(
        title: "Phone number",
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
