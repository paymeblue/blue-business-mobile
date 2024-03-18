import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/country_code.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:blue_business/widgets/password_validation/password_validation.dart';
import 'package:blue_business/widgets/textfield/blue_textfield.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class AddStaffView extends StatefulWidget {
  const AddStaffView({super.key});

  @override
  State<AddStaffView> createState() => _AddStaffViewState();
}

class _AddStaffViewState extends State<AddStaffView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<AddStaffViewModel>(
      model: AddStaffViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () => model.goBack(context),
          ),
          body: Container(
            height: MediaQuery.sizeOf(context).height,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...titleAndSubtitle(),
                25.verticalGap,
                Expanded(
                  child: form(model),
                ),
                AppButton.primary(
                  title: "Grant access",
                  isEnabled: model.nameController.text.isNotEmpty &&
                      model.phoneController.text.isNotEmpty &&
                      model.isActive(),
                  onTap: () {
                    model.confirmAccess(context);
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget form(AddStaffViewModel model) {
    return ListView(
      children: [
        BlueTextField.plaintext(
          hint: "Sharon Tate",
          title: "Staff name",
          onChanged: model.onChanged,
          controller: model.nameController,
        ),
        12.verticalGap,
        BlueTextField.phone(
          title: "Phone number",
          countries: countryCodes,
          selectedItem: model.selectedCountry,
          onCountryChanged: model.onCountryChanged,
          onChanged: model.onChanged,
          controller: model.phoneController,
          searchController: model.searchController,
        ),
        12.verticalGap,
        BlueTextField.password(
          controller: model.passwordController,
          onChanged: model.onChanged,
        ),
        10.verticalGap,
        ...List.generate(
          model.conditions().length,
          (i) => PasswordCheckOption(
              isComplete: model.conditions()[i]["isComplete"],
              condition: model.conditions()[i]["condition"]),
        )
      ],
    );
  }

  List<Widget> titleAndSubtitle() {
    return [
      Text(
        "Enter staff details",
        style: AppTextStyles.header,
      ),
      8.verticalGap,
      SizedBox(
        width: 350,
        child: Text(
          "Enter the name and phone number of the staff you want to grant access to.",
          style: AppTextStyles.subHeader,
          textAlign: TextAlign.start,
        ),
      )
    ];
  }
}
