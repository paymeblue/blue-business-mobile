import 'package:blue_business/core/config/country_code.dart';
import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/navigation/router_config/router.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/pump_price/widgets/buttons/app_buttons.dart';
import 'package:blue_business/ui/features/pump_price/widgets/modals/delete_modals.dart';
import 'package:blue_business/ui/features/pump_price/widgets/modals/toast.dart';
import 'package:blue_business/ui/features/pump_price/widgets/textfield/textfield.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                  titleRow(context),
                  14.verticalGap,
                  PumpPriceTextField.plaintext(
                    hint: 'Search for branch',
                    leading: Padding(
                      padding: EdgeInsets.only(left: 15.w),
                      child: AppAssets.images.pumpPrice.svg.search.svg(),
                    ),
                    backgroundColor: AppColors.white,
                  ),
                  26.verticalGap,
                  Expanded(
                      child: ListView.separated(
                    itemBuilder: (ctx, i) {
                      return PumpPriceBranchContainer();
                    },
                    separatorBuilder: (ctx, i) => 20.verticalGap,
                    itemCount: 2,
                  ))
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget titleRow(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: Text(
            'Branches',
            style: context.textTheme.titleMedium,
          ),
        ),
        8.horizontalGap,
        GestureDetector(
          onTap: () {},
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
      ],
    );
  }
}

class PumpPriceBranchContainer extends StatelessWidget {
  const PumpPriceBranchContainer({
    super.key,
  });

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
                      PumpPriceToast.success(message: 'Branch deleted');
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
              Column(
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
                  Text(
                    '${nairaSymbol()} 300,000',
                    style: context.textTheme.displayLarge,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              )
            ],
          ),
          18.verticalGap,
          buttonRow(context)
        ],
      ),
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
            'NNPC Limited Mega Gas Station',
            style: context.textTheme.bodyLarge,
          ),
          Text(
            'B27 Nal Blvd, Central Business Dis, Abuja 900103, Federal Capital Territory',
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
            onTap: () {},
          ),
        ),
        SizedBox(
          width: context.getWidth(.37),
          height: 38.h,
          child: PumpPriceButton.ghostPrimary(
            title: 'Edit details',
            onTap: () {},
          ),
        )
      ],
    );
  }
}
