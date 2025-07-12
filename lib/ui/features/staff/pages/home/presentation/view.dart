import 'package:auto_route/auto_route.dart';
import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/popup/popup.dart';
import 'package:blue_business/core/models/staff/get/item/staff.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/ui/widgets/avatar/avatar.dart';
import 'package:blue_business/ui/widgets/buttons/app_buttons.dart';
import 'package:blue_business/ui/widgets/modals/popup_menu.dart';
import 'package:blue_business/ui/widgets/paging/error.dart';
import 'package:blue_business/ui/widgets/paging/no_items.dart';
import 'package:blue_business/ui/widgets/textfield/blue_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:shimmer/shimmer.dart';

import 'view_model.dart';

@RoutePage()
class StaffHomeView extends StatelessWidget {
  const StaffHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<StaffHomeViewModel>(
      model: StaffHomeViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () {
              model.goBack(context);
            },
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...titleAndSubtitle(model),
                15.verticalGap,
                BlueTextField.search(
                  hint: "Search branches",
                  controller: model.searchController,
                  onSearchChanged: model.onSearchChanged,
                ),
                Expanded(
                  child: staffList(model),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget staffList(StaffHomeViewModel model) {
    return RefreshIndicator(
      onRefresh: () async => model.staffPagingController.refresh(),
      child: PagedListView<int, Staff>.separated(
        pagingController: model.staffPagingController,
        builderDelegate: PagedChildBuilderDelegate(
            noItemsFoundIndicatorBuilder: (context) =>
                emptyPage(model, context),
            firstPageProgressIndicatorBuilder: (context) => Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
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
                            Icon(
                              Icons.add,
                              size: 15.sp,
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
                    8.verticalGap,
                    ...List.generate(
                      4,
                      (index) => Column(
                        children: [
                          staffLoadingTile(model),
                          if (index < 3) 6.verticalGap,
                        ],
                      ),
                    )
                  ],
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
                staffLoadingTile(model),
            itemBuilder: (context, item, i) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  if (i == 0) ...[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BluePopupMenu(
                            width: null,
                            icon: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: AppColors.blue),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 6),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    (model.role?.name ?? "all roles")
                                        .sentenceCase,
                                    style: AppTextStyles.subText.copyWith(
                                      color: AppColors.blue,
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    size: 18.sp,
                                    color: AppColors.blue,
                                  ),
                                ],
                              ),
                            ),
                            popupItems: model.roles
                                .map(
                                  (e) => PopupModel(
                                    title: e.name.sentenceCase,
                                    onTap: () {
                                      model.role = e;
                                      model.staffPagingController.refresh();
                                    },
                                  ),
                                )
                                .toList()),
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
                                Icon(
                                  Icons.add,
                                  size: 15.sp,
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
                      ],
                    ),
                    8.verticalGap
                  ],
                  staffTile(model, item, context),
                ],
              );
            }),
        separatorBuilder: (context, i) => 10.verticalGap,
      ),
    );
  }

  Widget staffLoadingTile(StaffHomeViewModel model) {
    return Shimmer.fromColors(
      baseColor: AppColors.brightBlue.withOpacityValue(.3),
      highlightColor: AppColors.white,
      child: Container(
        height: 180.h,
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
              height: 25.h,
              width: 100.w,
              decoration: BoxDecoration(
                color: Colors.black.withOpacityValue(.4),
              ),
            ),
            15.verticalGap,
            Expanded(
              child: Row(
                children: [
                  Container(
                    height: 44.h,
                    width: 44.w,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacityValue(.6),
                      shape: BoxShape.circle,
                    ),
                  ),
                  10.horizontalGap,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 40.h,
                          width: 120.w,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacityValue(.6),
                          ),
                        ),
                        4.verticalGap,
                        Container(
                          height: 12.h,
                          width: 150.w,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacityValue(.6),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            15.verticalGap,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: (model.size.width / 2.5).w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacityValue(.6),
                  ),
                ),
                Container(
                  width: (model.size.width / 2.5).w,
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

  Widget staffTile(StaffHomeViewModel model, Staff item, BuildContext context) {
    return Container(
      width: model.size.width,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.bgGrey),
          borderRadius: BorderRadius.circular(5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(color: AppColors.inputField),
            child: Text(
              "${item.role.toUpperCase()} ROLE",
              style: AppTextStyles.smallText.copyWith(
                  fontWeight: FontWeight.w500,
                  color: AppColors.textColor,
                  fontSize: 10.sp),
            ),
          ),
          8.verticalGap,
          Row(
            children: [
              BlueAvatar(
                radius: 22.5.sp,
                imageUrl: item.displayPicture,
              ),
              10.horizontalGap,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      style: AppTextStyles.header.copyWith(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    if (item.branchName != null)
                      Text(
                        item.branchName!,
                        style: AppTextStyles.smallText.copyWith(
                          color: AppColors.blue,
                        ),
                      ),
                    Text(
                      item.phone,
                      style: AppTextStyles.smallText.copyWith(
                        color: AppColors.bodyTextColor2,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          15.verticalGap,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 135.w,
                height: 40.h,
                child: AppButton.primary(
                  title: "Edit staff",
                  onTap: () {
                    model.goToAddStaff(context, staff: item);
                  },
                ),
              ),
              SizedBox(
                width: 135.w,
                height: 40.h,
                child: AppButton.ghostPrimary(
                    title: "Delete",
                    onTap: () {
                      model.onDeleteStaff(item);
                    }),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget emptyPage(StaffHomeViewModel model, BuildContext context) {
    if (model.role != null) {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BluePopupMenu(
                  width: null,
                  icon: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.blue),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          (model.role?.name ?? "all roles").sentenceCase,
                          style: AppTextStyles.subText.copyWith(
                            color: AppColors.blue,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_rounded,
                          size: 18.sp,
                          color: AppColors.blue,
                        ),
                      ],
                    ),
                  ),
                  popupItems: model.roles
                      .map(
                        (e) => PopupModel(
                          title: e.name.sentenceCase,
                          onTap: () {
                            model.role = e;
                            model.staffPagingController.refresh();
                          },
                        ),
                      )
                      .toList()),
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
                      Icon(
                        Icons.add,
                        size: 15.sp,
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
            ],
          ),
          8.verticalGap,
          Expanded(
              child: NoItems.firstPage(
                  "No staff with the \"${model.role!.name}\" role")),
        ],
      );
    } else {
      return Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppAssets.images.icons.emptyStaff.svg(),
            SizedBox(
              width: 179.w,
              child: Text(
                "You have not added any staff yet",
                style: AppTextStyles.subHeader,
                textAlign: TextAlign.center,
              ),
            ),
            20.verticalGap,
            SizedBox(
              width: 300.w,
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
