import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/beneficiary/blue_beneficiary.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/modals/dialogs.dart';
import 'package:flutter/material.dart';

class BeneficiaryTile extends StatelessWidget {
  final BlueBeneficiary beneficiary;
  final VoidCallback? onDelete;
  const BeneficiaryTile({
    super.key,
    required this.beneficiary,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          bluePaymentImage(),
          10.horizontalGap,
          Expanded(
            child: textColumn(),
          ),
          if (onDelete != null) ...[10.horizontalGap, trailingWidget()]
        ],
      ),
    );
  }

  Widget trailingWidget() {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: () {
          BlueDialog.primary(
            title: "Delete beneficiary",
            subtitle:
                "Are you sure you want to remove ${beneficiary.name} as a beneficiary?",
            onDelete: onDelete!,
          );
        },
        splashColor: AppColors.error.withOpacity(.2),
        child: Container(
          height: 38,
          width: 38,
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(),
          child: AppAssets.images.icons.delete.svg(),
        ),
      ),
    );
  }

  Widget textColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          beneficiary.name,
          style: AppTextStyles.header.copyWith(fontSize: 15.5),
        ),
        4.verticalGap,
        Text(
          beneficiary.identifier,
          style:
              AppTextStyles.smallText.copyWith(color: AppColors.bodyTextColor),
        )
      ],
    );
  }

  Container bluePaymentImage() {
    return Container(
      height: 38,
      width: 38,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: AppColors.bgGrey,
        shape: BoxShape.circle,
      ),
      child: AppAssets.images.logos.blueBgLogo.image(),
    );
  }
}
