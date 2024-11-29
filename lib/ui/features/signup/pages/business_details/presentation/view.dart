import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/models/signup/data/signup_data.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/enums.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/ui/widgets/buttons/app_buttons.dart';
import 'package:blue_business/ui/widgets/paging/loading_shimmer.dart';
import 'package:blue_business/ui/widgets/textfield/blue_textfield.dart';
import 'package:blue_business/ui/widgets/textfield/dropdown.dart';
import 'view_model.dart';
import 'package:flutter/material.dart';

class AddBusinessDetailsView extends StatelessWidget {
  const AddBusinessDetailsView({super.key, required this.data});

  final SignupData data;

  @override
  Widget build(BuildContext context) {
    return BaseView<AddBusinessDetailsViewModel>(
      model: AddBusinessDetailsViewModel(),
      onModelReady: (model) => model.init(context, data),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () {
              model.goBack(
                context,
              );
            },
            icon: Icons.arrow_back_ios_new,
          ),
          body: Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 16, bottom: 35, top: 8),
            child: Form(
              key: model.formKey,
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
                        model.categoryFetchState == FetchState.loading
                            ? BlueLoadingTile.withoutImage()
                            : BlueDropdown.businessCategories(
                                values: model.categories,
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
                      model.createBusinessProfile(context);
                    },
                  )
                ],
              ),
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
