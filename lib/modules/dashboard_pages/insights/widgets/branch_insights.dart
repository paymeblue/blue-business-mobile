import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/io/api/country_code.dart';
import 'package:blue_business/core/models/branches/branch.dart';
import 'package:blue_business/core/models/popup/popup.dart';
import 'package:blue_business/core/models/staff/get/item/staff.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/services/navigation_service.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/modules/bill_pages/airtime/initiate/presentation/view_model.dart';
import 'package:blue_business/modules/dashboard_pages/insights/presentation/view_model.dart';
import 'package:blue_business/widgets/avatar/avatar.dart';
import 'package:blue_business/widgets/charts/line_chart.dart';
import 'package:blue_business/widgets/modals/popup_menu.dart';
import 'package:blue_business/widgets/paging/error.dart';
import 'package:blue_business/widgets/paging/loading_shimmer.dart';
import 'package:blue_business/widgets/paging/no_items.dart';
import 'package:blue_business/widgets/steppers/filter_tab.dart';
import 'package:blue_business/widgets/textfield/blue_textfield.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:intl/intl.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';

class BranchInsightsPage extends StatefulWidget {
  const BranchInsightsPage({super.key});

  @override
  State<BranchInsightsPage> createState() => _BranchInsightsPageState();
}

class _BranchInsightsPageState extends State<BranchInsightsPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<InsightsViewModel>(builder: (context, model, _) {
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            branchSelect(model),
            20.verticalGap,
            FilterTab(
              selectedValue: model.selectedType,
              tabs: model.types,
              onChanged: model.onTypeChanged,
            ),
            25.verticalGap,
            Expanded(
              child: model.branch == null
                  ? Align(
                      alignment: Alignment.center,
                      child: emptyBody(model),
                    )
                  : ListView(
                      children: [
                        RefreshIndicator(
                          onRefresh: () async {
                            model.getAnalytics();
                          },
                          child: ListView(
                            shrinkWrap: true,
                            children: [
                              salesStatsContainer(model),
                            ],
                          ),
                        ),
                        8.verticalGap,
                        staffList(model)
                      ],
                    ),
            ),
          ],
        ),
      );
    });
  }

  Widget branchSelect(InsightsViewModel model) {
    return InkWell(
      onTap: () async {
        model.branch = await onTap(model);
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
              model.branch?.name.toUpperCase() ?? "SELECT A BRANCH",
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

  Future<Branch?> onTap(InsightsViewModel model) async {
    Branch? val = model.branch;
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
                        controller: model.searchController,
                        hint: "Search branches",
                        onSearchChanged: model.onSearchChanged,
                      ),
                      Expanded(
                        child: PagedListView<int, Branch>.separated(
                            pagingController: model.branchPagingController,
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
                                            "Looks like nothing matches \"${model.searchController.text}\"",
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
                                          model.branchPagingController.error
                                              .toString(),
                                          model.branchPagingController.refresh,
                                        ),
                                      ],
                                    ),
                                newPageErrorIndicatorBuilder: (ctx) =>
                                    PagingError.firstPage(
                                      model.branchPagingController.toString(),
                                      model.branchPagingController.refresh,
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
    String amount = format.format(
        double.parse(model.branchSalesData?.transaction.current ?? "0.0"));
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
                        "${nairaSymbol()}$amount",
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
                          "${model.totalIncrease.abs() == double.parse(amount) ? "${(model.totalIncrease.abs() * 100).toStringAsFixed(2)}% " : "${nairaSymbol()} $amount"} ${model.totalIncrease > 0 ? "increase" : "decrease"} vs last ${model.selectedType.toLowerCase().replaceAll("ly", "")}",
                          style: AppTextStyles.subHeader.copyWith(
                            color: AppColors.primary,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
          if (model.branchInputData.isNotEmpty ||
              model.salesState == FetchState.loading) ...[
            lineChart(model),
          ],
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
    if (model.salesState == FetchState.loading) {
      return Container(
        height: 120,
        alignment: Alignment.center,
        child: LoadingAnimationWidget.horizontalRotatingDots(
            color: AppColors.primary, size: 45),
      );
    } else {
      return BlueLineChart(
        inputData: model.branchInputData,
      );
    }
  }

  Widget staffList(InsightsViewModel model) {
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
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Column(
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
                                  ],
                                ),
                              ),
                              BluePopupMenu(
                                  width: null,
                                  icon: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: AppColors.blue),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 6),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          (model.role?.name ?? "all roles")
                                              .sentenceCase,
                                          style: AppTextStyles.subText.copyWith(
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
                                          onTap: () {
                                            model.role = e;
                                            model.staffPagingController
                                                .refresh();
                                          },
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
                      8.verticalGap,
                      ...List.generate(
                        4,
                        (index) => Column(
                          children: [
                            BlueLoadingTile.withImage(),
                            if (index < 3) 6.verticalGap,
                          ],
                        ),
                      )
                    ],
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
                                            (model.role?.name ?? "all roles")
                                                .sentenceCase,
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
                                            onTap: () {
                                              model.role = e;
                                              model.staffPagingController
                                                  .refresh();
                                            },
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

  Widget staffTile(InsightsViewModel model, Staff item) {
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
}
