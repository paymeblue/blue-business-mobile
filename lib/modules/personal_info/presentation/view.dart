import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/widgets/avatar/avatar.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:blue_business/widgets/modals/info_container.dart';
import 'package:blue_business/widgets/textfield/blue_textfield.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class PersonalInfoView extends StatefulWidget {
  const PersonalInfoView({super.key});

  @override
  State<PersonalInfoView> createState() => _PersonalInfoViewState();
}

class _PersonalInfoViewState extends State<PersonalInfoView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<PersonalInfoViewModel>(
      model: PersonalInfoViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () {
              model.goBack(context);
            },
          ),
          body: Container(
            height: model.size.height,
            width: model.size.width,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 35),
            child: Column(
              children: [
                const InfoContainer(
                    text:
                        "You can only make changes to your number and profile picture"),
                12.verticalGap,
                avatarRow(model),
                15.verticalGap,
                businessNameField(),
                20.verticalGap,
                cacField(),
                20.verticalGap,
                businesCategoryField(),
                20.verticalGap,
                phoneField(model),
                const Spacer(),
                AppButton.primary(
                  title: "Save changes",
                  onTap: model.uploadImage,
                  isEnabled: model.path.isNotEmpty,
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget businessNameField() {
    return BlueTextField.plaintext(
      hint: "Dev Factory",
      // initialValue: locator<AppStateValues>().currentUser!.firstName,
      title: "Business name",
      isEnabled: false,
    );
  }

  Widget cacField() {
    return BlueTextField.plaintext(
      hint: "000000000",
      // initialValue: locator<AppStateValues>().currentUser!.middleName,
      title: "CAC Number",
      isEnabled: false,
    );
  }

  Widget businesCategoryField() {
    return BlueTextField.plaintext(
      hint: "John",
      // initialValue: locator<AppStateValues>().currentUser!.lastName,
      title: "Business Category",
      isEnabled: false,
    );
  }

  Widget phoneField(PersonalInfoViewModel model) {
    return BlueTextField.phone(
      hint: "John",
      title: "Phone number",
      onCountryChanged: (value) {},
      selectedItem: model.selectedCountryCode,
      initialValue: model.phone(),
      isEnabled: false,
    );
  }

  Widget avatarRow(PersonalInfoViewModel model) {
    return Row(
      children: [
        GestureDetector(
          onTap: model.pickImage,
          //FIX: the imageUr;
          child: const BlueAvatar(
            radius: 31,
            // imageUrl: model.path.isEmpty
            // ? locator<AppStateValues>().currentUser!.displayPic
            // : model.path,
          ),
        ),
        10.horizontalGap,
        Text(
          "Tap to change",
          style: AppTextStyles.subHeader,
        )
      ],
    );
  }
}
