import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:blue_business/widgets/textfield/blue_textfield.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class AddBranchView extends StatefulWidget {
  const AddBranchView({super.key});

  @override
  State<AddBranchView> createState() => _AddBranchViewState();
}

class _AddBranchViewState extends State<AddBranchView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<AddBranchViewModel>(
      model: AddBranchViewModel(),
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
                AppButton.primaryWithIcon(
                  title: "Add new branch",
                  icon: const Icon(
                    Icons.add,
                  ),
                  onTap: () {},
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget form(AddBranchViewModel model) {
    return ListView(children: [
      BlueTextField.plaintext(
        hint: "Apapa branch",
        title: "Branch name",
        onChanged: model.onChanged,
        controller: model.nameController,
      ),
      12.verticalGap,
      BlueTextField.plaintext(
        hint: "0-10",
        title: "Staff size",
        onChanged: model.onChanged,
        controller: model.nameController,
      ),
      12.verticalGap,
      BlueTextField.plaintext(
        hint: "Apapa, Lagos",
        title: "Location",
        onChanged: model.onChanged,
        controller: model.nameController,
      )
    ]);
  }

  List<Widget> titleAndSubtitle() {
    return [
      Text(
        "Enter branch details",
        style: AppTextStyles.header,
      ),
      8.verticalGap,
      SizedBox(
        width: 350,
        child: Text(
          "Please enter the following details below to add a branch of your business. ",
          style: AppTextStyles.subHeader,
          textAlign: TextAlign.start,
        ),
      )
    ];
  }
}
