import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/transaction_history/transaction_history.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/widgets/paging/error.dart';
import 'package:blue_business/widgets/paging/no_items.dart';
import 'package:blue_business/widgets/steppers/filter_tab.dart';
import 'package:blue_business/widgets/paging/loading_shimmer.dart';
import 'package:blue_business/widgets/tiles/transaction_tile.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:intl/intl.dart';

import 'view_model.dart';

class TransactionHistoryView extends StatefulWidget {
  const TransactionHistoryView({super.key});

  @override
  State<TransactionHistoryView> createState() => _TransactionHistoryViewState();
}

class _TransactionHistoryViewState extends State<TransactionHistoryView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<TransactionHistoryViewModel>(
      model: TransactionHistoryViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () {
              model.goBack(context);
            },
            icon: Icons.arrow_back_ios_new_rounded,
            actions: [
              filterbutton(model.filterAction),
            ],
          ),
          body: Container(
            height: model.size.height,
            width: model.size.width,
            padding:
                const EdgeInsets.only(left: 16, right: 16, bottom: 35, top: 20),
            child: Column(
              children: [
                FilterTab(
                  selectedValue: model.selectedType,
                  tabs: model.types,
                  onChanged: model.onTypeChanged,
                ),
                21.verticalGap,
                Expanded(
                  child: transactionList(model),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget filterbutton(VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        padding: const EdgeInsets.all(9),
        height: 34,
        width: 34,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: AppAssets.images.icons.filter.svg(),
      ),
    );
  }

  Widget transactionList(TransactionHistoryViewModel model) {
    return RefreshIndicator(
      onRefresh: () async {
        model.transactionController.refresh();
      },
      child: PagedListView<int, TransactionHistory>.separated(
        shrinkWrap: true,
        pagingController: model.transactionController,
        builderDelegate: PagedChildBuilderDelegate(
          noMoreItemsIndicatorBuilder: (ctx) => NoItems.newPage("No more"),
          noItemsFoundIndicatorBuilder: (ctx) =>
              NoItems.firstPage("You have not completed any transactions yet."),
          firstPageProgressIndicatorBuilder: (context) => ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => BlueLoadingTile.withImage(),
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
          newPageErrorIndicatorBuilder: (ctx) => PagingError.firstPage(
            model.transactionController.error.toString(),
            model.transactionController.refresh,
          ),
          newPageProgressIndicatorBuilder: (context) =>
              BlueLoadingTile.withImage(),
          itemBuilder: (context, item, i) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (model.showDate(i))
                  Text(
                    (DateFormat.yMMMMd().format(DateTime.parse(item.createdAt)))
                        .toUpperCase(),
                    style: AppTextStyles.subText
                        .copyWith(color: AppColors.textColor),
                  ),
                4.verticalGap,
                GestureDetector(
                  onTap: () {
                    model.getTransactionDetails(item, context);
                  },
                  child: TransationTile(
                    transaction: item,
                    colored: true,
                  ),
                ),
              ],
            );
          },
        ),
        separatorBuilder: (context, i) {
          return 10.verticalGap;
        },
      ),
    );
  }
}
