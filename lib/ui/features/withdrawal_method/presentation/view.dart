import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/appbar/blue_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'view_model.dart';

@RoutePage()
class WithdrawalMethodView extends StatelessWidget {
  const WithdrawalMethodView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<WithdrawalMethodViewModel>(
      model: WithdrawalMethodViewModel(),
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
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...titleAndSubtitle(),
                20.verticalGap,
                Material(
                  child: InkWell(
                    splashColor: AppColors.paleBlue,
                    onTap: () {
                      model.goToInitiateWithdrawal(context);
                    },
                    child: DecoratedBox(
                      decoration: const BoxDecoration(),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Instant Withdrawal',
                                  style: AppTextStyles.smallHeader,
                                ),
                                Text(
                                  'Withdraw your funds immediately',
                                  style: AppTextStyles.smallText.copyWith(
                                      color: AppColors.bodyTextColor2),
                                )
                              ],
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: AppColors.primary,
                            size: 16.sp,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: AppColors.grey3,
                  height: 24.h,
                ),
                Material(
                  child: InkWell(
                    splashColor: AppColors.paleBlue,
                    onTap: () {
                      model.isEnabled = !model.isEnabled;
                      model.onAutoWithdrawalChanged(!model.isEnabled);
                    },
                    child: DecoratedBox(
                      decoration: const BoxDecoration(),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Auto-Withdrawal',
                                  style: AppTextStyles.smallHeader,
                                ),
                                Text(
                                  'Funds will be withdrawn automatically daily',
                                  style: AppTextStyles.smallText.copyWith(
                                      color: AppColors.bodyTextColor2),
                                )
                              ],
                            ),
                          ),
                          Transform.scale(
                            scale: .6,
                            child: SizedBox(
                              width: 30.w,
                              child: Switch.adaptive(
                                value: model.isEnabled,
                                activeTrackColor: AppColors.primary,
                                inactiveTrackColor:
                                    AppColors.brightBlue.withOpacityValue(.5),
                                onChanged: (v) {
                                  model.isEnabled = v;
                                  unawaited(model.onAutoWithdrawalChanged(v));
                                },
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
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
