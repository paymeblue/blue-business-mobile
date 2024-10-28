import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/branches/branch.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:blue_business/widgets/textfield/blue_textfield.dart';
import 'package:blue_business/widgets/textfield/dropdown.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class AddBranchView extends StatefulWidget {
  final Branch? branch;
  const AddBranchView({super.key, this.branch});

  @override
  State<AddBranchView> createState() => _AddBranchViewState();
}

class _AddBranchViewState extends State<AddBranchView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<AddBranchViewModel>(
      model: AddBranchViewModel(),
      onModelReady: (model) => model.init(context, widget.branch),
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
                if (widget.branch != null) ...[
                  branchTile(model),
                  12.verticalGap
                ],
                Expanded(
                  child: form(model),
                ),
                AppButton.primaryWithIcon(
                  title:
                      widget.branch != null ? "Edit branch" : "Add new branch",
                  icon: const Icon(
                    Icons.add,
                  ),
                  isEnabled: model.isActive(widget.branch),
                  onTap: () {
                    if (widget.branch == null) {
                      model.createBranch(context);
                    } else {
                      model.editBranch(context, widget.branch!);
                    }
                  },
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
        node: FocusNode(),
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
        node: FocusNode(),
      )
    ]);
  }

  Widget branchTile(AddBranchViewModel model) {
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
            widget.branch!.name.nameCase,
            style: AppTextStyles.smallHeader,
          ),
          Text(
            widget.branch!.location.sentenceCase,
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
        widget.branch != null ? "Edit branch details" : "Enter branch details",
        style: AppTextStyles.header,
      ),
      8.verticalGap,
      SizedBox(
        width: 350,
        child: Text(
          widget.branch != null
              ? "Update the following details to edit the following  branch."
              : "Please enter the following details below to add a branch of your business. ",
          style: AppTextStyles.subHeader,
          textAlign: TextAlign.start,
        ),
      )
    ];
  }
}
