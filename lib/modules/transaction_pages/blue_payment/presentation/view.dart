import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/beneficiary/blue_beneficiary.dart';
import 'package:blue_business/core/models/recently_paid/item/recently_paid_item.dart';
import 'package:blue_business/core/models/transaction/initiate/data/initiate_transaction_data.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/paging/error.dart';
import 'package:blue_business/widgets/paging/loading_shimmer.dart';
import 'package:blue_business/widgets/paging/no_items.dart';
import 'package:blue_business/widgets/tiles/beneficiary_tile.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:blue_business/widgets/textfield/blue_textfield.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import 'view_model.dart';

class BluePaymentView extends StatefulWidget {
  final InitiateTransactionData data;
  const BluePaymentView({super.key, required this.data});

  @override
  State<BluePaymentView> createState() => _BluePaymentViewState();
}

class _BluePaymentViewState extends State<BluePaymentView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<BluePaymentViewModel>(
      model: BluePaymentViewModel(),
      onModelReady: (model) => model.init(context, widget.data),
      builder: (context, model, _) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...titleAndSubtitle(),
            35.verticalGap,
            identifierField(model),
            if (model.loading)
              Center(
                child: LoadingAnimationWidget.prograssiveDots(
                    color: AppColors.primary, size: 45),
              )
            else if (model.recentlyPaidItems.isEmpty)
              0.verticalGap
            else ...[
              20.verticalGap,
              ...recentlyPaidSection(model),
            ],
            18.verticalGap,
            ...searchBeneficiaryTextField(model),
            Expanded(
              child: beneficiaryList(model),
            ),
            AppButton.primary(
              title: "Continue",
              isEnabled: model.identifierController.text.isNotEmpty,
              onTap: () {
                model.onButtonTap(context);
              },
            )
          ],
        );
      },
    );
  }

  Widget identifierField(BluePaymentViewModel model) {
    return BlueTextField.plaintext(
      hint: "2210123339",
      title: "Wallet ID / Phone number",
      onChanged: model.onChanged,
      controller: model.identifierController,
    );
  }

  List<Widget> searchBeneficiaryTextField(BluePaymentViewModel model) {
    return [
      Text(
        "ALL BENEFICIARIES",
        style: AppTextStyles.subHeader,
      ),
      4.verticalGap,
      BlueTextField.search(
        hint: "Search Beneficiaries",
        onSearchChanged: model.onSearchChanged,
      )
    ];
  }

  Widget beneficiaryList(BluePaymentViewModel model) {
    return RefreshIndicator(
      onRefresh: () async {
        model.beneficiaryController.refresh();
      },
      child: PagedListView<int, BlueBeneficiary>.separated(
        shrinkWrap: true,
        pagingController: model.beneficiaryController,
        builderDelegate: PagedChildBuilderDelegate(
          noMoreItemsIndicatorBuilder: (ctx) => NoItems.newPage("No more"),
          noItemsFoundIndicatorBuilder: (ctx) => NoItems.firstPage(
              model.query.isNotEmpty
                  ? "You have no benficiaries matching \"${model.query}\"."
                  : "You do not have any beneficiaries yet."),
          firstPageProgressIndicatorBuilder: (context) => ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => BlueLoadingTile.withImage(),
            itemCount: 3,
            separatorBuilder: (context, index) => 20.verticalGap,
          ),
          firstPageErrorIndicatorBuilder: (ctx) => Column(
            children: [
              PagingError.firstPage(
                model.beneficiaryController.error.toString(),
                model.beneficiaryController.refresh,
              ),
            ],
          ),
          newPageErrorIndicatorBuilder: (ctx) => PagingError.firstPage(
            model.beneficiaryController.toString(),
            model.beneficiaryController.refresh,
          ),
          newPageProgressIndicatorBuilder: (context) =>
              BlueLoadingTile.withImage(),
          itemBuilder: (context, item, i) {
            return InkWell(
              onTap: () {
                model.onTapBeneficiaryTile(item);
              },
              child: BeneficiaryTile(
                beneficiary: item,
              ),
            );
          },
        ),
        separatorBuilder: (context, i) {
          return 30.verticalGap;
        },
      ),
    );
  }

  List<Widget> recentlyPaidSection(BluePaymentViewModel model) {
    return [
      Text(
        "RECENTLY PAID",
        style: AppTextStyles.subHeader,
      ),
      Container(
        height: 110,
        width: model.size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.grey,
        ),
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          itemBuilder: (context, i) {
            return recentlyPaidContainer(model.recentlyPaidItems[i], model);
          },
          separatorBuilder: (context, i) => 12.horizontalGap,
          itemCount: model.recentlyPaidItems.length,
        ),
      )
    ];
  }

  Widget recentlyPaidContainer(
      RecentlyPaidItem item, BluePaymentViewModel model) {
    return GestureDetector(
      onTap: () {
        model.onTapRecentlyPaid(item);
      },
      child: Container(
        decoration: const BoxDecoration(),
        width: 85,
        child: Column(
          children: [
            Container(
              height: 38,
              width: 38,
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.midGrey,
              ),
              child: AppAssets.images.logos.blueBgLogo.image(),
            ),
            6.verticalGap,
            Text(
              "${item.uFirstName} ${item.uLastName}",
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.header.copyWith(fontSize: 15.5),
            ),
            FittedBox(
              child: Text(
                item.wWalletCode,
                style: AppTextStyles.smallText
                    .copyWith(color: AppColors.bodyTextColor, fontSize: 14.5),
              ),
            )
          ],
        ),
      ),
    );
  }

  List<Widget> titleAndSubtitle() {
    return [
      Text(
        "Enter Recipient details",
        style: AppTextStyles.header,
      ),
      8.verticalGap,
      SizedBox(
        width: 330,
        child: Text(
          "Enter the wallet ID of the Blue user you want to send money to.",
          style: AppTextStyles.subHeader,
          textAlign: TextAlign.start,
        ),
      )
    ];
  }
}
