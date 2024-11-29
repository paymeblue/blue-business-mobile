import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/ui/widgets/avatar/avatar.dart';
import 'package:blue_business/ui/widgets/buttons/app_buttons.dart';
import 'package:blue_business/ui/widgets/modals/info_container.dart';
import 'package:blue_business/ui/widgets/textfield/blue_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 35),
            child: Column(
              children: [
                Expanded(
                    child: ListView(
                  children: [
                    const InfoContainer(
                        text:
                            "You can only make changes to your profile picture"),
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
                  ],
                )),
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
      initialValue: locator<AppStateValues>().currentUser!.business.name,
      title: "Business name",
      isEnabled: false,
    );
  }

  Widget cacField() {
    return BlueTextField.plaintext(
      hint: "000000000",
      initialValue: locator<AppStateValues>().currentUser!.business.cacNumber,
      title: "CAC Number",
      isEnabled: false,
    );
  }

  Widget businesCategoryField() {
    return BlueTextField.plaintext(
      hint: "John",
      initialValue: locator<AppStateValues>().currentUser!.business.category,
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
          child: BlueAvatar(
            radius: 31.sp,
            imageUrl: model.path.isEmpty
                ? locator<AppStateValues>().currentUser!.displayPicture
                : model.path,
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
