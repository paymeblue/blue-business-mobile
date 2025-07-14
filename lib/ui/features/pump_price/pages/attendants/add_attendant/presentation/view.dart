import 'package:auto_route/auto_route.dart';
import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/models/country/country_code.dart';
import 'package:blue_business/core/models/staff/get/item/staff.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/pump_price/widgets/appbar/app_bar.dart';
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
                        PumpPriceTextField.plaintext(
                          hint: 'Enter attendant name',
                          title: 'Attendant\'s name',
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
                        ),
                        12.verticalGap,
                        PumpPriceTextField.plaintext(
                          hint: 'Set password',
                          title: 'Set password',
                        ),
                        12.verticalGap,
                        PumpPriceTextField.plaintext(
                          hint: 'Confirm password',
                          title: 'Confirm password',
                        ),
                      ],
                    ),
                  ),
                  PumpPriceButton.primary(
                    title: args.attendant != null
                        ? 'Save changes'
                        : 'Add attendant',
                    onTap: () {
                      locator<AppRouter>().maybePop(true);
                    },
                  )
                ],
              ),
            ),
          );
        });
  }
}
