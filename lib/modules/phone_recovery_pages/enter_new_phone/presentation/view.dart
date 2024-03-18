import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/country_code.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:blue_business/widgets/textfield/blue_textfield.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class EnterNewPhoneView extends StatefulWidget {
  final int id;
  const EnterNewPhoneView({super.key, required this.id});

  @override
  State<EnterNewPhoneView> createState() => _EnterNewPhoneViewState();
}

class _EnterNewPhoneViewState extends State<EnterNewPhoneView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<EnterNewPhoneViewModel>(
      model: EnterNewPhoneViewModel(),
      onModelReady: (model) => model.init(context, widget.id),
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

  List<Widget> phoneFieldAndGap(EnterNewPhoneViewModel model) {
    return [
      BlueTextField.phone(
        title: "New phone number",
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
