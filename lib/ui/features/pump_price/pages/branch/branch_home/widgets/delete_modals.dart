import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/pump_price/widgets/buttons/app_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeleteBranchBottomSheet extends StatelessWidget {
  const DeleteBranchBottomSheet({
    super.key,
    required this.onDelete,
  });

  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240.h,
      width: context.getWidth(),
      margin: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 35.w),
      padding:
          EdgeInsets.only(top: 20.h, bottom: 12.h, left: 16.w, right: 16.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: AppColors.white,
      ),
      child: Column(
        children: [
          Container(
            height: 46.dm,
            width: 46.dm,
            decoration: BoxDecoration(
              color: AppColors.pumpPricelightRed,
              shape: BoxShape.circle,
            ),
            padding: EdgeInsets.all(8.dm),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.pumpPricered,
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: AppAssets.images.pumpPrice.svg.deleteWhite
                  .svg(height: 14.dm, width: 14.dm),
            ),
          ),
          24.verticalGap,
          Text(
            'Delete Branch?',
            style: context.textTheme.titleMedium,
          ),
          8.verticalGap,
          Text(
            'Are you sure you want to delete the branch “NNPC Limited Mega Gas Station” ? This action cannot be undone.',
            style: context.textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          16.verticalGap,
          PumpPriceButton.primary(
            title: 'Delete',
            onTap: onDelete,
            color: AppColors.pumpPricered,
          ),
        ],
      ),
    );
  }
}
