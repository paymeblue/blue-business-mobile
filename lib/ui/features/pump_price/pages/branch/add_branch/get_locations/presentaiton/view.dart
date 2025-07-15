import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/places/places_response.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/pump_price/widgets/textfield/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'view_model.dart';

class GetPumpPriceLocationsView extends StatelessWidget {
  const GetPumpPriceLocationsView({super.key, required this.onSelected});

  final ValueChanged<PlaceResult> onSelected;

  @override
  Widget build(BuildContext context) {
    return BaseView<GetPumpPriceLocationsViewModel>(
        model: GetPumpPriceLocationsViewModel(),
        builder: (context, model, _) {
          return Container(
            width: context.getWidth(),
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: AppColors.pumpPricewhite,
            ),
            child: Column(
              children: [
                PumpPriceTextField.plaintext(
                  hint: 'Start typing',
                  onChanged: model.onSearchChanged,
                ),
                10.verticalGap,
                Expanded(
                    child: ListView.separated(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                  itemBuilder: (ctxt, i) => Container(
                    decoration: BoxDecoration(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          model.results[i].name,
                          style: context.textTheme.bodyLarge,
                        ),
                        2.verticalGap,
                        Text(
                          model.results[i].formattedAddress,
                          style: context.textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ).onTap(() {
                    onSelected(model.results[i]);
                  }),
                  separatorBuilder: (ctxt, i) => 16.verticalGap,
                  itemCount: model.results.length,
                ))
              ],
            ),
          );
        });
  }
}
