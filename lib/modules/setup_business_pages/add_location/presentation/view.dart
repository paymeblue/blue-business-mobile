import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:blue_business/widgets/textfield/blue_textfield.dart';
import 'package:blue_business/widgets/textfield/dropdown.dart';
import 'package:flutter/material.dart';
import 'package:nigerian_states_and_lga/nigerian_states_and_lga.dart';

import 'view_model.dart';

class AddLocationView extends StatefulWidget {
  final int id;
  const AddLocationView({super.key, required this.id});

  @override
  State<AddLocationView> createState() => _AddLocationViewState();
}

class _AddLocationViewState extends State<AddLocationView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<AddBusinessLocationViewModel>(
        model: AddBusinessLocationViewModel(),
        onModelReady: (model) => model.init(context),
        builder: (context, model, _) {
          return Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    ...titleAndSubtitle(),
                    50.verticalGap,
                    ...addressAndCity(model),
                    20.verticalGap,
                    statesDropdown(model),
                    20.verticalGap,
                    if (model.state != null) lgaDropdown(model),
                  ],
                ),
              ),
              AppButton.primary(
                title: "Continue",
                isEnabled: model.isActive(),
                onTap: () {
                  model.sendAddress(context, widget.id);
                },
              )
            ],
          );
        });
  }

  List<Widget> addressAndCity(AddBusinessLocationViewModel model) {
    return [
      BlueTextField.plaintext(
          hint: "1234, Johnson close, Jameson Ave.",
          title: "Business address",
          controller: model.addressController),
      20.verticalGap,
      BlueTextField.plaintext(
        hint: "Wonton city",
        controller: model.cityController,
        title: "City/town",
      )
    ];
  }

  Widget statesDropdown(AddBusinessLocationViewModel model) {
    return BlueDropdown.show(
      banks: NigerianStatesAndLGA.allStates,
      onChanged: (v) {
        model.state = v;
      },
      searchController: model.searchController,
      value: model.state,
      title: "State",
    );
  }

  Widget lgaDropdown(AddBusinessLocationViewModel model) {
    return BlueDropdown.show(
      banks: NigerianStatesAndLGA.getStateLGAs(model.state!),
      onChanged: (v) {
        model.lga = v;
      },
      searchController: model.searchController,
      value: model.lga,
      title: "Local government",
    );
  }

  List<Widget> titleAndSubtitle() {
    return [
      Text(
        "Business Address",
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
