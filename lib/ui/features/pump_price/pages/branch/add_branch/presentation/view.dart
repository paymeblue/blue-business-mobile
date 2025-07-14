import 'package:auto_route/auto_route.dart';
import 'package:blue_business/core/config/country_code.dart';
import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/branches/branch.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/pump_price/widgets/appbar/app_bar.dart';
import 'package:blue_business/ui/features/pump_price/widgets/buttons/app_buttons.dart';
import 'package:blue_business/ui/features/pump_price/widgets/textfield/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'view_model.dart';

class AddPumpPriceBranchViewArgs {
  const AddPumpPriceBranchViewArgs({this.branch});

  final Branch? branch;
}

@RoutePage()
class AddPumpPriceBranchView extends StatelessWidget {
  const AddPumpPriceBranchView({super.key, required this.args});

  final AddPumpPriceBranchViewArgs args;

  @override
  Widget build(BuildContext context) {
    return BaseView<AddPumpPriceBranchViewModel>(
        model: AddPumpPriceBranchViewModel(),
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
                    '${args.branch != null ? 'Edit' : 'Add'} Branch',
                    style: context.textTheme.titleMedium,
                  ),
                  6.verticalGap,
                  Text(
                    'Please enter the following details below to add a fuel station branch of your business. ',
                    style: context.textTheme.bodyMedium!.copyWith(
                      height: 18.toLineHeight(14),
                    ),
                  ),
                  18.verticalGap,
                  Expanded(
                    child: ListView(
                      children: [
                        PumpPriceTextField.plaintext(
                          hint: 'Enter branch name',
                          title: 'Branch name',
                        ),
                        12.verticalGap,
                        Text(
                          'Location',
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
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.w, vertical: 10.h),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Start typing',
                            style: context.textTheme.bodyMedium!.copyWith(
                              color: AppColors.pumpPriceinputText,
                              height: 18.toLineHeight(13),
                            ),
                          ),
                        ),
                        12.verticalGap,
                        tileRow(context),
                        12.verticalGap,
                        PumpPriceTextField.currency(
                          hint: '${nairaSymbol()} 0.00',
                          title: 'Fuel price (per litre)',
                        ),
                      ],
                    ),
                  ),
                  PumpPriceButton.primary(
                      title:
                          args.branch != null ? 'Save changes' : 'Add branch',
                      onTap: () {
                        locator<AppRouter>().maybePop(true);
                      })
                ],
              ),
            ),
          );
        });
  }

  Row tileRow(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: context.getWidth(.42),
          child: PumpPriceTextField.plaintext(
            hint: '08:00',
            title: 'Opening time',
            trailing: Text(
              'AM',
              style: context.textTheme.bodyMedium,
            ),
          ),
        ),
        SizedBox(
          width: context.getWidth(.42),
          child: PumpPriceTextField.plaintext(
            hint: '09:00',
            title: 'Closing time',
            trailing: Text(
              'PM',
              style: context.textTheme.bodyMedium,
            ),
          ),
        )
      ],
    );
  }
}
