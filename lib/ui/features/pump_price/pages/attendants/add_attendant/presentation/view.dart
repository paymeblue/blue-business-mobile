import 'package:auto_route/auto_route.dart';
import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/country/country_code.dart';
import 'package:blue_business/core/models/staff/get/item/staff.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/enums.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/pump_price/widgets/appbar/app_bar.dart';
import 'package:blue_business/ui/features/pump_price/widgets/avatar/avatar.dart';
import 'package:blue_business/ui/features/pump_price/widgets/buttons/app_buttons.dart';
import 'package:blue_business/ui/features/pump_price/widgets/textfield/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'view_model.dart';

class AddPumpPriceAttendantViewArgs {
  const AddPumpPriceAttendantViewArgs({this.attendant});

  final Staff? attendant;
}

@RoutePage()
class AddPumpPriceAttendantView extends StatelessWidget {
  const AddPumpPriceAttendantView({super.key, required this.args});

  final AddPumpPriceAttendantViewArgs args;

  @override
  Widget build(BuildContext context) {
    return BaseView<AddPumpPriceAttendantViewModel>(
        model: AddPumpPriceAttendantViewModel(),
        onModelReady: (model) => model.init(args.attendant),
        builder: (context, model, _) {
          return Scaffold(
            appBar: PumpPriceAppBar.primary(
              onBackTap: () => locator<AppRouter>().back(),
            ),
            body: Padding(
              padding: EdgeInsets.only(
                  left: 20.w, right: 20.w, top: 24.h, bottom: 35.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    args.attendant != null
                        ? 'Edit Attendant Details'
                        : 'Add Fuel Attendant',
                    style: context.textTheme.titleMedium,
                  ),
                  if (args.attendant == null) ...[
                    6.verticalGap,
                    Text(
                      'Please enter the following details below of the attendant you want to add to your business.',
                      style: context.textTheme.bodyMedium!.copyWith(
                        height: 18.toLineHeight(14),
                      ),
                    )
                  ],
                  18.verticalGap,
                  Expanded(
                    child: ListView(
                      children: [
                        if (args.attendant == null) ...[
                          Align(
                            alignment: Alignment.centerLeft,
                            child: avatarRow(model),
                          ),
                          12.verticalGap
                        ] else
                          6.verticalGap,
                        PumpPriceTextField.plaintext(
                          hint: 'Enter attendant name',
                          title: 'Attendant\'s name',
                          controller: model.name,
                          onChanged: model.onChanged,
                        ),
                        12.verticalGap,
                        ...selectableTextField(
                          context,
                          title: 'Branch',
                          hint: 'Start typing',
                          value: model.branch.orEmpty,
                          onTap: () {
                            model.showBranchesBottomSheet(context);
                          },
                        ),
                        12.verticalGap,
                        PumpPriceTextField.phone(
                          context,
                          country: CountryCode(
                            countryCode: 'NG',
                            name: 'Nigeria',
                            dialCode: '+234',
                          ),
                          title: 'Phone number',
                          hint: '000-000-0000',
                          controller: model.phone,
                          onChanged: model.onChanged,
                        ),
                        12.verticalGap,
                        PumpPriceTextField.password(
                          hint: 'Set password',
                          title: 'Set password',
                          controller: model.password,
                          validationText: model.passwordValidationText,
                          onChanged: model.onPasswordChanged,
                        ),
                        12.verticalGap,
                        PumpPriceTextField.password(
                          hint: 'Confirm password',
                          title: 'Confirm password',
                          controller: model.confirmPassword,
                          validationText: model.confirmPasswordValidationText,
                          onChanged: model.onConfirmPasswordChanged,
                        ),
                      ],
                    ),
                  ),
                  PumpPriceButton.primary(
                    title: args.attendant != null
                        ? 'Save changes'
                        : 'Add attendant',
                    isEnabled: model.isActive() || model.isEditActive(),
                    isLoading: model.buttonState == FetchState.loading,
                    onTap: () {
                      model.createStaff();
                    },
                  )
                ],
              ),
            ),
          );
        });
  }

  List<Widget> selectableTextField(
    BuildContext context, {
    required String title,
    required String hint,
    required String value,
    required VoidCallback onTap,
    Widget? trailing,
  }) {
    return [
      Text(
        title,
        style: context.textTheme.bodyMedium!.copyWith(
          height: 18.toLineHeight(13),
          color: AppColors.pumpPricebodyText,
        ),
      ),
      4.verticalGap,
      Container(
        width: context.mediaQuery.size.width,
        height: 50.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: AppColors.pumpPricegreyBg,
          ),
          color: AppColors.pumpPricegreyBg,
        ),
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        alignment: Alignment.centerLeft,
        child: Row(
          children: [
            Expanded(
              child: Text(
                value.isEmpty ? hint : value,
                style: context.textTheme.bodyMedium!.copyWith(
                  color: AppColors.pumpPriceinputText,
                  height: 18.toLineHeight(13),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            8.horizontalGap,
            if (trailing != null) trailing,
          ],
        ),
      ).onTap(onTap),
    ];
  }

  Widget avatarRow(AddPumpPriceAttendantViewModel model) {
    return GestureDetector(
      onTap: model.pickImage,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(6.dm),
            child: PumpPriceAvatar(
              radius: 35.r,
              imageUrl: model.path ?? args.attendant?.displayPicture.orNull,
            ),
          ),
          Positioned(
            bottom: 0.h,
            right: 0.w,
            child: AppAssets.images.pumpPrice.svg.camera.svg(),
          )
        ],
      ),
    );
  }
}
