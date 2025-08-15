import 'package:auto_route/auto_route.dart';
import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/ui/widgets/buttons/app_buttons.dart';
import 'package:blue_business/ui/widgets/textfield/blue_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'view_model.dart';

@RoutePage()
class InitiatePasswordResetView extends StatelessWidget {
  const InitiatePasswordResetView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<InitiatePasswordResetViewModel>(
      model: InitiatePasswordResetViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () => model.goBack(context),
            icon: Icons.arrow_back_ios_new,
          ),
          body: Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 16, bottom: 35, top: 8),
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      ...titleAndSubtitle(model),
                      50.verticalGap,
                      ...phoneFieldAndGap(model),
                    ],
                  ),
                ),
                AppButton.primary(
                  title: "Continue",
                  isEnabled: model.isActive(),
                  onTap: () {
                    model.sendRecoveryPhone(context);
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }

  List<Widget> titleAndSubtitle(InitiatePasswordResetViewModel model) {
    return [
      Text(
        "Forget Password",
        style: AppTextStyles.header,
      ),
      8.verticalGap,
      SizedBox(
        width: 350.w,
        child: Text(
          "Please enter the your phone number to reset your password, an OTP will be sent.",
          style: AppTextStyles.subHeader,
          textAlign: TextAlign.start,
        ),
      )
    ];
  }

  List<Widget> phoneFieldAndGap(InitiatePasswordResetViewModel model) {
    return [
      BlueTextField.phone(
        title: "Phone number",
        selectedItem: model.selectedCountry,
        onCountryChanged: (value) {
          if (value != null) {
            model.selectedCountry = value;
          }
        },
        onChanged: model.onChanged,
        controller: model.phoneController,
        searchController: model.searchController,
      ),
      20.verticalGap,
    ];
  }
}
