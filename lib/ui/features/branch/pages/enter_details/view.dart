import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/branches/branch.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/ui/widgets/buttons/app_buttons.dart';
import 'package:blue_business/ui/widgets/textfield/blue_textfield.dart';
import 'package:blue_business/ui/widgets/textfield/dropdown.dart';

import 'package:flutter/material.dart';

import 'view_model.dart';

class EnterBranchDetailsView extends StatelessWidget {
  final Branch? branch;
  const EnterBranchDetailsView({super.key, this.branch});

  @override
  Widget build(BuildContext context) {
    return BaseView<EnterBranchDetailsViewModel>(
      model: EnterBranchDetailsViewModel(),
      onModelReady: (model) => model.init(context, branch),
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
                Expanded(
                  child: form(model),
                ),
                if (branch != null)
                  AppButton.primary(
                    title: "Edit branch",
                    isEnabled: model.isActiveWithBranch(branch!),
                    onTap: () {
                      model.editBranch(context, branch!);
                    },
                  )
                else
                  AppButton.primaryWithIcon(
                    title: "Add new branch",
                    icon: const Icon(
                      Icons.add,
                    ),
                    isEnabled: model.isActive(),
                    onTap: () {
                      model.createBranch(context);
                    },
                  )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget form(EnterBranchDetailsViewModel model) {
    return ListView(children: [
      ...titleAndSubtitle(),
      25.verticalGap,
      if (branch != null) ...[branchTile(model), 12.verticalGap],
      BlueTextField.plaintext(
        hint: "Apapa branch",
        title: "Branch name",
        onChanged: model.onChanged,
        controller: model.nameController,
      ),
      12.verticalGap,
      BlueDropdown.show(
        title: "Staff size",
        values: model.sizes,
        value: model.staffSize,
        onChanged: (val) {
          model.staffSize = val;
        },
      ),
      12.verticalGap,
      BlueTextField.plaintext(
        hint: "Apapa, Lagos",
        title: "Location",
        onChanged: model.onChanged,
        controller: model.locationController,
      )
    ]);
  }

  Widget branchTile(EnterBranchDetailsViewModel model) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      width: model.size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: AppColors.inputField,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            branch!.name.nameCase,
            style: AppTextStyles.smallHeader,
          ),
          Text(
            branch!.location.sentenceCase,
            style: AppTextStyles.smallText
                .copyWith(color: AppColors.bodyTextColor2),
          )
        ],
      ),
    );
  }

  List<Widget> titleAndSubtitle() {
    return [
      Text(
        branch != null ? "Edit branch details" : "Enter branch details",
        style: AppTextStyles.header,
      ),
      8.verticalGap,
      SizedBox(
        width: 350,
        child: Text(
          branch != null
              ? "Update the following details to edit the following  branch."
              : "Please enter the following details below to add a branch of your business. ",
          style: AppTextStyles.subHeader,
          textAlign: TextAlign.start,
        ),
      )
    ];
  }
}
