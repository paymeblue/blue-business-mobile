import 'package:auto_route/auto_route.dart';
import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/beneficiary/payment/blue_beneficiary.dart';
import 'package:blue_business/core/models/transaction/initiate/data/initiate_transaction_data.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/ui/widgets/buttons/app_buttons.dart';
import 'package:blue_business/ui/widgets/paging/error.dart';
import 'package:blue_business/ui/widgets/paging/loading_shimmer.dart';
import 'package:blue_business/ui/widgets/paging/no_items.dart';
import 'package:blue_business/ui/widgets/textfield/blue_textfield.dart';
import 'package:blue_business/ui/widgets/tiles/beneficiary_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import 'view_model.dart';

@RoutePage()
class BluePaymentView extends StatelessWidget {
  final InitiateTransactionData data;
  const BluePaymentView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return BaseView<BluePaymentViewModel>(
      model: BluePaymentViewModel(),
      onModelReady: (model) => model.init(context, data),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () => context.router.maybePop(),
            icon: Icons.arrow_back_ios_new,
          ),
          body: Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 16, bottom: 35, top: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: ListView(
                  shrinkWrap: true,
                  children: [
                    ...titleAndSubtitle(),
                    35.verticalGap,
                    identifierField(model),
                    if (model.loading)
                      Center(
                        child: LoadingAnimationWidget.progressiveDots(
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
                    beneficiaryList(model),
                  ],
                )),
                AppButton.primary(
                  title: "Continue",
                  isEnabled: model.identifierController.text.isNotEmpty,
                  onTap: () {
                    model.verify(context);
                  },
                )
              ],
            ),
          ),
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
        height: 110.h,
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
      BlueBeneficiary item, BluePaymentViewModel model) {
    return GestureDetector(
      onTap: () {
        model.onTapRecentlyPaid(item);
      },
      child: Container(
        decoration: const BoxDecoration(),
        width: 85.w,
        child: Column(
          children: [
            Container(
              height: 38.h,
              width: 38.w,
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.midGrey,
              ),
              child: AppAssets.images.logos.blueBgLogo.image(),
            ),
            10.verticalGap,
            Text(
              item.name,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.header.copyWith(fontSize: 15.sp),
            ),
            FittedBox(
              child: Text(
                item.identifier,
                style: AppTextStyles.smallText
                    .copyWith(color: AppColors.bodyTextColor, fontSize: 14.sp),
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
        width: 330.w,
        child: Text(
          "Enter the wallet ID of the Blue user you want to send money to.",
          style: AppTextStyles.subHeader,
          textAlign: TextAlign.start,
        ),
      )
    ];
  }
}
