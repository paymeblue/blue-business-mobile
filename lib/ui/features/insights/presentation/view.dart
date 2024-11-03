import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/insights/widgets/branch_insights.dart';
import 'package:blue_business/ui/features/insights/widgets/general_insights.dart';
import 'package:blue_business/ui/widgets/appbar/blue_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
              style: AppTextStyles.subHeader.copyWith(fontSize: 20.sp),
            ),
            onBackTap: () => model.goBack(context),
          ),
          body: Container(
            padding: EdgeInsets.only(bottom: 20.h, top: 10.h),
            child: Column(
              children: [
                tabs(model),
                25.verticalGap,
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
      height: 40.h,
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
              height: i == model.currTab ? 3.h : 2.2.h,
              width: (model.size.width / 2),
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
