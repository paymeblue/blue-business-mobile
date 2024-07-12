import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/io/api/country_code.dart';
import 'package:blue_business/core/models/branches/branch.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:blue_business/widgets/paging/error.dart';
import 'package:blue_business/widgets/paging/loading_shimmer.dart';
import 'package:blue_business/widgets/textfield/blue_textfield.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:intl/intl.dart';

import 'view_model.dart';

class BranchHomeView extends StatefulWidget {
  const BranchHomeView({super.key});

  @override
  State<BranchHomeView> createState() => _BranchHomeViewState();
}

class _BranchHomeViewState extends State<BranchHomeView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<BranchHomeViewModel>(
      model: BranchHomeViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () => model.goBack(context),
          ),
          body: Container(
            height: MediaQuery.sizeOf(context).height,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BlueTextField.search(
                  hint: "Search branches",
                  controller: model.searchController,
                  onSearchChanged: model.onSearchChanged,
                ),
                10.verticalGap,
                if (model.branchPagingController.itemList != null &&
                    model.branchPagingController.itemList!.isNotEmpty) ...[
                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {
                        model.goToAddBranch(context);
                      },
                      child: Container(
                        decoration: const BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Icon(
                              Icons.add,
                              size: 15,
                              color: AppColors.primary,
                            ),
                            Text(
                              "Add Branch",
                              style: AppTextStyles.subText.copyWith(
                                color: AppColors.primary,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  8.verticalGap
                ],
                Expanded(
                  child: branchList(model),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget branchList(BranchHomeViewModel model) {
    return RefreshIndicator(
      onRefresh: () async => model.branchPagingController.refresh(),
      child: PagedListView<int, Branch>.separated(
        pagingController: model.branchPagingController,
        builderDelegate: PagedChildBuilderDelegate(
            noItemsFoundIndicatorBuilder: (context) => emptyBody(model),
            firstPageProgressIndicatorBuilder: (context) => Column(
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
                      model.branchPagingController.error.toString(),
                      model.branchPagingController.refresh,
                    ),
                  ],
                ),
            newPageErrorIndicatorBuilder: (ctx) => PagingError.firstPage(
                  model.branchPagingController.error.toString(),
                  model.branchPagingController.refresh,
                ),
            newPageProgressIndicatorBuilder: (context) =>
                BlueLoadingTile.withImage(),
            itemBuilder: (context, item, i) => Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    branchTile(model, item),
                  ],
                )),
        separatorBuilder: (context, i) => 10.verticalGap,
      ),
    );
  }

  Widget branchTile(BranchHomeViewModel model, Branch item) {
    NumberFormat format = NumberFormat("#,##0.00");
    String amount = format.format(double.parse(item.totalAmount));
    return Container(
      width: model.size.width,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.bgGrey),
          borderRadius: BorderRadius.circular(5)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name.toUpperCase(),
                  style: AppTextStyles.subHeader
                      .copyWith(fontWeight: FontWeight.w400),
                ),
                12.verticalGap,
                Text(
                  "Total Revenue",
                  style: AppTextStyles.smallText.copyWith(
                      color: AppColors.bodyTextColor,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "${nairaSymbol()}$amount",
                  style: AppTextStyles.header,
                ),
                12.verticalGap,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: model.size.width / 2.6,
                      height: 40,
                      child: AppButton.primary(
                        title: "View Insights",
                        onTap: () {
                          model.goToBranchInsights(context, item);
                        },
                      ),
                    ),
                    SizedBox(
                      width: model.size.width / 2.6,
                      height: 40,
                      child: AppButton.ghostPrimary(
                        title: "Edit branch",
                        onTap: () {
                          model.getBranch(context, item.id);
                        },
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          6.horizontalGap,
          GestureDetector(
            onTap: () {
              model.onDeleteBranch(context, item);
            },
            child: Container(
              height: 25,
              width: 25,
              decoration: const BoxDecoration(),
              padding: const EdgeInsets.all(4),
              child: AppAssets.images.icons.delete.svg(),
            ),
          )
        ],
      ),
    );
  }

  Widget emptyBody(BranchHomeViewModel model) {
    return SizedBox(
      width: model.size.width,
      child: Column(
        children: [
          AppAssets.images.icons.emptyBranch.svg(),
          Text(
            "No Linked Branches",
            style: AppTextStyles.midHeader,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45),
            child: Text(
              "Add your branch now to start tracking revenue and performance stats.",
              style: AppTextStyles.subHeader
                  .copyWith(height: 1, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
          ),
          35.verticalGap,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45),
            child: AppButton.primaryWithIcon(
              icon: const Icon(
                Icons.add,
              ),
              title: "Add new branch",
              onTap: () {
                model.goToAddBranch(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
