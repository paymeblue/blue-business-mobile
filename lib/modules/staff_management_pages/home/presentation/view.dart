import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/staff/get/item/staff.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:blue_business/widgets/paging/error.dart';
import 'package:blue_business/widgets/paging/loading_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import 'view_model.dart';

class StaffHomeView extends StatefulWidget {
  const StaffHomeView({super.key});

  @override
  State<StaffHomeView> createState() => _StaffHomeViewState();
}

class _StaffHomeViewState extends State<StaffHomeView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<StaffHomeViewModel>(
        model: StaffHomeViewModel(),
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
                  ...titleAndSubtitle(model),
                  12.verticalGap,
                  Expanded(
                    child: staffList(model),
                  ),
                ],
              ),
            ),
          );
        });
  }

  Widget staffList(StaffHomeViewModel model) {
    return RefreshIndicator(
      onRefresh: () async => model.staffPagingController.refresh(),
      child: PagedListView<int, Staff>.separated(
        pagingController: model.staffPagingController,
        builderDelegate: PagedChildBuilderDelegate(
            noItemsFoundIndicatorBuilder: (context) => emptyPage(model),
            firstPageProgressIndicatorBuilder: (context) => Column(
                  children: List.generate(
                    4,
                    (index) => Column(
                      children: [
                        BlueLoadingTile.withImage(),
                        if (index < 3) 6.verticalGap,
                      ],
                    ),
                  ),
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
                      GestureDetector(
                        onTap: () {
                          model.goToAddStaff(context);
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
                                "Add staff",
                                style: AppTextStyles.subText.copyWith(
                                  color: AppColors.primary,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      8.verticalGap
                    ],
                    staffTile(model, item),
                  ],
                )),
        separatorBuilder: (context, i) => 10.verticalGap,
      ),
    );
  }

  SizedBox staffTile(StaffHomeViewModel model, Staff item) {
    return SizedBox(
      height: 50,
      width: model.size.width,
      child: Row(
        children: [
          AppAssets.images.icons.staff.svg(),
          10.horizontalGap,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style: AppTextStyles.subHeader,
                ),
                Text(
                  item.phone,
                  style: AppTextStyles.smallText.copyWith(
                    color: AppColors.bodyTextColor2,
                  ),
                )
              ],
            ),
          ),
          IconButton(
            onPressed: () {
              model.onDeleteStaff(item);
            },
            icon: AppAssets.images.icons.delete.svg(),
          )
        ],
      ),
    );
  }

  Widget emptyPage(StaffHomeViewModel model) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppAssets.images.icons.emptyStaff.image(
            height: 88,
            width: 128,
          ),
          SizedBox(
            width: 179,
            child: Text(
              "You have not added any staff yet",
              style: AppTextStyles.subHeader,
              textAlign: TextAlign.center,
            ),
          ),
          20.verticalGap,
          SizedBox(
            width: 300,
            child: AppButton.primaryWithIcon(
              title: "Add Staff",
              icon: const Icon(
                Icons.add,
                color: AppColors.white,
              ),
              onTap: () {
                model.goToAddStaff(context);
              },
            ),
          )
        ],
      ),
    );
  }

  List<Widget> titleAndSubtitle(StaffHomeViewModel model) {
    return [
      Text(
        model.staffPagingController.itemList?.isEmpty ?? true
            ? "Add Staff"
            : "Staff listing",
        style: AppTextStyles.header,
      ),
      4.verticalGap,
      SizedBox(
        width: 350,
        child: Text(
          model.staffPagingController.itemList?.isEmpty ?? true
              ? "Grant access to your staff to make sales on BlueBusiness."
              : "Below are a list of staff(s) with access to your BlueBusiness. You can always edit their access.",
          style: AppTextStyles.subHeader,
          textAlign: TextAlign.start,
        ),
      )
    ];
  }
}
