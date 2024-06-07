import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:blue_business/widgets/paging/loading_shimmer.dart';
import 'package:blue_business/widgets/textfield/blue_textfield.dart';
import 'package:blue_business/widgets/textfield/dropdown.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class AddBusinessNameView extends StatefulWidget {
  const AddBusinessNameView({super.key});

  @override
  State<AddBusinessNameView> createState() => _AddBusinessNameViewState();
}

class _AddBusinessNameViewState extends State<AddBusinessNameView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<AddBusinessNameViewModel>(
      model: AddBusinessNameViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  ...titleAndSubtitle(),
                  50.verticalGap,
                  ...nameFieldAndGap(model),
                  ...dropdownAndGap(model),
                  BlueTextField.plaintext(
                    title: "Description",
                    hint: "Tell us more about ${model.nameController.text}",
                    onChanged: model.onChanged,
                    controller: model.descriptionController,
                    // minLines: 1,
                    // maxLines: 5,
                  ),
                ],
              ),
            ),
            AppButton.primary(
              title: "Continue",
              isEnabled: model.isActive(),
              onTap: () {},
            ),
          ],
        );
      },
    );
  }

  List<Widget> titleAndSubtitle() {
    return [
      Text(
        "Setup business profile",
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

  List<Widget> nameFieldAndGap(AddBusinessNameViewModel model) {
    return [
      BlueTextField.plaintext(
          title: "Business name",
          hint: "Dev Factory",
          controller: model.nameController,
          onChanged: model.onChanged),
      20.verticalGap,
    ];
  }

  List<Widget> dropdownAndGap(AddBusinessNameViewModel model) {
    return [
      model.gettingCat
          ? BlueLoadingTile.withoutImage()
          : categoryDropdown(model),
      20.verticalGap,
    ];
  }

  Widget categoryDropdown(AddBusinessNameViewModel model) {
    return BlueDropdown.businessCategory(
      banks: model.categories,
      onChanged: model.onCategoryChanged,
      searchController: model.searchController,
      value: model.selectedCategory,
    );
  }
}
