import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/io/api/country_code.dart';
import 'package:blue_business/core/models/branches/branch.dart';
import 'package:blue_business/core/models/popup/popup.dart';
import 'package:blue_business/core/models/staff/get/item/staff.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/modules/bill_pages/airtime/initiate/presentation/view_model.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/widgets/avatar/avatar.dart';
import 'package:blue_business/widgets/charts/line_chart.dart';
import 'package:blue_business/widgets/modals/popup_menu.dart';
import 'package:blue_business/widgets/paging/error.dart';
import 'package:blue_business/widgets/paging/loading_shimmer.dart';
import 'package:blue_business/widgets/paging/no_items.dart';
import 'package:blue_business/widgets/steppers/filter_tab.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:intl/intl.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:shimmer/shimmer.dart';

import 'view_model.dart';

class BranchInsightsView extends StatefulWidget {
  final Branch branch;
  const BranchInsightsView({super.key, required this.branch});

  @override
  State<BranchInsightsView> createState() => _BranchInsightsViewState();
}

class _BranchInsightsViewState extends State<BranchInsightsView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<BranchInsightsViewModel>(
        model: BranchInsightsViewModel(),
        onModelReady: (model) => model.init(context, widget.branch.id),
        builder: (context, model, _) {
          return Scaffold(
            appBar: BlueAppBar.primary(
                icon: Icons.arrow_back_ios_new,
                onBackTap: () {
                  context.pop();
                },
                title: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Insights",
                      style: AppTextStyles.semiLargeHeader,
                    ),
                    4.verticalGap,
                    Text(
                      widget.branch.name.toUpperCase(),
                      style: AppTextStyles.smallText.copyWith(
                        color: AppColors.bodyTextColor2,
                      ),
                    )
                  ],
                )),
            body: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 35,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                        model.getSalesAnalytics();
                      },
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          salesStatsContainer(model),
                          15.verticalGap,
                          staffList(model)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  Widget staffList(BranchInsightsViewModel model) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 18),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.midGrey),
          borderRadius: BorderRadius.circular(7)),
      child: RefreshIndicator(
        onRefresh: () async => model.staffPagingController.refresh(),
        child: PagedListView<int, Staff>.separated(
          shrinkWrap: true,
          pagingController: model.staffPagingController,
          builderDelegate: PagedChildBuilderDelegate(
              noItemsFoundIndicatorBuilder: (context) => Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Staff and their roles",
                        style: AppTextStyles.subText.copyWith(
                          color: AppColors.bodyTextColor2,
                        ),
                      ),
                      Text(
                        "Staff details",
                        style: AppTextStyles.subText.copyWith(
                          color: AppColors.textColor,
                        ),
                      ),
                      25.verticalGap,
                      NoItems.firstPage(
                          "You have not added any staff to this branch yet"),
                    ],
                  ),
              firstPageProgressIndicatorBuilder: (context) => Column(
                    children: List.generate(
                      4,
                      (index) => Column(
                        children: [
                          BlueLoadingTile.withImage(),
                          if (index < 3) 6.verticalGap,
                        ],
                      ),
                    ),
                  ),
              firstPageErrorIndicatorBuilder: (ctx) => Column(
                    children: [
                      PagingError.firstPage(
                        model.staffPagingController.error.toString(),
                        model.staffPagingController.refresh,
                      ),
                    ],
                  ),
              newPageErrorIndicatorBuilder: (ctx) => PagingError.firstPage(
                    model.staffPagingController.error.toString(),
                    model.staffPagingController.refresh,
                  ),
              newPageProgressIndicatorBuilder: (context) =>
                  BlueLoadingTile.withImage(),
              itemBuilder: (context, item, i) => Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      if (i == 0) ...[
                        Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Staff and their roles",
                                        style: AppTextStyles.subText.copyWith(
                                          color: AppColors.bodyTextColor2,
                                        ),
                                      ),
                                      Text(
                                        "Staff details",
                                        style: AppTextStyles.subText.copyWith(
                                          color: AppColors.textColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                BluePopupMenu(
                                    width: null,
                                    icon: Container(
                                      decoration: BoxDecoration(
                                        border:
                                            Border.all(color: AppColors.blue),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 6),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            "All roles",
                                            style:
                                                AppTextStyles.subText.copyWith(
                                              color: AppColors.blue,
                                            ),
                                          ),
                                          const Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            size: 18,
                                            color: AppColors.blue,
                                          ),
                                        ],
                                      ),
                                    ),
                                    popupItems: model.roles
                                        .map(
                                          (e) => PopupModel(
                                            title: e.name.sentenceCase,
                                            onTap: () {},
                                          ),
                                        )
                                        .toList()),
                              ],
                            ),
                            const Divider(
                              color: AppColors.midGrey,
                            ),
                          ],
                        ),
                        8.verticalGap
                      ],
                      staffTile(model, item),
                    ],
                  )),
          separatorBuilder: (context, i) => const Divider(
            color: AppColors.midGrey,
          ),
        ),
      ),
    );
  }

  Widget staffTile(BranchInsightsViewModel model, Staff item) {
    return Container(
      width: model.size.width,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      child: Row(
        children: [
          BlueAvatar(
            radius: 22.5,
            imageUrl: item.displayPicture,
          ),
          10.horizontalGap,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style: AppTextStyles.header.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: const BoxDecoration(color: AppColors.inputField),
                  child: Text(
                    "${item.role.toUpperCase()} ROLE",
                    style: AppTextStyles.smallText.copyWith(
                        fontWeight: FontWeight.w500,
                        color: AppColors.textColor,
                        fontSize: 10),
                  ),
                ),
                Text(
                  item.phone,
                  style: AppTextStyles.smallText.copyWith(
                    color: AppColors.bodyTextColor2,
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
          model.salesState == FetchState.loading
              ? salesTotalShimmer()
              : Container(
                  height: 65,
                  width: model.size.width,
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(
                        "${nairaSymbol()}${format.format(double.parse(model.salesData?.mobile.current ?? "0.0") + double.parse(model.salesData?.desktop.current ?? "0.0"))}",
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
                          "${(model.totalIncrease * 100).abs()}% ${model.totalIncrease > 0 ? "increase" : "decrease"} vs last ${model.selectedType.toLowerCase().replaceAll("ly", "")}",
                          style: AppTextStyles.subHeader.copyWith(
                            color: AppColors.primary,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
          if (model.inputData.isNotEmpty ||
              model.salesState == FetchState.loading) ...[
            lineChart(model),
            20.verticalGap
          ],
          model.salesState == FetchState.loading
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
                          percentIncrease: model.desktopIncrease),
                      analyticsColumn(
                        title: "Mobile Account",
                        amount: format.format(double.parse(
                            model.salesData?.mobile.current ?? "0.00")),
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

  Widget lineChart(BranchInsightsViewModel model) {
    if (model.salesState == FetchState.loading) {
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
                2.horizontalGap,
                Expanded(
                  child: RichText(
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
                ),
              ],
            )
          ],
        ),
      );
}
