import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/io/api/country_code.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/modules/dashboard_pages/insights/widgets/line_chart.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/widgets/charts/pie_chart.dart';
import 'package:blue_business/widgets/steppers/filter_tab.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class InsightsView extends StatefulWidget {
  const InsightsView({super.key});

  @override
  State<InsightsView> createState() => _InsightsViewState();
}

class _InsightsViewState extends State<InsightsView> {
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
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      salesStatsContainer(model),
                      15.verticalGap,
                      spendingStatsContainer(model),
                    ],
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
          lineChart(model),
        ],
      ),
    );
  }

  Widget lineChart(InsightsViewModel model) {
    return const BlueLineChart();
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
            children: [...posKey(), 12.horizontalGap, ...mobileKey()],
          ),
        ],
      ),
    );
  }

  List<Widget> posKey() {
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
        "65%",
        style: AppTextStyles.smallText.copyWith(
            color: AppColors.neutralColorBlack, fontWeight: FontWeight.w500),
      ),
    ];
  }

  List<Widget> mobileKey() {
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
        "35%",
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
        child: totalSalesTextColumn(),
      ),
    );
  }

  Widget totalSalesTextColumn() {
    return SizedBox(
      width: 130,
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
              "${nairaSymbol()}230,000.00",
              style: AppTextStyles.header.copyWith(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
