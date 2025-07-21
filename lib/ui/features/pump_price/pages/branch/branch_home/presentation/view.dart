import 'dart:async';

import 'package:blue_business/core/config/country_code.dart';
import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/pump_price/branch/pump_price_branch.dart';
import 'package:blue_business/core/navigation/router_config/router.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/pump_price/pages/branch/add_branch/presentation/view.dart';
import 'package:blue_business/ui/features/pump_price/widgets/buttons/app_buttons.dart';
import 'package:blue_business/ui/features/pump_price/pages/branch/branch_home/widgets/delete_modals.dart';
import 'package:blue_business/ui/features/pump_price/widgets/modals/toast.dart';
import 'package:blue_business/ui/features/pump_price/widgets/textfield/textfield.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import 'view_model.dart';

@RoutePage()
class PumpPriceBranchView extends StatelessWidget {
  const PumpPriceBranchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<PumpPriceBranchViewModel>(
      model: PumpPriceBranchViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: AppColors.pumpPricegreyBg2,
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  titleRow(context, model),
                  if (model.canSearch) ...[
                    14.verticalGap,
                    PumpPriceTextField.plaintext(
                      hint: 'Search for branch',
                      leading: Padding(
                        padding: EdgeInsets.only(left: 15.w),
                        child: AppAssets.images.pumpPrice.svg.search.svg(),
                      ),
                      controller: model.search,
                      backgroundColor: AppColors.white,
                      onChanged: model.onSearchChanged,
                    )
                  ],
                  26.verticalGap,
                  Expanded(
                    child: model.pageState == FetchState.loading
                        ? Center(
                            child: CircularProgressIndicator(
                              color: AppColors.pumpPricebodyText,
                              strokeWidth: 1.2,
                            ),
                          )
                        : RefreshIndicator(
                            onRefresh: () async {
                              model.stationController.refresh();
                            },
                            child: PagedListView<int, FillingStation>.separated(
                              pagingController: model.stationController,
                              builderDelegate: PagedChildBuilderDelegate(
                                firstPageProgressIndicatorBuilder: (context) =>
                                    Center(
                                  child: CircularProgressIndicator(
                                    strokeWidth: 1.2,
                                    color: AppColors.pumpPricebodyText,
                                  ),
                                ),
                                noItemsFoundIndicatorBuilder: (context) =>
                                    emptyState(context, model),
                                itemBuilder: (context, item, index) {
                                  return PumpPriceBranchContainer(
                                    station: item,
                                    onDelete: (value) {
                                      model.deleteBranch(value);
                                    },
                                    onEdit: (value) {
                                      locator<AppRouter>()
                                          .push<bool>(
                                        AddPumpPriceBranchRoute(
                                            args: AddPumpPriceBranchViewArgs(
                                          station: value,
                                        )),
                                      )
                                          .then((v) {
                                        if (v == true) {
                                          PumpPriceToast.success(
                                              message: 'Changes saved!');

                                          model.stationController.refresh();
                                        }
                                      });
                                    },
                                  );
                                },
                              ),
                              separatorBuilder: (ctx, i) => 20.verticalGap,
                            ),
                          ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget emptyState(BuildContext context, PumpPriceBranchViewModel model) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppAssets.images.pumpPrice.svg.branchEmpty.svg(),
        10.verticalGap,
        Text(
          'No branches yet',
          style: context.textTheme.titleSmall,
        ),
        2.verticalGap,
        SizedBox(
          width: context.getWidth(.65),
          child: Text(
            'Once you start adding fuel station branches, they’ll show up here for you to manage.',
            style: context.textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ),
        24.verticalGap,
        SizedBox(
          width: context.getWidth(.75),
          child: PumpPriceButton.primary(
            title: 'Add new branch',
            onTap: () {
              locator<AppRouter>()
                  .push<bool>(
                AddPumpPriceBranchRoute(args: AddPumpPriceBranchViewArgs()),
              )
                  .then((v) {
                if (v == true) {
                  PumpPriceToast.success(message: 'Branch added!');
                  model.stationController.refresh();
                }
              });
            },
          ),
        )
      ],
    );
  }

  Widget titleRow(BuildContext context, PumpPriceBranchViewModel model) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: Text(
            'Branches',
            style: context.textTheme.titleMedium,
          ),
        ),
        if (model.canSearch) ...[
          8.horizontalGap,
          GestureDetector(
            onTap: () {
              locator<AppRouter>()
                  .push<bool>(
                AddPumpPriceBranchRoute(args: AddPumpPriceBranchViewArgs()),
              )
                  .then((v) {
                if (v == true) {
                  PumpPriceToast.success(message: 'Branch added!');
                  model.stationController.refresh();
                }
              });
            },
            child: DecoratedBox(
              decoration: BoxDecoration(),
              child: Row(
                children: [
                  Container(
                    height: 15.dm,
                    width: 15.dm,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: AppColors.pumpPriceprimary, width: .8.dm),
                    ),
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.add_rounded,
                      size: 12.sp,
                      color: AppColors.pumpPriceprimary,
                    ),
                  ),
                  4.horizontalGap,
                  Text(
                    'Add new branch',
                    style: context.textTheme.bodyMedium!.copyWith(
                      color: AppColors.pumpPriceprimary,
                    ),
                  )
                ],
              ),
            ),
          )
        ]
      ],
    );
  }
}

