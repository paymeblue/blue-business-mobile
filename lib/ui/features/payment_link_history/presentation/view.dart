import 'package:auto_route/auto_route.dart';
import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/payment_link/payment_link.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/payment_link_history/widgets/payment_link_tile.dart';
import 'package:blue_business/ui/features/payment_link_history/widgets/receipt.dart';
import 'package:blue_business/ui/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/ui/widgets/paging/error.dart';
import 'package:blue_business/ui/widgets/paging/loading_shimmer.dart';
import 'package:blue_business/ui/widgets/paging/no_items.dart';
import 'package:blue_business/ui/widgets/steppers/filter_tab.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:intl/intl.dart';
import 'package:screenshot/screenshot.dart';

import 'view_model.dart';

@RoutePage()
class PaymentLinkHistoryView extends StatefulWidget {
  const PaymentLinkHistoryView({super.key});

  @override
  State<PaymentLinkHistoryView> createState() => _PaymentLinkHistoryViewState();
}

class _PaymentLinkHistoryViewState extends State<PaymentLinkHistoryView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<PaymentLinkHistoryViewModel>(
      model: PaymentLinkHistoryViewModel(),
      onModelReady: (vm) => vm.init(context),
      builder: (context, model, _) {
        return Scaffold(
            appBar: BlueAppBar.primary(
              onBackTap: () {
                model.goBack(context);
              },
            ),
            body: Stack(
              children: [
                if (model.receipt != null)
                  Screenshot(
                    controller: model.screenshotController,
                    child: PaymentLinkReceipt(record: model.receipt!),
                  ),
                Container(
                  height: model.size.height,
                  width: model.size.width,
                  decoration: const BoxDecoration(color: AppColors.white),
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, bottom: 35, top: 20),
                  child: Column(
                    children: [
                      FilterTab(
                        selectedValue: model.selectedStatus,
                        tabs: model.statusList,
                        onChanged: model.onStatusChanged,
                      ),
                      21.verticalGap,
                      Expanded(
                        child: paymentLinkList(model),
                      ),
                    ],
                  ),
                ),
              ],
            ));
      },
    );
  }

  Widget paymentLinkList(PaymentLinkHistoryViewModel model) {
    return RefreshIndicator(
      onRefresh: () async {
        model.paymentLinkController.refresh();
      },
      child: PagedListView<int, PaymentLinkItem>.separated(
        shrinkWrap: true,
        pagingController: model.paymentLinkController,
        builderDelegate: PagedChildBuilderDelegate(
          noMoreItemsIndicatorBuilder: (ctx) => NoItems.newPage("No more"),
          noItemsFoundIndicatorBuilder: (ctx) =>
              NoItems.firstPage("There are no payment link transactions here."),
          firstPageProgressIndicatorBuilder: (context) => ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => BlueLoadingTile.withoutImage(),
            itemCount: 4,
            separatorBuilder: (context, index) => 20.verticalGap,
          ),
          firstPageErrorIndicatorBuilder: (ctx) => Column(
            children: [
              PagingError.firstPage(
                model.paymentLinkController.error.toString(),
                model.paymentLinkController.refresh,
              ),
            ],
          ),
          newPageErrorIndicatorBuilder: (ctx) => PagingError.firstPage(
            model.paymentLinkController.error.toString(),
            model.paymentLinkController.refresh,
          ),
          newPageProgressIndicatorBuilder: (context) =>
              BlueLoadingTile.withoutImage(),
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
                PaymentLinkTile(
                  item: item,
                  popupItems: model.popupItems(item),
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
