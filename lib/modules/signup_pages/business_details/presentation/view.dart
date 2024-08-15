import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/models/signup/data/signup_data.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:blue_business/widgets/paging/loading_shimmer.dart';
import 'package:blue_business/widgets/textfield/blue_textfield.dart';
import 'package:blue_business/widgets/textfield/dropdown.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class SignupBusinessDetailsView extends StatefulWidget {
  final SignupData data;
  const SignupBusinessDetailsView({super.key, required this.data});

  @override
  State<SignupBusinessDetailsView> createState() =>
      _SignupBusinessDetailsViewState();
}

class _SignupBusinessDetailsViewState extends State<SignupBusinessDetailsView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<SignupBusinessDetailsViewModel>(
      model: SignupBusinessDetailsViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () {
              model.goBack(context, widget.data);
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
                      BlueTextField.plaintext(
                        title: "Business name",
                        hint: "Dev Factory",
                        controller: model.nameController,
                        onChanged: model.onChanged,
                      ),
                      20.verticalGap,
                      BlueTextField.plaintext(
                        title: "CAC number",
                        hint: "000000000",
                        controller: model.cacController,
                        onChanged: model.onChanged,
                      ),
                      20.verticalGap,
                      model.gettingCat
                          ? BlueLoadingTile.withoutImage()
                          : BlueDropdown.businessCategory(
                              categories: model.categories,
                              value: model.category,
                              onChanged: (val) {
                                model.category = val;
                              },
                              searchController: model.searchController,
                            ),
                      20.verticalGap,
                      BlueDropdown.show(
                        title: "Staff size",
                        values: model.sizes,
                        value: model.staffSize,
                        onChanged: (val) {
                          model.staffSize = val;
                        },
                      ),
                    ],
                  ),
                ),
                AppButton.primary(
                  title: "Continue",
                  isEnabled: model.isActive(),
                  onTap: () {
                    model.createBusinessProfile(context, widget.data);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
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
