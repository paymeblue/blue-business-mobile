import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/io/api/country_code.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/charts/line_chart.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/widgets/charts/pie_chart.dart';
import 'package:blue_business/widgets/steppers/filter_tab.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:shimmer/shimmer.dart';

import 'view_model.dart';

class InsightsView extends StatefulWidget {
  const InsightsView({super.key});

  @override
  State<InsightsView> createState() => _InsightsViewState();
}

class _InsightsViewState extends State<InsightsView> {
  NumberFormat format = NumberFormat("#,##0.00");
  @override
  Widget build(BuildContext context) {
    return BaseView<InsightsViewModel>(
      model: InsightsViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            title: Text(
              "Insights",
              style: AppTextStyles.subHeader.copyWith(fontSize: 20.5),
            ),
            leading: 0.horizontalGap,
          ),
          body: Container(
            height: model.size.height,
            width: model.size.width,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
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
          ),
        );
      },
    );
  }

  Widget salesStatsContainer(InsightsViewModel model) {
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
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
          const Divider(
            color: AppColors.grey,
          ),
          12.verticalGap,
          model.salesLoading
              ? salesTotalShimmer()
              : Container(
                  height: 65,
                  width: model.size.width,
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(
                        "${nairaSymbol()}${format.format(double.parse(model.salesData?.mobileSum ?? "0.0") + double.parse(model.salesData?.desktopSum ?? "0.0"))}",
                        style: AppTextStyles.header.copyWith(
                          fontSize: 20,
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
                          "12.6% increase vs last week",
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
                          amount: format.format(
                              double.parse(model.salesData!.desktopSum)),
                          percentIncrease: .4),
                      analyticsColumn(
                        title: "Mobile Account",
                        amount: format
                            .format(double.parse(model.salesData!.mobileSum)),
                        percentIncrease: -.156,
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
      height: 70,
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
      height: 65,
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
        height: 120,
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
                fontSize: 14,
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
        height: 9,
        width: 9,
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
        height: 9,
        width: 9,
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
        radius: 108,
        child: totalSpendingTextColumn(model),
      ),
    );
  }

  Widget analyticsColumn({
    required String title,
    required String amount,
    double percentIncrease = 0,
  }) =>
      Container(
        width: (context.mediaQuery.size.width - 80) / 2,
        height: 80,
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
              style: AppTextStyles.header.copyWith(fontSize: 16.5),
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
                8.horizontalGap,
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: "${percentIncrease.abs() * 100}% ",
                      style: AppTextStyles.smallText.copyWith(
                        color: percentIncrease < 0
                            ? AppColors.error
                            : AppColors.otherGreen,
                      ),
                    ),
                    TextSpan(
                      text: "vs last week",
                      style: AppTextStyles.smallText.copyWith(
                        color: AppColors.bodyTextColor,
                      ),
                    )
                  ]),
                ),
              ],
            )
          ],
        ),
      );

  Widget totalSpendingTextColumn(InsightsViewModel model) {
    return SizedBox(
      width: 130,
      height: 50,
      child: FittedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Total Expenses",
              style: AppTextStyles.smallText.copyWith(
                color: AppColors.neutralTextGrey,
                fontSize: 12,
              ),
            ),
            Text(
              "${nairaSymbol()}${format.format(model.totalSpending)}",
              style: AppTextStyles.header.copyWith(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
