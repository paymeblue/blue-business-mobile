import 'package:auto_route/auto_route.dart';
import 'package:blue_business/core/config/country_code.dart';
import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/branches/branch.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/ui/widgets/buttons/app_buttons.dart';
import 'package:blue_business/ui/widgets/paging/error.dart';
import 'package:blue_business/ui/widgets/textfield/blue_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';

import 'view_model.dart';

@RoutePage()
class BranchHomeView extends StatelessWidget {
  const BranchHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<BranchHomeViewModel>(
      model: BranchHomeViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            icon: Icons.arrow_back_ios_new,
            onBackTap: () {
              locator<AppRouter>().maybePop();
            },
          ),
          body: Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 35),
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
                            Icon(
                              Icons.add,
                              size: 15.sp,
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
            noItemsFoundIndicatorBuilder: (context) =>
                emptyBody(model, context),
            firstPageProgressIndicatorBuilder: (context) => Column(
                  children: [
                    ...List.generate(
                      4,
                      (index) => Column(
                        children: [
                          branchLoadingTile(model),
                          if (index < 3) 6.verticalGap,
                        ],
                      ),
                    )
                  ],
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
                branchLoadingTile(model),
            itemBuilder: (context, item, i) => Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    branchTile(model, item, context),
                  ],
                )),
        separatorBuilder: (context, i) => 10.verticalGap,
      ),
    );
  }

  Widget branchLoadingTile(BranchHomeViewModel model) {
    return Shimmer.fromColors(
      baseColor: AppColors.brightBlue.withOpacityValue(.3),
      highlightColor: AppColors.white,
      child: Container(
        height: 160,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacityValue(.25)),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 25,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.black.withOpacityValue(.4),
              ),
            ),
            15.verticalGap,
            Expanded(
              child: Container(
                height: 40,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacityValue(.6),
                ),
              ),
            ),
            15.verticalGap,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: model.size.width / 2.5,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacityValue(.6),
                  ),
                ),
                Container(
                  width: model.size.width / 2.5,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacityValue(.6),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget branchTile(
      BranchHomeViewModel model, Branch item, BuildContext context) {
    NumberFormat format = NumberFormat("#,##0.00");
    String amount = format.format(double.parse(item.totalAmount));
    return Container(
      width: model.size.width.w,
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
                      width: 135.w,
                      height: 40.h,
                      child: AppButton.primary(
                        title: "View Insights",
                        onTap: () {
                          model.goToBranchInsights(context, item);
                        },
                      ),
                    ),
                    SizedBox(
                      width: 135.w,
                      height: 40.h,
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
              height: 25.w,
              width: 25.h,
              decoration: const BoxDecoration(),
              padding: const EdgeInsets.all(4),
              child: AppAssets.images.icons.delete.svg(),
            ),
          )
        ],
      ),
    );
  }

  Widget emptyBody(BranchHomeViewModel model, BuildContext context) {
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
