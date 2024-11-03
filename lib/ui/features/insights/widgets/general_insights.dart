import 'package:blue_business/core/config/country_code.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/insights/presentation/view_model.dart';
import 'package:blue_business/ui/widgets/charts/line_chart.dart';
import 'package:blue_business/ui/widgets/charts/pie_chart.dart';
import 'package:blue_business/ui/widgets/steppers/filter_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';

class GeneralInsightsPage extends StatefulWidget {
  const GeneralInsightsPage({super.key});

  @override
  State<GeneralInsightsPage> createState() => _GeneralInsightsPageState();
}

class _GeneralInsightsPageState extends State<GeneralInsightsPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<InsightsViewModel>(builder: (context, model, _) {
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          children: [
            FilterTab(
              selectedValue: model.selectedType,
              tabs: model.types,
              onChanged: model.onTypeChanged,
            ),
            25.verticalGap,
            Expanded(
              child: RefreshIndicator(
                onRefresh: () async {
                  model.getAnalytics();
                },
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    salesStatsContainer(model),
                    15.verticalGap,
                    spendingStatsContainer(model),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    });
  }

  Widget salesStatsContainer(InsightsViewModel model) {
    NumberFormat format = NumberFormat("#,##0.00");
    String amount = format.format(double.parse(
            model.salesData?.mobile.current.replaceAll(",", "") ?? "0.0") +
        double.parse(
            model.salesData?.desktop.current.replaceAll(",", "") ?? "0.0"));
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.midGrey),
          borderRadius: BorderRadius.circular(7)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Sales Statistics",
            style: AppTextStyles.smallText.copyWith(
              color: AppColors.neutralColor400,
            ),
          ),
          Text(
            "${model.selectedType} Sales",
            style: AppTextStyles.smallText.copyWith(
                color: AppColors.neutralColorBlack,
                fontSize: 14.sp,
                fontWeight: FontWeight.w500),
          ),
          const Divider(
            color: AppColors.grey,
          ),
          12.verticalGap,
          model.salesLoading
              ? salesTotalShimmer()
              : Container(
                  height: 65.h,
                  width: model.size.width,
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(
                        "${nairaSymbol()}$amount",
                        style: AppTextStyles.header.copyWith(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: AppColors.bgGrey,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          "${model.totalIncrease.abs() != double.parse(amount.replaceAll(",", "")) ? "${(model.totalIncrease.abs() * 100).toStringAsFixed(2)}% " : "${nairaSymbol()}"
                              " $amount"} ${model.totalIncrease > 0 ? "increase" : "decrease"} vs last ${model.selectedType.toLowerCase().replaceAll("ly", "")}",
                          style: AppTextStyles.subHeader.copyWith(
                            color: AppColors.primary,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
          if (model.inputData.isNotEmpty || model.gettingSalesData) ...[
            lineChart(model),
            20.verticalGap
          ],
          model.salesLoading
              ? salesAmountShimmer()
              : Container(
                  padding: const EdgeInsets.symmetric(vertical: 17),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.midGrey),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      analyticsColumn(
                        title: "Point of Sales",
                        amount: format.format(double.parse(
                            model.salesData?.desktop.current ?? "0.00")),
                        percentIncrease: model.desktopIncrease,
                        model: model,
                      ),
                      analyticsColumn(
                        title: "Mobile Account",
                        amount: format.format(double.parse(
                          model.salesData?.mobile.current ?? "0.00",
                        )),
                        model: model,
                        percentIncrease: model.mobileIncrease,
                      ),
                    ],
                  ),
                ),
        ],
      ),
    );
  }

  Widget salesTotalShimmer() {
    return SizedBox(
      height: 70.h,
      width: context.mediaQuery.size.width,
      child: Shimmer.fromColors(
        baseColor: AppColors.brightBlue.withOpacity(.3),
        highlightColor: AppColors.white,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }

  Widget salesAmountShimmer() {
    return SizedBox(
      height: 65.h,
      width: context.mediaQuery.size.width,
      child: Shimmer.fromColors(
        baseColor: AppColors.brightBlue.withOpacity(.3),
        highlightColor: AppColors.white,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }

  Widget lineChart(InsightsViewModel model) {
    if (model.gettingSalesData) {
      return Container(
        height: 120.h,
        alignment: Alignment.center,
        child: LoadingAnimationWidget.horizontalRotatingDots(
            color: AppColors.primary, size: 45),
      );
    } else {
      return BlueLineChart(
        inputData: model.inputData,
      );
    }
  }

  Widget spendingStatsContainer(InsightsViewModel model) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.midGrey),
          borderRadius: BorderRadius.circular(7)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Spending Statistics",
            style: AppTextStyles.smallText.copyWith(
              color: AppColors.neutralColor400,
            ),
          ),
          Text(
            "${model.selectedType} Spending",
            style: AppTextStyles.smallText.copyWith(
                color: AppColors.neutralColorBlack,
                fontSize: 14.sp,
                fontWeight: FontWeight.w500),
          ),
          const Divider(
            color: AppColors.grey,
          ),
          12.verticalGap,
          pieChart(model),
          6.verticalGap,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [...posKey(model), 12.horizontalGap, ...mobileKey(model)],
          ),
        ],
      ),
    );
  }

  List<Widget> posKey(InsightsViewModel model) {
    return [
      Container(
        height: 9.h,
        width: 9.w,
        decoration: const BoxDecoration(
          color: AppColors.primary,
          shape: BoxShape.circle,
        ),
      ),
      4.horizontalGap,
      Text(
        "Point of Sales",
        style: AppTextStyles.smallText.copyWith(
          color: AppColors.neutralColor400,
        ),
      ),
      4.horizontalGap,
      Text(
        "${(model.pieValues[0] * 100).toStringAsFixed(1)}%",
        style: AppTextStyles.smallText.copyWith(
            color: AppColors.neutralColorBlack, fontWeight: FontWeight.w500),
      ),
    ];
  }

  List<Widget> mobileKey(InsightsViewModel model) {
    return [
      Container(
        height: 9.h,
        width: 9.w,
        decoration: const BoxDecoration(
          color: AppColors.bgGrey,
          shape: BoxShape.circle,
        ),
      ),
      4.horizontalGap,
      Text(
        "Mobile app",
        style: AppTextStyles.smallText.copyWith(
          color: AppColors.neutralColor400,
        ),
      ),
      4.horizontalGap,
      Text(
        "${(model.pieValues[1] * 100).toStringAsFixed(1)}%",
        style: AppTextStyles.smallText.copyWith(
            color: AppColors.neutralColorBlack, fontWeight: FontWeight.w500),
      ),
    ];
  }

  Center pieChart(InsightsViewModel model) {
    return Center(
      child: PieChart(
        strokeWidth: 18,
        data: [
          ...List.generate(
            model.pieValues.length,
            (i) {
              return PieChartData(
                i == 1 ? AppColors.bgGrey : AppColors.primary,
                model.pieValues[i] * 85,
              );
            },
          ),
          const PieChartData(Colors.transparent, 15)
        ],
        radius: 108.w,
        child: totalSpendingTextColumn(model),
      ),
    );
  }

  Widget analyticsColumn({
    required String title,
    required String amount,
    double percentIncrease = 0,
    required InsightsViewModel model,
  }) =>
      Container(
        width: (context.mediaQuery.size.width - 100).w / 2,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppTextStyles.smallText.copyWith(
                color: AppColors.bodyTextColor2,
              ),
            ),
            4.verticalGap,
            Text(
              "${nairaSymbol()}$amount",
              style: AppTextStyles.header.copyWith(fontSize: 16.sp),
            ),
            Row(
              children: [
                Icon(
                  percentIncrease < 0
                      ? Icons.arrow_downward_rounded
                      : Icons.arrow_upward_rounded,
                  color: percentIncrease < 0
                      ? AppColors.error
                      : AppColors.otherGreen,
                  size: 16,
                ),
                2.horizontalGap,
                Flexible(
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: percentIncrease.abs() !=
                                double.parse(amount.replaceAll(",", ""))
                            ? "${(percentIncrease.abs() * 100).toStringAsFixed(2)}% "
                            : "${nairaSymbol()} $amount ",
                        style: AppTextStyles.smallText.copyWith(
                          color: percentIncrease < 0
                              ? AppColors.error
                              : AppColors.otherGreen,
                        ),
                      ),
                      TextSpan(
                        text:
                            "vs last ${model.selectedType.toLowerCase().replaceAll("ly", "")}",
                        style: AppTextStyles.smallText.copyWith(
                          color: AppColors.bodyTextColor,
                        ),
                      )
                    ]),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            )
          ],
        ),
      );

  Widget totalSpendingTextColumn(InsightsViewModel model) {
    NumberFormat format = NumberFormat("#,##0.00");
    return SizedBox(
      width: 130.w,
      height: 50.h,
      child: FittedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Total Expenses",
              style: AppTextStyles.smallText.copyWith(
                color: AppColors.neutralTextGrey,
                fontSize: 12.sp,
              ),
            ),
            Text(
              "${nairaSymbol()}${format.format(model.totalSpending)}",
              style: AppTextStyles.header.copyWith(fontSize: 20.sp),
            ),
          ],
        ),
      ),
    );
  }
}
