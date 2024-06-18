import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/io/api/country_code.dart';
import 'package:blue_business/core/models/todo/todo.dart';
import 'package:blue_business/core/models/transaction_history/transaction_history.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/modules/dashboard_pages/home/models/transaction_option/transaction_option.dart';
import 'package:blue_business/widgets/avatar/avatar.dart';
import 'package:blue_business/widgets/paging/error.dart';
import 'package:blue_business/widgets/paging/no_items.dart';
import 'package:blue_business/widgets/paging/loading_shimmer.dart';
import 'package:blue_business/widgets/tiles/transaction_tile.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:intl/intl.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:shimmer/shimmer.dart';

import 'view_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  NumberFormat format = NumberFormat("#,##0.00");
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeViewModel>(
      model: HomeViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return SafeArea(
          child: RefreshIndicator(
            onRefresh: () async {
              model.getDashData();
            },
            child: SingleChildScrollView(
              child: Container(
                height: model.size.height + 180,
                width: model.size.width,
                color: AppColors.offWhite,
                padding: const EdgeInsets.only(top: 15),
                child: Column(
                  children: [
                    firstRow(() {
                      model.goToTransactionHistory(context);
                    }),
                    12.verticalGap,
                    walletSection(model),
                    if (model.isTodoLoading ||
                        locator<AppStateValues>().todos.isNotEmpty) ...[
                      15.verticalGap,
                      todoSection(model),
                    ],
                    20.verticalGap,
                    transactionOptionSection(model, context),
                    12.verticalGap,
                    totalSalesSection(model),
                    12.verticalGap,
                    Expanded(
                      child: transactionSection(model),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget walletSection(HomeViewModel model) {
    return SizedBox(
      height: 180,
      child: RefreshIndicator(
        onRefresh: () async {
          model.refreshWalletContainer();
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              walletContainer(model),
              7.verticalGap,
            ],
          ),
        ),
      ),
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

  Widget transactionSection(HomeViewModel model) {
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
                      return TransationTile(
                        transaction: item,
                      );
                    },
                  ),
                  separatorBuilder: (context, i) {
                    return 20.verticalGap;
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
            fontSize: 18.5,
          ),
        ),
        viewAllButton(onTap)
      ],
    );
  }

  Widget totalSalesSection(HomeViewModel model) {
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
            height: 100,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.midGrey),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (model.salesLoading)
                  salesShimmer()
                else ...[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      analyticsColumn(
                        title: "Point of Sales",
                        amount: format.format(double.parse(
                            model.analyticsData?.desktop.total ?? "0.00")),
                        percentIncrease: model.desktopIncrease,
                      ),
                      analyticsColumn(
                        title: "Mobile Account",
                        amount: format.format(double.parse(
                            model.analyticsData?.mobile.total ?? "0.00")),
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

  Widget analyticsColumn({
    required String title,
    required String amount,
    double percentIncrease = 0,
  }) =>
      Container(
        width: (context.mediaQuery.size.width - 65) / 2,
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

  Widget popupMenu(HomeViewModel model) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: AppColors.bgGrey,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "This week",
            style: AppTextStyles.subHeader.copyWith(
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }

  Widget totalSalesHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Total Sales",
          style: AppTextStyles.header.copyWith(
            fontSize: 18.5,
          ),
        ),
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

  Widget transactionOptionSection(HomeViewModel model, BuildContext context) {
    return Container(
      height: 100,
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
            height: 62,
            width: 62,
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.bgGrey),
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

  Widget todoSection(HomeViewModel model) {
    if (model.isTodoLoading) {
      return LoadingAnimationWidget.prograssiveDots(
          color: AppColors.primary, size: 45);
    } else {
      return SizedBox(
        width: model.size.width,
        height: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                "To do",
                style: AppTextStyles.header.copyWith(
                  fontSize: 18.5,
                ),
              ),
            ),
            10.verticalGap,
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                itemBuilder: (constex, i) {
                  return todoContainer(
                      locator<AppStateValues>().todos[i], model);
                },
                separatorBuilder: (constex, i) {
                  return 10.horizontalGap;
                },
                itemCount: locator<AppStateValues>().todos.length,
              ),
            )
          ],
        ),
      );
    }
  }

  Widget todoContainer(TodoOption todo, HomeViewModel model) {
    return InkWell(
      onTap: () {
        model.onTapTodo(todo, context);
      },
      child: Container(
        height: 75,
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 2),
              blurRadius: 8,
              spreadRadius: 8,
              color: Colors.black.withOpacity(.025),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 220,
              child: Text(
                todo.title,
                style: AppTextStyles.subText,
              ),
            ),
            Container(
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.midGrey),
              ),
              alignment: Alignment.center,
              child: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: AppColors.textColor,
                size: 18,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget walletContainer(HomeViewModel model) {
    return GestureDetector(
      onTap: () {
        model.goToTransactionHistory(context);
      },
      child: Container(
        height: 175,
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
        child:
            // model.showEmptyState()
            //     ? refreshWalletContainer(model)
            //     :
            Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                model.isKycLoading
                    ? walletTypeShimmer()
                    : walletTypeContainer(
                        kycLevel: locator<AppStateValues>().currentUser!.kyc,
                      ),
                AppAssets.images.launcher.image(height: 23, width: 23),
              ],
            ),
            const Spacer(
              flex: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: model.isLoading
                      ? walletAmountShimmer()
                      : walletBalanceContainer(model),
                ),
                8.horizontalGap,
                model.isLoading ? walletIdShimmer() : volumeContainer(model),
              ],
            ),
            const Spacer(
              flex: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: branchContainer(model),
                ),
                8.horizontalGap,
                staffContainer(model),
              ],
            )
          ],
        ),
      ),
    );
  }

  Column refreshWalletContainer(HomeViewModel model) {
    return Column(
      children: [
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
          width: 160,
          child: Text(
            "Please pull down to refresh your wallet content.",
            style: AppTextStyles.smallText.copyWith(height: 1),
            textAlign: TextAlign.center,
          ),
        )
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

  Widget salesShimmer() {
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
    return GestureDetector(
      onTap: () {
        model.copyWalletId();
      },
      child: Container(
        decoration: const BoxDecoration(),
        height: 50,
        width: 130,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "TRANSACTION VOL.",
              style: AppTextStyles.smallText.copyWith(
                color: AppColors.brightBlue,
              ),
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
                    .copyWith(color: AppColors.grey, fontSize: 16.5),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget walletAmountShimmer() {
    return SizedBox(
      height: 51,
      width: 180,
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
    return SizedBox(
      height: 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Text(
                "WALLET BALANCE",
                style: AppTextStyles.subHeader
                    .copyWith(color: AppColors.brightBlue, fontSize: 11),
              ),
              6.horizontalGap,
              balanceVisibilitySwitch(model)
            ],
          ),
          FittedBox(
            child: Text(
              "${nairaSymbol()} 0.00",
              // "${nairaSymbol()}${model.hideBalance ? locator<AppStateValues>().wallet!.balance.toString().replaceAll(RegExp(r"[0-9]"), "*") : format.format(double.parse(locator<AppStateValues>().wallet!.balance))}",
              style: AppTextStyles.header.copyWith(
                color: AppColors.grey,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget branchContainer(HomeViewModel model) {
    return SizedBox(
      height: 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "TOTAL BRANCHES",
            style: AppTextStyles.subHeader
                .copyWith(color: AppColors.brightBlue, fontSize: 11),
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
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget staffContainer(HomeViewModel model) {
    return SizedBox(
      height: 50,
      width: 130,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "TOTAL STAFF",
            style: AppTextStyles.subHeader
                .copyWith(color: AppColors.brightBlue, fontSize: 11),
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
                fontSize: 18,
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
          fontSize: 12.5,
          fontWeight: FontWeight.w500,
          color: kycLevel == "pro" ? AppColors.white : const Color(0xFFFF9601),
        ),
      ),
    );
  }

  Widget firstRow(VoidCallback onTap) {
    return Container(
      height: 50,
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
      ),
      child: Row(
        children: [
          BlueAvatar(
            radius: 20,
            imageUrl: locator<AppStateValues>().currentUser!.displayPic,
          ),
          12.horizontalGap,
          Expanded(
            child: welcomeMessage(),
          ),
          transactionHistoryIconButton(onTap),
        ],
      ),
    );
  }

  Widget transactionHistoryIconButton(VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        width: 40,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: const Color(0xFFE5E6E8),
          ),
        ),
        child: AppAssets.images.icons.history.svg(),
      ),
    );
  }

  Widget welcomeMessage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hi, Welcome",
          style:
              AppTextStyles.smallText.copyWith(color: AppColors.bodyTextColor),
        ),
        4.verticalGap,
        Text(
          locator<AppStateValues>().currentUser!.business.name,
          style: AppTextStyles.header.copyWith(fontSize: 18.5),
        ),
      ],
    );
  }
}
