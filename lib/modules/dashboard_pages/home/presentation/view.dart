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
import 'package:blue_business/widgets/modals/popup_menu.dart';
import 'package:blue_business/widgets/paging/error.dart';
import 'package:blue_business/widgets/paging/no_items.dart';
import 'package:blue_business/widgets/paging/loading_shimmer.dart';
import 'package:blue_business/widgets/tiles/transaction_tile.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:shimmer/shimmer.dart';

import 'view_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeViewModel>(
      model: HomeViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return SafeArea(
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
        );
      },
    );
  }

  Widget walletSection(HomeViewModel model) {
    return SizedBox(
      height: 130,
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
        height: 25,
        width: 25,
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
        children: [
          totalSalesHeader(),
          14.verticalGap,
          Container(
            width: model.size.width,
            height: 250,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.midGrey),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                popupMenu(model),
                8.verticalGap,
                if (model.salesLoading)
                  salesShimmer()
                else ...[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      analyticsColumn(
                          title: "Point of Sales",
                          amount: model.spendingData!.desktopSum,
                          percentIncrease: .4),
                      analyticsColumn(
                        title: "Mobile Account",
                        amount: model.spendingData!.mobileSum,
                        percentIncrease: -.156,
                      ),
                    ],
                  ),
                  16.verticalGap,
                  Container(
                    height: 70,
                    width: model.size.width,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: AppColors.inputField,
                    ),
                    child: Text(
                      "${nairaSymbol()}${double.parse(model.spendingData!.mobileSum) + double.parse(model.spendingData!.desktopSum)}",
                      style: AppTextStyles.header.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
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
            model.popupItem,
            style: AppTextStyles.subHeader.copyWith(
              color: AppColors.primary,
            ),
          ),
          8.horizontalGap,
          BluePopupMenu(
            icon: const Icon(
              Icons.keyboard_arrow_down_rounded,
              color: AppColors.primary,
            ),
            popupItems: model.popupItems(),
          )
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
              color: option.buttonColor,
              shape: BoxShape.circle,
            ),
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
        height: 130,
        width: model.size.width,
        margin: const EdgeInsets.only(
          left: 16,
          right: 16,
        ),
        padding: EdgeInsets.symmetric(
            horizontal: 17, vertical: model.showEmptyState() ? 21 : 11),
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(11),
        ),
        child: model.showEmptyState()
            ? refreshWalletContainer(model)
            : Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      model.isKycLoading
                          ? walletTypeShimmer()
                          : walletTypeContainer(
                              kycLevel: locator<AppStateValues>().kycLevel),
                      AppAssets.images.launcher.image(height: 23, width: 23),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: model.isLoading
                            ? walletAmountShimmer()
                            : walletBalanceContainer(model),
                      ),
                      8.horizontalGap,
                      model.isLoading
                          ? walletIdShimmer()
                          : walletIdContainer(model),
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
      height: 150,
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

  Widget walletIdContainer(HomeViewModel model) {
    return GestureDetector(
      onTap: () {
        model.copyWalletId();
      },
      child: Container(
        decoration: const BoxDecoration(),
        height: 60,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "BLUE ID NO.",
              style: AppTextStyles.smallText.copyWith(
                color: AppColors.brightBlue,
              ),
            ),
            4.verticalGap,
            FittedBox(
              child: Row(
                children: [
                  Text(
                    locator<AppStateValues>().wallet!.walletCode,
                    style: AppTextStyles.header
                        .copyWith(color: AppColors.grey, fontSize: 16.5),
                  ),
                  4.horizontalGap,
                  AppAssets.images.icons.copyWhite.svg(height: 12),
                ],
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
      height: 60,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Text(
                "WALLET BALANCE",
                style: AppTextStyles.subHeader
                    .copyWith(color: AppColors.brightBlue, fontSize: 15.5),
              ),
              6.horizontalGap,
              balanceVisibilitySwitch(model)
            ],
          ),
          FittedBox(
            child: Text(
              "${nairaSymbol()}${model.hideBalance ? locator<AppStateValues>().wallet!.balance.toString().replaceAll(RegExp(r"[0-9]"), "*") : locator<AppStateValues>().wallet!.balance}",
              style: AppTextStyles.header.copyWith(
                color: AppColors.grey,
                fontSize: 22,
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
          "${locator<AppStateValues>().currentUser!.firstName} ${locator<AppStateValues>().currentUser!.lastName}",
          style: AppTextStyles.header.copyWith(fontSize: 18.5),
        ),
      ],
    );
  }
}
