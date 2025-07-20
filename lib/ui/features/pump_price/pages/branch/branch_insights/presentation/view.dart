import 'package:auto_route/auto_route.dart';
import 'package:blue_business/core/config/country_code.dart';
import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/pump_price/branch/pump_price_branch.dart';
import 'package:blue_business/core/models/sales_analytics/line_chart/line_chart_data.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/pump_price/widgets/tabs/line_chart.dart';
import 'package:blue_business/ui/features/pump_price/widgets/tabs/period_tab.dart';
import 'package:blue_business/ui/widgets/appbar/blue_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import 'view_model.dart';

@RoutePage()
class PumpPriceBranchInsightsView extends StatefulWidget {
  final FillingStation station;
  const PumpPriceBranchInsightsView({super.key, required this.station});

  @override
  State<PumpPriceBranchInsightsView> createState() =>
      _PumpPriceBranchInsightsViewState();
}

class _PumpPriceBranchInsightsViewState
    extends State<PumpPriceBranchInsightsView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<BranchInsightsViewModel>(
        model: BranchInsightsViewModel(),
        onModelReady: (model) => model.init(context, widget.station.id),
        builder: (context, model, _) {
          return Scaffold(
            backgroundColor: AppColors.pumpPricegreyBg2,
            appBar: BlueAppBar.primary(
              icon: Icons.arrow_back_ios_new,
              onBackTap: () {
                locator<AppRouter>().maybePop();
              },
              title: Text(
                "Insights",
                style: context.textTheme.bodyLarge,
              ),
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 35.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PumpPriceFilterTab(
                    selectedValue: model.selectedType,
                    tabs: model.types,
                    onChanged: model.onTypeChanged,
                  ),
                  25.verticalGap,
                  Expanded(
                    child: ListView(
                      children: [
                        salesStatsContainer(model),
                        8.verticalGap,
                        transactionsList(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  Widget transactionsList() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 12.h,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.pumpPricegreyBg),
        borderRadius: BorderRadius.circular(10.r),
        color: AppColors.pumpPricewhite,
      ),
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Container(
            height: 55.h,
            decoration: BoxDecoration(),
            child: Row(
              children: [
                AppAssets.images.pumpPrice.svg.completed.svg(),
                10.horizontalGap,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Adamu Glory',
                              style: context.textTheme.bodyLarge,
                            ),
                            TextSpan(
                              text: ' • 25 litres',
                              style: context.textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                      2.verticalGap,
                      Text(
                        '20 Jun 2025',
                        style: context.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
                10.horizontalGap,
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: nairaSymbol(),
                        style: context.textTheme.titleLarge!.copyWith(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          height: 100.percentToLineHeight(
                            13,
                          ),
                          letterSpacing: -3.percentToLetterSpacing(13),
                        ),
                      ),
                      TextSpan(
                        text: ' 25,000',
                        style: context.textTheme.titleLarge!.copyWith(
                          fontSize: 16.sp,
                          height: 100.percentToLineHeight(
                            16,
                          ),
                          letterSpacing: -4.percentToLetterSpacing(16),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          12.verticalGap,
          Container(
            height: 55.h,
            decoration: BoxDecoration(),
            child: Row(
              children: [
                AppAssets.images.pumpPrice.svg.completed.svg(),
                10.horizontalGap,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Adamu Glory',
                              style: context.textTheme.bodyLarge,
                            ),
                            TextSpan(
                              text: ' • 25 litres',
                              style: context.textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                      2.verticalGap,
                      Text(
                        '20 Jun 2025',
                        style: context.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
                10.horizontalGap,
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: nairaSymbol(),
                        style: context.textTheme.titleLarge!.copyWith(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          height: 100.percentToLineHeight(
                            13,
                          ),
                          letterSpacing: -3.percentToLetterSpacing(13),
                        ),
                      ),
                      TextSpan(
                        text: ' 25,000',
                        style: context.textTheme.titleLarge!.copyWith(
                          fontSize: 16.sp,
                          height: 100.percentToLineHeight(
                            16,
                          ),
                          letterSpacing: -4.percentToLetterSpacing(16),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          12.verticalGap,
          Container(
            height: 55.h,
            decoration: BoxDecoration(),
            child: Row(
              children: [
                AppAssets.images.pumpPrice.svg.pending.svg(),
                10.horizontalGap,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Adamu Glory',
                              style: context.textTheme.bodyLarge,
                            ),
                            TextSpan(
                              text: ' • 25 litres',
                              style: context.textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                      2.verticalGap,
                      Text(
                        '20 Jun 2025',
                        style: context.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
                10.horizontalGap,
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: nairaSymbol(),
                        style: context.textTheme.titleLarge!.copyWith(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          height: 100.percentToLineHeight(
                            13,
                          ),
                          letterSpacing: -3.percentToLetterSpacing(13),
                        ),
                      ),
                      TextSpan(
                        text: ' 25,000',
                        style: context.textTheme.titleLarge!.copyWith(
                          fontSize: 16.sp,
                          height: 100.percentToLineHeight(
                            16,
                          ),
                          letterSpacing: -4.percentToLetterSpacing(16),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget salesStatsContainer(BranchInsightsViewModel model) {
    NumberFormat format = NumberFormat("#,##0.00");
    String amount = format.format(double.parse("1250732.15"));
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.pumpPricegreyBg),
        borderRadius: BorderRadius.circular(10.r),
        color: AppColors.pumpPricewhite,
      ),
      child: Column(
        children: [
          Text(
            "Total Revenue",
            style: context.textTheme.bodyMedium!.copyWith(
              color: AppColors.pumpPriceinputText,
            ),
          ),
          12.verticalGap,
          Container(
            height: 65,
            width: context.getWidth(),
            alignment: Alignment.center,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${nairaSymbol()} ',
                      style: context.textTheme.displaySmall!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      amount,
                      style: context.textTheme.displaySmall!.copyWith(
                        fontSize: 24.sp,
                        height: 100.percentToLineHeight(24),
                        letterSpacing: -2.percentToLetterSpacing(24),
                      ),
                    ),
                    Text(
                      " +3%",
                      style: context.textTheme.displaySmall!.copyWith(
                        color: AppColors.pumpPricesuccess,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          lineChart(model),
        ],
      ),
    );
  }

  Widget lineChart(BranchInsightsViewModel model) {
    return PumpPriceLineChart(
      inputData: [
        LineInputData(label: 'Mon', amount: 3500),
        LineInputData(label: 'Tue', amount: 300),
        LineInputData(label: 'Wed', amount: 1500),
        LineInputData(label: 'Thur', amount: 6200),
        LineInputData(label: 'Fri', amount: 6350),
        LineInputData(label: 'Sat', amount: 21000),
        LineInputData(label: 'Sun', amount: 5400),
      ],
    );
  }
}