class PumpPriceBranchContainer extends StatelessWidget {
  const PumpPriceBranchContainer({
    super.key,
    required this.station,
    required this.onDelete,
    required this.onEdit,
  });

  final FillingStation station;
  final ValueChanged<FillingStation> onDelete;
  final ValueChanged<FillingStation> onEdit;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.getWidth(),
      padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 18.h),
      decoration: BoxDecoration(
          color: AppColors.pumpPricewhite,
          borderRadius: BorderRadius.circular(9.r),
          border: Border.all(color: AppColors.pumpPricestroke)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              nameAndAddress(context),
              GestureDetector(
                  onTap: () async {
                    final delete = await showDelete(context);
                    if (delete) {
                      onDelete(station);
                    }
                  },
                  child: DecoratedBox(
                      decoration: BoxDecoration(),
                      child: AppAssets.images.pumpPrice.svg.deleteRed.svg()))
            ],
          ),
          14.verticalGap,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              revenueColumn(context),
              perLitreColumn(context),
            ],
          ),
          16.verticalGap,
          buttonRow(context)
        ],
      ),
    );
  }

  Widget revenueColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Total Revenue',
          style: context.textTheme.bodyMedium!.copyWith(
            fontSize: 12.sp,
            height: 100.percentToLineHeight(12),
            letterSpacing: 0.percentToLetterSpacing(12),
          ),
          overflow: TextOverflow.ellipsis,
        ),
        2.verticalGap,
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '${nairaSymbol()} ',
              style: context.textTheme.displaySmall!.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              '300,000',
              style: context.textTheme.displaySmall!.copyWith(
                fontSize: 24.sp,
                height: 100.percentToLineHeight(24),
                letterSpacing: -2.percentToLetterSpacing(24),
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget perLitreColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '${nairaSymbol()} ',
              style: context.textTheme.displaySmall!.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              station.fuelPrice,
              style: context.textTheme.displaySmall!.copyWith(
                fontSize: 24.sp,
                height: 100.percentToLineHeight(24),
                letterSpacing: -2.percentToLetterSpacing(24),
              ),
            ),
          ],
        ),
        2.verticalGap,
        Text(
          'per litre',
          style: context.textTheme.bodyMedium!.copyWith(
            fontSize: 12.sp,
            height: 100.percentToLineHeight(12),
            letterSpacing: 0.percentToLetterSpacing(12),
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }

  Future<bool> showDelete(BuildContext context) async {
    FocusManager.instance.primaryFocus?.unfocus();

    var result = false;

    await showModalBottomSheet(
      context: context,
      barrierColor: AppColors.pumpPriceblack.withOpacityValue(.55),
      backgroundColor: Colors.transparent,
      builder: (ctx) {
        return DeleteBranchBottomSheet(
          onDelete: () {
            result = true;
            context.maybePop();
          },
        );
      },
    );

    return result;
  }

  Widget nameAndAddress(BuildContext context) {
    return SizedBox(
      width: context.getWidth(.65),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            station.name,
            style: context.textTheme.bodyLarge,
          ),
          Text(
            station.address,
            style: context.textTheme.bodyMedium!.copyWith(
              fontSize: 12.sp,
              height: 100.percentToLineHeight(12),
              letterSpacing: 0.percentToLetterSpacing(12),
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  Widget buttonRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: context.getWidth(.37),
          height: 38.h,
          child: PumpPriceButton.primary(
            title: 'View insights',
            onTap: () {
              locator<AppRouter>().push(PumpPriceBranchInsightsRoute(
                station: station,
              ));
            },
          ),
        ),
        SizedBox(
          width: context.getWidth(.37),
          height: 38.h,
          child: PumpPriceButton.ghostPrimary(
            title: 'Edit details',
            onTap: () {
              onEdit(station);
            },
          ),
        )
      ],
    );
  }
}
