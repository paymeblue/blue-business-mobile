import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/navigation/router_config/router.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/pump_price/pages/attendants/add_attendant/presentation/view.dart';
import 'package:blue_business/ui/features/pump_price/pages/attendants/attendant_home/widgets/delete_attendant.dart';
import 'package:blue_business/ui/features/pump_price/widgets/avatar/avatar.dart';
import 'package:blue_business/ui/features/pump_price/widgets/buttons/app_buttons.dart';
import 'package:blue_business/ui/features/pump_price/widgets/modals/toast.dart';
import 'package:blue_business/ui/features/pump_price/widgets/textfield/textfield.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'view_model.dart';

@RoutePage()
class PumpPriceAttendantView extends StatelessWidget {
  const PumpPriceAttendantView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<PumpPriceAttendantViewModel>(
      model: PumpPriceAttendantViewModel(),
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
                    hint: 'Search for attendant',
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
                      return PumpPriceAttendantContainer();
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
            'Attendants',
            style: context.textTheme.titleMedium,
          ),
        ),
        8.horizontalGap,
        GestureDetector(
          onTap: () {
            locator<AppRouter>()
                .push<bool>(AddPumpPriceAttendantRoute(
                    args: AddPumpPriceAttendantViewArgs()))
                .then((v) {
              if (v == true) {
                PumpPriceToast.success(message: 'Attendant added!');
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
                  'Add new attendant',
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

class PumpPriceAttendantContainer extends StatelessWidget {
  const PumpPriceAttendantContainer({
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [nameAndBranch(context), 16.verticalGap, buttonRow(context)],
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
        return DeleteAttendantBottomSheet(
          onDelete: () {
            result = true;
            context.maybePop();
          },
        );
      },
    );

    return result;
  }

  Widget nameAndBranch(BuildContext context) {
    return Row(
      children: [
        PumpPriceAvatar(radius: 21.r),
        10.horizontalGap,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Yakubu Danladi',
                style: context.textTheme.bodyLarge,
              ),
              Text(
                'NNPC Limited Mega Gas Station',
                style: context.textTheme.bodyMedium!.copyWith(
                  fontSize: 12.sp,
                  height: 100.percentToLineHeight(12),
                  letterSpacing: 0.percentToLetterSpacing(12),
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ],
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
            title: 'Edit details',
            onTap: () {
              locator<AppRouter>()
                  .push<bool>(AddPumpPriceAttendantRoute(
                      args: AddPumpPriceAttendantViewArgs()))
                  .then((v) {
                if (v == true) {
                  PumpPriceToast.success(message: 'Changes saved!');
                }
              });
            },
          ),
        ),
        SizedBox(
          width: context.getWidth(.37),
          height: 38.h,
          child: PumpPriceButton.ghostPrimary(
            title: 'Delete',
            onTap: () async {
              final delete = await showDelete(context);
              if (delete) {
                PumpPriceToast.success(message: 'Attendant deleted');
              }
            },
          ),
        )
      ],
    );
  }
}
