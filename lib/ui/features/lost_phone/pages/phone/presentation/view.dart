import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/ui/widgets/buttons/app_buttons.dart';
import 'package:blue_business/ui/widgets/textfield/blue_textfield.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class ResetPhoneView extends StatelessWidget {
  final int id;
  const ResetPhoneView({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return BaseView<ResetPhoneViewModel>(
      model: ResetPhoneViewModel(),
      onModelReady: (model) => model.init(context, id),
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
                Expanded(
                    child: ListView(
                  children: [
                    ...titleAndSubtitle(),
                    50.verticalGap,
                    ...phoneFieldAndGap(model),
                    15.verticalGap,
                  ],
                )),
                AppButton.primary(
                  title: "Continue",
                  isEnabled: model.phoneController.text.isNotEmpty &&
                      model.phoneController.text.length >= 10,
                  onTap: () {
                    model.sendNewPhone(context);
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
        "What’s your new phone number?",
        style: AppTextStyles.header,
      ),
      8.verticalGap,
      SizedBox(
        width: 350,
        child: Text(
          "Please enter your new phone number to login securely to your Blue account.",
          style: AppTextStyles.subHeader,
          textAlign: TextAlign.start,
        ),
      )
    ];
  }

  List<Widget> phoneFieldAndGap(ResetPhoneViewModel model) {
    return [
      BlueTextField.phone(
        title: "New phone number",
        selectedItem: model.selectedCountry,
        onCountryChanged: (value) {
          if (value != null) model.selectedCountry = value;
        },
        onChanged: model.onChanged,
        controller: model.phoneController,
        searchController: model.searchController,
      ),
      20.verticalGap,
    ];
  }
}
