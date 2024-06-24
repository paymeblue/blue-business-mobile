import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/io/api/country_code.dart';
import 'package:blue_business/core/models/branches/branch.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/services/navigation_service.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/modules/dashboard_pages/insights/presentation/view_model.dart';
import 'package:blue_business/widgets/charts/line_chart.dart';
import 'package:blue_business/widgets/paging/error.dart';
import 'package:blue_business/widgets/paging/loading_shimmer.dart';
import 'package:blue_business/widgets/steppers/filter_tab.dart';
import 'package:blue_business/widgets/textfield/blue_textfield.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:intl/intl.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:shimmer/shimmer.dart';

class BranchInsightsPage extends StatefulWidget {
  final InsightsViewModel model;
  const BranchInsightsPage({super.key, required this.model});

  @override
  State<BranchInsightsPage> createState() => _BranchInsightsPageState();
}

class _BranchInsightsPageState extends State<BranchInsightsPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          branchSelect(),
          20.verticalGap,
          if (widget.model.branch == null)
            Expanded(child: emptyBody(widget.model))
          else ...[
            FilterTab(
              selectedValue: widget.model.selectedType,
              tabs: widget.model.types,
              onChanged: widget.model.onTypeChanged,
            ),
            25.verticalGap,
            Expanded(
              child: RefreshIndicator(
                onRefresh: () async {
                  widget.model.getAnalytics();
                },
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    salesStatsContainer(widget.model),
                  ],
                ),
              ),
            )
          ]
        ],
      ),
    );
  }

  Widget branchSelect() {
    return InkWell(
      onTap: () async {
        widget.model.branch = await onTap();
      },
      splashColor: AppColors.primary.withOpacity(.15),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.blue),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.model.branch?.name.toUpperCase() ?? "SELECT A BRANCH",
              style: AppTextStyles.smallText.copyWith(
                color: AppColors.blue,
                fontSize: 11,
              ),
            ),
            8.horizontalGap,
            const Icon(
              Icons.keyboard_arrow_down_rounded,
              color: AppColors.blue,
              weight: 1,
            )
          ],
        ),
      ),
    );
  }

  Widget emptyBody(InsightsViewModel model) {
    return SizedBox(
      width: model.size.width,
      child: Column(
        children: [
          AppAssets.images.icons.emptyBranch.svg(),
          Text(
            "No branch selected",
            style: AppTextStyles.header,
          ),
          12.verticalGap,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45),
            child: Text(
              "Please select the branch you want to view business insight.",
              style: AppTextStyles.subHeader
                  .copyWith(height: 1, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Future<Branch?> onTap() async {
    Branch? val = widget.model.branch;
    await showModalBottomSheet(
      context: locator<NavigationService>().navigatorKey.currentContext!,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      useSafeArea: true,
      builder: (context) {
        return StatefulBuilder(builder: (context, setState) {
          return DraggableScrollableSheet(
              initialChildSize: .5 +
                  (context.mediaQuery.viewInsets.bottom /
                      context.mediaQuery.size.height),
              expand: false,
              builder: (context, controller) {
                return Container(
                  height: context.mediaQuery.size.height / 2 +
                      context.mediaQuery.viewInsets.bottom,
                  margin: EdgeInsets.only(
                      left: 17,
                      right: 17,
                      bottom: 35 + context.mediaQuery.viewInsets.bottom),
                  padding: const EdgeInsets.only(left: 17, right: 17, top: 15),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      BlueTextField.search(
                        controller: widget.model.searchController,
                        hint: "Search branches",
                        onSearchChanged: widget.model.onSearchChanged,
                      ),
                      Expanded(
                        child: PagedListView<int, Branch>.separated(
                            pagingController:
                                widget.model.branchPagingController,
                            builderDelegate: PagedChildBuilderDelegate(
                                noItemsFoundIndicatorBuilder: (context) =>
                                    SizedBox(
                                      width: context.mediaQuery.size.width,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          AppAssets.images.icons.error.image(),
                                          12.verticalGap,
                                          Text(
                                            "Wow, such empty...",
                                            style: AppTextStyles.header,
                                          ),
                                          8.verticalGap,
                                          Text(
                                            "Looks like nothing matches \"${widget.model.searchController.text}\"",
                                          ),
                                        ],
                                      ),
                                    ),
                                firstPageProgressIndicatorBuilder: (context) =>
                                    Column(
                                      children: List.generate(
                                        4,
                                        (index) => Column(
                                          children: [
                                            BlueLoadingTile.withoutImage(),
                                            if (index < 3) 6.verticalGap,
                                          ],
                                        ),
                                      ),
                                    ),
                                firstPageErrorIndicatorBuilder: (ctx) => Column(
                                      children: [
                                        PagingError.firstPage(
                                          widget.model.branchPagingController
                                              .error
                                              .toString(),
                                          widget.model.branchPagingController
                                              .refresh,
                                        ),
                                      ],
                                    ),
                                newPageErrorIndicatorBuilder: (ctx) =>
                                    PagingError.firstPage(
                                      widget.model.branchPagingController
                                          .toString(),
                                      widget
                                          .model.branchPagingController.refresh,
                                    ),
                                newPageProgressIndicatorBuilder: (context) =>
                                    BlueLoadingTile.withImage(),
                                itemBuilder: (ctx, item, i) => GestureDetector(
                                      onTap: () {
                                        val = item;
                                        Navigator.pop(context);
                                      },
                                      child: itemBuilder(item),
                                    )),
                            separatorBuilder: (ctx, i) => 6.verticalGap),
                      ),
                    ],
                  ),
                );
              });
        });
      },
    );
    return val;
  }

  Widget itemBuilder(Branch item) {
    return Container(
      height: 45,
      decoration: const BoxDecoration(),
      child: Row(
        children: [
          Expanded(
            child: Text(
              item.name,
              style: AppTextStyles.textField.copyWith(height: 1),
            ),
          ),
        ],
      ),
    );
  }

  Widget salesStatsContainer(InsightsViewModel model) {
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
          model.salesLoading
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
