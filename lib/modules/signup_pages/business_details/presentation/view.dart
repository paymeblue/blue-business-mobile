import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:blue_business/widgets/textfield/blue_textfield.dart';
import 'package:blue_business/widgets/textfield/dropdown.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class SignupBusinessDetailsView extends StatefulWidget {
  const SignupBusinessDetailsView({super.key});

  @override
  State<SignupBusinessDetailsView> createState() =>
      _SignupBusinessDetailsViewState();
}

class _SignupBusinessDetailsViewState extends State<SignupBusinessDetailsView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<SignupBusinessDetailsViewModel>(
      model: SignupBusinessDetailsViewModel(),
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
                      title: "Business name",
                      hint: "Dev Factory",
                      controller: model.nameController,
                      onChanged: model.onChanged,
                    ),
                    20.verticalGap,
                    BlueTextField.plaintext(
                      title: "CAC number",
                      hint: "000000000",
                      controller: model.cacController,
                      onChanged: model.onChanged,
                      keyboardType: TextInputType.number,
                    ),
                    20.verticalGap,
                    BlueDropdown.businessCategory(
                      banks: [],
                      onChanged: (val) {},
                      searchController: model.searchController,
                    ),
                    20.verticalGap,
                    BlueDropdown.show(
                      title: "Staff size",
                      banks: [],
                      onChanged: (val) {},
                      searchController: model.searchController,
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
