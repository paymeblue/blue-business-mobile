import 'dart:developer';

import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/modules/dashboard_pages/insights/widgets/branch_insights.dart';
import 'package:blue_business/modules/dashboard_pages/insights/widgets/general_insights.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
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
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                tabs(model),
                35.verticalGap,
                Expanded(
                  child: model.currTab == 0
                      ? const GeneralInsightsPage()
                      : const BranchInsightsPage(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget tabs(InsightsViewModel model) {
    return SizedBox(
      height: 40,
      width: context.mediaQuery.size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: model.tabs().length,
        itemBuilder: (context, i) {
          return customTab(model, i, context);
        },
      ),
    );
  }

  Widget customTab(InsightsViewModel model, int i, BuildContext context) {
    return GestureDetector(
      onTap: () {
        log(i.toString());
        model.currTab = i;
      },
      child: Container(
        decoration: const BoxDecoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              model.tabs()[i].name,
              style: AppTextStyles.midHeader.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
            5.verticalGap,
            AnimatedContainer(
              duration: const Duration(milliseconds: 350),
              height: model.tabs()[i] == model.tabs()[model.currTab] ? 4 : 2.2,
              width: model.size.width / 2,
              decoration: BoxDecoration(
                color: i == model.currTab ? AppColors.primary : null,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
