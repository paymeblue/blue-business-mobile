import 'package:blue_business/core/config/country_code.dart';
import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/transaction_history/transaction_history.dart';
import 'package:blue_business/core/models/transaction_option/transaction_option.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/enums.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/avatar/avatar.dart';
import 'package:blue_business/ui/widgets/paging/error.dart';
import 'package:blue_business/ui/widgets/paging/loading_shimmer.dart';
import 'package:blue_business/ui/widgets/paging/no_items.dart';
import 'package:blue_business/ui/widgets/tiles/transaction_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';

import 'view_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<HomeViewModel>(
      model: HomeViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Scaffold(
          body: RefreshIndicator(
            onRefresh: () async {
              model.refreshDashData();
            },
            child: SafeArea(
              child: SingleChildScrollView(
                child: SizedBox(
                  height: (model.size.height + 150).h,
                  child: Column(
                    children: [
                      firstRow(),
                      20.verticalGap,
                      walletContainer(model),
                      20.verticalGap,
                      transactionOptionSection(model, context),
                      12.verticalGap,
                      totalSalesSection(model, context),
                      12.verticalGap,
                      Expanded(
                        child: transactionSection(model, context),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget firstRow() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
      ),
      child: Row(
        children: [
          BlueAvatar(
            radius: 20.w,
            imageUrl: locator<AppStateValues>().currentUser!.displayPicture,
          ),
          12.horizontalGap,
          Expanded(
            child: welcomeMessage(),
          ),
          // transactionHistoryIconButton(onTap),
        ],
      ),
    );
  }

  Widget welcomeMessage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hi, Welcome",
          style: AppTextStyles.smallText.copyWith(
            color: AppColors.bodyTextColor,
          ),
        ),
        Text(
          locator<AppStateValues>().currentUser!.business.name,
          style: AppTextStyles.header.copyWith(fontSize: 15.sp),
        ),
      ],
    );
  }

  Widget balanceVisibilitySwitch(HomeViewModel model) {
    return GestureDetector(
      onTap: () {
        model.hideBalance = !model.hideBalance;
      },
      child: Container(
        height: 20,
        width: 20,
        decoration: const BoxDecoration(),
        child: model.hideBalance
            ? AppAssets.images.icons.showBalance.svg()
            : AppAssets.images.icons.hideBalance.svg(),
      ),
    );
  }

  Widget walletContainer(HomeViewModel model) {
    return Container(
      width: model.size.width,
      margin: const EdgeInsets.only(
        left: 16,
        right: 16,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 11),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(11),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              walletTypeContainer(
                kycLevel: locator<AppStateValues>().currentUser!.kyc,
              ),
              AppAssets.images.launcher.image(height: 23, width: 23),
            ],
          ),
          28.verticalGap,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: model.businessDataState == FetchState.loading
                    ? walletAmountShimmer()
                    : walletBalanceContainer(model),
              ),
              8.horizontalGap,
              model.businessDataState == FetchState.loading
                  ? walletAmountShimmer()
                  : volumeContainer(model),
            ],
          ),
          12.verticalGap,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: model.businessDataState == FetchState.loading
                    ? walletAmountShimmer()
                    : branchContainer(model),
              ),
              8.horizontalGap,
              model.businessDataState == FetchState.loading
                  ? walletAmountShimmer()
                  : staffContainer(model),
            ],
          )
        ],
      ),
    );
  }

  Column refreshWalletContainer(HomeViewModel model) {
    return Column(
      children: [
        const Spacer(),
        GestureDetector(
          onTap: model.refreshWalletContainer,
          child: Container(
            height: 44,
            width: 44,
            decoration: const BoxDecoration(
              color: AppColors.brightBlue,
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(10),
            child: AppAssets.images.icons.refresh.svg(),
          ),
        ),
        const Spacer(),
        SizedBox(
          width: 200,
          child: Text(
            "Please pull down to refresh your wallet content.",
            style: AppTextStyles.smallText.copyWith(height: 1),
            textAlign: TextAlign.center,
          ),
        ),
        const Spacer(),
      ],
    );
  }

  Widget walletTypeShimmer() {
    return SizedBox(
      height: 23,
      width: 100,
      child: Shimmer.fromColors(
        baseColor: AppColors.brightBlue,
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

  Widget salesShimmer(BuildContext context) {
    return SizedBox(
      height: 80,
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

  Widget walletImageShimmer() {
    return SizedBox(
      height: 23,
      width: 23,
      child: Shimmer.fromColors(
        baseColor: AppColors.brightBlue,
        highlightColor: AppColors.white,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }

  Widget volumeContainer(HomeViewModel model) {
    return Container(
      decoration: const BoxDecoration(),
      width: 130.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "TRANSACTION VOL.",
            style: AppTextStyles.smallText.copyWith(
                color: AppColors.bodyTextColor2, height: 1.1, fontSize: 11.sp),
          ),
          4.verticalGap,
          FittedBox(
            child: Text(
              locator<AppStateValues>()
                  .currentUser!
                  .dashboardData
                  .transactionVolume
                  .toString(),
              style: AppTextStyles.header
                  .copyWith(color: AppColors.grey, fontSize: 16.sp),
            ),
          ),
        ],
      ),
    );
  }

  Widget walletAmountShimmer() {
    return SizedBox(
      height: 38.h,
      width: 180.w,
      child: Shimmer.fromColors(
        baseColor: AppColors.brightBlue,
        highlightColor: AppColors.white,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }

  Widget walletIdShimmer() {
    return SizedBox(
      height: 51,
      width: 130,
      child: Shimmer.fromColors(
        baseColor: AppColors.brightBlue,
        highlightColor: AppColors.white,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }

  Widget walletBalanceContainer(HomeViewModel model) {
    NumberFormat format = NumberFormat("#,##0.00");
    String balance = format.format(
        double.parse(locator<AppStateValues>().wallet?.balance ?? "0.00"));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Text(
              "WALLET BALANCE",
              style: AppTextStyles.subHeader
                  .copyWith(color: AppColors.bodyTextColor2, fontSize: 11.sp),
            ),
            6.horizontalGap,
            balanceVisibilitySwitch(model)
          ],
        ),
        FittedBox(
          child: Text(
            "${nairaSymbol()}${model.hideBalance ? '****' : balance}",
            style: AppTextStyles.header.copyWith(
              color: AppColors.grey,
              fontSize: 18.sp,
            ),
          ),
        ),
      ],
    );
  }

  Widget branchContainer(HomeViewModel model) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "TOTAL BRANCHES",
            style: AppTextStyles.subHeader
                .copyWith(color: AppColors.bodyTextColor2, fontSize: 11.sp),
          ),
          FittedBox(
            child: Text(
              locator<AppStateValues>()
                  .currentUser!
                  .dashboardData
                  .totalBranches
                  .toString(),
              style: AppTextStyles.header.copyWith(
                color: AppColors.grey,
                fontSize: 18.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget staffContainer(HomeViewModel model) {
    return SizedBox(
      width: 130.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "TOTAL STAFF",
            style: AppTextStyles.subHeader
                .copyWith(color: AppColors.bodyTextColor2, fontSize: 11.sp),
          ),
          FittedBox(
            child: Text(
              locator<AppStateValues>()
                  .currentUser!
                  .dashboardData
                  .totalStaff
                  .toString(),
              style: AppTextStyles.header.copyWith(
                color: AppColors.grey,
                fontSize: 18.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget walletTypeContainer({String kycLevel = "basic"}) {
    return Container(
      height: 23,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: kycLevel == "pro" ? AppColors.promptTextColor : AppColors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      alignment: Alignment.center,
      child: Text(
        "${kycLevel[0].toUpperCase()}${kycLevel.substring(1)} wallet",
        style: AppTextStyles.smallText.copyWith(
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
          color: kycLevel == "pro" ? AppColors.white : const Color(0xFFFF9601),
        ),
      ),
    );
  }

  Widget transactionOptionSection(HomeViewModel model, BuildContext context) {
    return Container(
      height: 100.h,
      margin: const EdgeInsets.only(
        left: 16,
        right: 16,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          model.transactionOptions(context).length,
          (index) => transactionOptionButton(
            model.transactionOptions(context)[index],
          ),
        ),
      ),
    );
  }

  Widget transactionOptionButton(TransactionOption option) {
    return Column(
      children: [
        GestureDetector(
          onTap: option.onTap,
          child: Container(
            height: 62.h,
            width: 62.w,
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.midGrey),
                borderRadius: BorderRadius.circular(20)),
            child: option.icon,
          ),
        ),
        8.verticalGap,
        Text(
          option.title,
          style: AppTextStyles.subText.copyWith(
            color: AppColors.textColor,
          ),
        )
      ],
    );
  }

  Widget totalSalesSection(HomeViewModel model, BuildContext context) {
    NumberFormat format = NumberFormat("#,##0.00");
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          totalSalesHeader(),
          14.verticalGap,
          popupMenu(model),
          8.verticalGap,
          Container(
            width: model.size.width,
            padding: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.midGrey),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (model.analyticsState == FetchState.loading)
                  salesShimmer(context)
                else ...[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      analyticsColumn(
                        context,
                        title: "Point of Sales",
                        amount: format.format(double.parse(
                            model.analyticsData?.desktop.current ?? "0.00")),
                        percentIncrease: model.desktopIncrease,
                      ),
                      analyticsColumn(
                        context,
                        title: "Mobile Account",
                        amount: format.format(double.parse(
                            model.analyticsData?.mobile.current ?? "0.00")),
                        percentIncrease: model.mobileIncrease,
                      ),
                    ],
                  ),
                ]
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget popupMenu(HomeViewModel model) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: AppColors.bgGrey,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        "This week",
        style: AppTextStyles.subHeader
            .copyWith(color: AppColors.primary, fontSize: 12.5.sp),
      ),
    );
  }

  Widget totalSalesHeader() {
    return Text(
      "Sale Analytics",
      style: AppTextStyles.header.copyWith(
        fontSize: 18.sp,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  Widget analyticsColumn(
    BuildContext context, {
    required String title,
    required String amount,
    double percentIncrease = 0,
  }) {
    return Container(
      width: ((context.mediaQuery.size.width - 65) / 2),
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
                      text: percentIncrease.abs() ==
                              double.parse(
                                  amount.replaceAll(RegExp(r'[^0-9]'), ""))
                          ? "${(percentIncrease.abs() * 100).toStringAsFixed(2)}% "
                          : "${nairaSymbol()}$amount ",
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
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget transactionSection(HomeViewModel model, BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          transactionHeader(() {
            model.goToTransactionHistory(context);
          }),
          14.verticalGap,
          Expanded(
            child: RefreshIndicator(
                onRefresh: () async {
                  model.transactionController.refresh();
                },
                child: PagedListView<int, TransactionHistory>.separated(
                  padding: const EdgeInsets.only(bottom: 20),
                  shrinkWrap: true,
                  pagingController: model.transactionController,
                  builderDelegate: PagedChildBuilderDelegate(
                    noMoreItemsIndicatorBuilder: (ctx) =>
                        NoItems.newPage("No more"),
                    noItemsFoundIndicatorBuilder: (ctx) => NoItems.firstPage(
                        "You have not completed any transactions yet."),
                    firstPageProgressIndicatorBuilder: (context) =>
                        ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) =>
                          BlueLoadingTile.withImage(),
                      itemCount: 4,
                      separatorBuilder: (context, index) => 20.verticalGap,
                    ),
                    firstPageErrorIndicatorBuilder: (ctx) => Column(
                      children: [
                        PagingError.firstPage(
                          model.transactionController.error.toString(),
                          model.transactionController.refresh,
                        ),
                      ],
                    ),
                    newPageErrorIndicatorBuilder: (ctx) =>
                        PagingError.firstPage(
                      model.transactionController.error.toString(),
                      model.transactionController.refresh,
                    ),
                    newPageProgressIndicatorBuilder: (context) =>
                        BlueLoadingTile.withImage(),
                    itemBuilder: (context, item, i) {
                      return GestureDetector(
                        onTap: () {
                          model.getTransactionDetails(item, context);
                        },
                        child: TransationTile(
                          transaction: item,
                        ),
                      );
                    },
                  ),
                  separatorBuilder: (context, i) {
                    return 10.verticalGap;
                  },
                )),
          ),
        ],
      ),
    );
  }

  Widget transactionHeader(VoidCallback onTap) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Transactions",
          style: AppTextStyles.header.copyWith(
            fontSize: 18.sp,
          ),
        ),
        viewAllButton(onTap)
      ],
    );
  }

  Widget viewAllButton(VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: DecoratedBox(
        decoration: const BoxDecoration(),
        child: Text(
          "View all",
          style: AppTextStyles.subText.copyWith(color: AppColors.primary),
        ),
      ),
    );
  }
}
