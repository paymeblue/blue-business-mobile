import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/appbar/blue_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'view_model.dart';

class WithdrawalMethodView extends StatelessWidget {
  const WithdrawalMethodView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<WithdrawalMethodViewModel>(
      model: WithdrawalMethodViewModel(),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...titleAndSubtitle(),
                20.verticalGap,
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
        "Withdraw Funds",
        style: AppTextStyles.header.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 20.sp,
        ),
      ),
      6.verticalGap,
      SizedBox(
        width: 350.w,
        child: Text(
          "Choose how you'd like to withdraw your funds: manually or automatically.",
          style: AppTextStyles.subHeader.copyWith(height: 1.2),
          textAlign: TextAlign.start,
        ),
      ),
    ];
  }
}
