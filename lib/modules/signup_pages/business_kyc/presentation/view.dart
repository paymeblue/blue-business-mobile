import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/shareholders/get/data/shareholders.dart';
import 'package:blue_business/core/models/signup/data/signup_data.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:blue_business/widgets/modals/info_container.dart';
import 'package:blue_business/widgets/textfield/blue_textfield.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class SignupBusinessKycView extends StatefulWidget {
  final SignupData data;
  final Shareholders? shareholder;
  const SignupBusinessKycView(
      {super.key, required this.data, this.shareholder});

  @override
  State<SignupBusinessKycView> createState() => _SignupBusinessKycViewState();
}

class _SignupBusinessKycViewState extends State<SignupBusinessKycView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<SignupBusinessKycViewModel>(
      model: SignupBusinessKycViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () {
              model.goBack(context);
            },
            icon: Icons.arrow_back_ios_new,
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      ...titleAndSubtitle(),
                      50.verticalGap,
                      if (widget.shareholder == null)
                        ...nameFields(model)
                      else
                        shareholderTile(),
                      20.verticalGap,
                      BlueTextField.plaintext(
                        title: "Bank verification number",
                        hint: "000000000",
                        controller: model.bvnController,
                        onChanged: model.onChanged,
                        keyboardType: TextInputType.number,
                      ),
                      15.verticalGap,
                      const InfoContainer(
                          text: "Dial *565*0# on your phone to get BVN.")
                    ],
                  ),
                ),
                AppButton.primary(
                  title: "Continue",
                  isEnabled: model.isActive(widget.shareholder),
                  onTap: () {
                    if (widget.shareholder != null) {
                      model.addShareholderBvn(
                          widget.shareholder!, widget.data, context);
                    } else {
                      model.createShareholder(widget.data, context);
                    }
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget shareholderTile() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: AppColors.inputField,
      ),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.blue,
              border: Border.all(color: AppColors.blue),
            ),
            alignment: Alignment.center,
            child: Text(
              widget.shareholder!.name.initials,
              style: AppTextStyles.midHeader.copyWith(
                fontWeight: FontWeight.w500,
                color: AppColors.white,
              ),
            ),
          ),
          12.horizontalGap,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.shareholder!.name.nameCase,
                  style: AppTextStyles.smallHeader,
                ),
                if (widget.shareholder!.address != null)
                  Text(
                    widget.shareholder!.address.sentenceCase,
                    style: AppTextStyles.smallText
                        .copyWith(color: AppColors.bodyTextColor2),
                  )
              ],
            ),
          ),
          16.horizontalGap,
        ],
      ),
    );
  }

  List<Widget> nameFields(SignupBusinessKycViewModel model) {
    return [
      BlueTextField.plaintext(
        title: "First name",
        hint: "Justin",
        controller: model.firstNameController,
        onChanged: model.onChanged,
      ),
      20.verticalGap,
      BlueTextField.plaintext(
        title: "Last name",
        hint: "Case",
        controller: model.lastNameController,
        onChanged: model.onChanged,
      ),
    ];
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
