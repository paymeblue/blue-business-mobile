import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/beneficiary/blue_beneficiary.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/widgets/tiles/beneficiary_tile.dart';
import 'package:blue_business/widgets/paging/error.dart';
import 'package:blue_business/widgets/paging/loading_shimmer.dart';
import 'package:blue_business/widgets/paging/no_items.dart';
import 'package:blue_business/widgets/steppers/filter_tab.dart';
import 'package:blue_business/widgets/textfield/blue_textfield.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import 'view_model.dart';

class ManageBeneficiariesView extends StatefulWidget {
  const ManageBeneficiariesView({super.key});

  @override
  State<ManageBeneficiariesView> createState() =>
      _ManageBeneficiariesViewState();
}

class _ManageBeneficiariesViewState extends State<ManageBeneficiariesView> {
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
                FilterTab(
                  selectedValue: model.selectedType,
                  tabs: model.filters,
                  onChanged: model.onFilterChanged,
                ),
                11.verticalGap,
                BlueTextField.search(
                    onSearchChanged: model.onSearchChanged,
                    hint: "Search Beneficiaries"),
                12.verticalGap,
                Expanded(
                  child: model.selectedType.toLowerCase() == "bills"
                      ? billsPage(model)
                      : beneficiaryList(model),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget billsPage(ManageBeneficiariesViewModel model) {
    return SizedBox(
      height: model.size.height,
      width: model.size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          comingSoonImage(),
          24.verticalGap,
          comingSoonText(),
          3.verticalGap,
          comingSoonSubtext(),
        ],
      ),
    );
  }

  Widget comingSoonSubtext() {
    return SizedBox(
      width: 265,
      child: Text(
        "Easily pay for your airtime, internet, and electricity bills with Blue.",
        style: AppTextStyles.subHeader,
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget comingSoonText() {
    return Text(
      "Coming soon",
      style: AppTextStyles.header,
    );
  }

  Widget comingSoonImage() {
    return Container(
      height: 170,
      width: 170,
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 44),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.bgGrey,
      ),
      child: AppAssets.images.icons.comingSoon.svg(),
    );
  }

  Widget beneficiaryList(ManageBeneficiariesViewModel model) {
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
                model.deleteBeneficiary(int.parse(item.id));
              },
            );
          },
        ),
        separatorBuilder: (context, i) {
          return 30.verticalGap;
        },
      ),
    );
  }
}
