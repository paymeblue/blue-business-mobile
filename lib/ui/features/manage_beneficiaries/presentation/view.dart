import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/beneficiary/electricity/electricity_beneficiary.dart';
import 'package:blue_business/core/models/beneficiary/payment/blue_beneficiary.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/ui/widgets/paging/error.dart';
import 'package:blue_business/ui/widgets/paging/loading_shimmer.dart';
import 'package:blue_business/ui/widgets/paging/no_items.dart';
import 'package:blue_business/ui/widgets/textfield/blue_textfield.dart';
import 'package:blue_business/ui/widgets/textfield/dropdown.dart';
import 'package:blue_business/ui/widgets/tiles/beneficiary_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import 'view_model.dart';

class ManageBeneficiariesView extends StatelessWidget {
  const ManageBeneficiariesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<ManageBeneficiariesViewModel>(
      model: ManageBeneficiariesViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(onBackTap: () {
            model.goBack(context);
          }),
          body: Container(
            height: model.size.height,
            width: model.size.width,
            padding:
                const EdgeInsets.only(left: 16, right: 16, bottom: 35, top: 20),
            child: Column(
              children: [
                BlueDropdown.show(
                  values: model.filters,
                  onChanged: model.onFilterChanged,
                  value: model.selectedType,
                ),
                if (model.selectedType != null) ...[
                  Expanded(child: list(model.selectedType, model))
                ]
              ],
            ),
          ),
        );
      },
    );
  }

  Widget list(String? selectedType, ManageBeneficiariesViewModel model) {
    switch (selectedType) {
      case "Blue to Blue pay":
        return beneficiaryList(model);
      case "Electricity":
        return electricityBeneficiaryList(model);
      default:
        return const SizedBox.shrink();
    }
  }

  Widget tagContainer(String tag) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xFFDEEDDE),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        tag,
        style: AppTextStyles.smallText.copyWith(
          height: 1,
          color: const Color(0xFF244224),
        ),
      ),
    );
  }

  Widget electricityBeneficiaryList(ManageBeneficiariesViewModel model) {
    return Column(
      children: [
        BlueTextField.search(
          onSearchChanged: model.onElectricitySearchChanged,
          hint: "Select beneficiary",
        ),
        6.verticalGap,
        Expanded(
          child: RefreshIndicator(
            onRefresh: () async {
              model.getElectricityBeneficiariesFromLocal();
            },
            child: ListView.separated(
              itemCount: model.electricityBeneficiaries.length,
              itemBuilder: (context, i) {
                ElectricityBeneficiary beneficiary =
                    model.electricityBeneficiaries[i];
                return Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: const BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (beneficiary.tag.orEmpty.isNotEmpty) ...[
                              tagContainer(beneficiary.tag!),
                              4.verticalGap
                            ],
                            Text(
                              "Meter number",
                              style: AppTextStyles.smallText.copyWith(
                                color: AppColors.bodyTextColor2,
                              ),
                            ),
                            4.verticalGap,
                            Text(
                              beneficiary.receiver,
                              style: AppTextStyles.subText.copyWith(
                                color: AppColors.bodyTextColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    10.horizontalGap,
                    GestureDetector(
                      onTap: () {
                        model.onDeletelectricityBeneficiary(beneficiary);
                      },
                      child: Container(
                        height: 38.h,
                        width: 38.w,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        padding: const EdgeInsets.all(10.5),
                        child: AppAssets.images.icons.delete.svg(),
                      ),
                    )
                  ],
                );
              },
              separatorBuilder: (context, index) => 24.verticalGap,
            ),
          ),
        )
      ],
    );
  }

  Widget beneficiaryList(ManageBeneficiariesViewModel model) {
    return Column(
      children: [
        BlueTextField.search(
            onSearchChanged: model.onSearchChanged,
            hint: "Search Beneficiaries"),
        12.verticalGap,
        Expanded(
          child: RefreshIndicator(
            onRefresh: () async {
              model.beneficiaryController.refresh();
            },
            child: PagedListView<int, BlueBeneficiary>.separated(
              shrinkWrap: true,
              pagingController: model.beneficiaryController,
              builderDelegate: PagedChildBuilderDelegate(
                noMoreItemsIndicatorBuilder: (ctx) =>
                    NoItems.newPage("No more"),
                noItemsFoundIndicatorBuilder: (ctx) => Center(
                  child: NoItems.firstPage(model.query.isNotEmpty
                      ? "You have no benficiaries matching \"${model.query}\"."
                      : "You do not have any beneficiaries yet."),
                ),
                firstPageProgressIndicatorBuilder: (context) =>
                    ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => BlueLoadingTile.withImage(),
                  itemCount: 4,
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
                  return BeneficiaryTile(
                    beneficiary: item,
                    onDelete: () {
                      model.deleteBeneficiary(item.id);
                    },
                  );
                },
              ),
              separatorBuilder: (context, i) {
                return 30.verticalGap;
              },
            ),
          ),
        ),
      ],
    );
  }
}
