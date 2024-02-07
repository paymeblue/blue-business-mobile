import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:blue_business/widgets/textfield/blue_textfield.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class AddPersonalInfoView extends StatefulWidget {
  final String id;
  const AddPersonalInfoView({super.key, required this.id});

  @override
  State<AddPersonalInfoView> createState() => _AddPersonalInfoViewState();
}

class _AddPersonalInfoViewState extends State<AddPersonalInfoView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<AddPersonalInfoViewModel>(
      model: AddPersonalInfoViewModel(),
      onModelReady: (model) => model.init(context, widget.id),
      builder: (context, model, _) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                children: [
                  ...titleAndSubtitle(),
                  50.verticalGap,
                  BlueTextField.plaintext(
                      hint: "First name",
                      title: "First name",
                      controller: model.firstNameController,
                      onChanged: model.onChanged),
                  20.verticalGap,
                  BlueTextField.plaintext(
                    hint: "Middle name",
                    title: "Middle name",
                    isOptional: true,
                    controller: model.middleNameController,
                    onChanged: model.onChanged,
                  ),
                  20.verticalGap,
                  BlueTextField.plaintext(
                    hint: "Last name",
                    title: "Last name",
                    controller: model.lastNameController,
                    onChanged: model.onChanged,
                  ),
                ],
              ),
            ),
            AppButton.primary(
              title: "Continue",
              isEnabled: model.firstNameController.text.isNotEmpty &&
                  model.lastNameController.text.isNotEmpty,
              onTap: () {
                model.goToNext(context);
              },
            ),
          ],
        );
      },
    );
  }

  List<Widget> titleAndSubtitle() {
    return [
      Text(
        "What's your legal name?",
        style: AppTextStyles.header,
      ),
      8.verticalGap,
      subtitle(
        "Please enter your first and last name. Ensure it matches what’s on your legal document.",
      ),
    ];
  }

  Widget subtitle(String text) {
    return SizedBox(
      width: 350,
      child: Text(
        text,
        style: AppTextStyles.subHeader,
        textAlign: TextAlign.start,
      ),
    );
  }
}
