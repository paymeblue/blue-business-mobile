import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/business_fees/business_fees.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/appbar/blue_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'view_model.dart';

class BusinessFeesView extends StatelessWidget {
  final GetBusinessFeesData data;
  const BusinessFeesView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return BaseView<BusinessFeesViewModel>(
      model: BusinessFeesViewModel(),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () {
              model.goBack(context);
            },
            icon: Icons.arrow_back_ios_new,
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                ...titleAndSubtitle(),
                20.verticalGap,
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.stroke,
                    ),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  padding:
                      EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
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
        "Business fees & Charges",
        style: AppTextStyles.header.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 20.sp,
        ),
      ),
      6.verticalGap,
      SizedBox(
        width: 350.w,
        child: Text(
          "We believe in transparency, so here’s a clear breakdown of our fees:",
          style: AppTextStyles.subHeader.copyWith(height: 1.2),
          textAlign: TextAlign.center,
        ),
      ),
    ];
  }
}
