import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/branches/branch.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/ui/widgets/avatar/avatar.dart';
import 'package:blue_business/ui/widgets/buttons/app_buttons.dart';
import 'package:blue_business/ui/widgets/textfield/blue_textfield.dart';
import 'package:blue_business/ui/widgets/textfield/dropdown.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:shimmer/shimmer.dart';

import 'view_model.dart';

class EnterBranchDetailsView extends StatelessWidget {
  final Branch? branch;
  const EnterBranchDetailsView({super.key, this.branch});

  @override
  Widget build(BuildContext context) {
    return BaseView<EnterBranchDetailsViewModel>(
      model: EnterBranchDetailsViewModel(),
      onModelReady: (model) => model.init(context, branch),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () => model.goBack(context),
          ),
          body: Container(
            height: MediaQuery.sizeOf(context).height,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: form(model, context),
                ),
                if (branch != null)
                  AppButton.primary(
                    title: "Edit branch",
                    isEnabled: model.isActiveWithBranch(branch!),
                    onTap: () {
                      model.editBranch(context, branch!);
                    },
                  )
                else
                  AppButton.primaryWithIcon(
                    title: "Add new branch",
                    icon: const Icon(
                      Icons.add,
                    ),
                    isEnabled: model.isActive(),
                    onTap: () {
                      model.createBranch(context);
                    },
                  )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget qrImageContainer(
      EnterBranchDetailsViewModel model, BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 165.dm,
          width: 165.dm,
          decoration: const BoxDecoration(
            color: AppColors.bgGrey,
            shape: BoxShape.circle,
          ),
          padding: EdgeInsets.only(bottom: 25.h),
          alignment: Alignment.bottomCenter,
          child: GestureDetector(
            onTap: () {
              model.showQRDialog(context, branch!, false);
            },
            child: Container(
              height: 108.dm,
              width: 108.dm,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(17),
              ),
              padding: EdgeInsets.all(8.dm),
              child: locator<AppStateValues>().wallet == null
                  ? qrLoadingShimmer()
                  : qrImage(),
            ),
          ),
        ),
        Positioned(
          top: 10.h,
          left: 64.w,
          height: 35.dm,
          width: 35.dm,
          child: Container(
            height: 35.dm,
            width: 35.dm,
            padding: const EdgeInsets.all(2),
            decoration: const BoxDecoration(
              color: AppColors.white,
              shape: BoxShape.circle,
            ),
            child: SizedBox(
              height: 45.h,
              width: 45.w,
              child: BlueAvatar(
                radius: 30,
                imageUrl: locator<AppStateValues>().currentUser!.displayPicture,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Shimmer qrImage() {
    return Shimmer.fromColors(
      loop: 2,
      direction: ShimmerDirection.ltr,
      period: const Duration(milliseconds: 500),
      baseColor: AppColors.blue,
      highlightColor: AppColors.paleBlue,
      child: QrImageView(
          data:
              '${locator<AppStateValues>().wallet!.walletCode}__${branch!.id}',
          dataModuleStyle: const QrDataModuleStyle(
            color: AppColors.primary,
          ),
          eyeStyle: const QrEyeStyle(
            color: AppColors.primary,
            eyeShape: QrEyeShape.square,
          ),
          size: 120),
    );
  }

  Shimmer qrLoadingShimmer() {
    return Shimmer.fromColors(
      baseColor: AppColors.brightBlue.withOpacityValue(.35),
      highlightColor: AppColors.white,
      child: Container(
        height: 140,
        width: 140,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(7),
        ),
      ),
    );
  }

  Widget form(EnterBranchDetailsViewModel model, BuildContext context) {
    return ListView(children: [
      ...titleAndSubtitle(),
      25.verticalGap,
      if (branch != null) ...[
        qrImageContainer(model, context),
        14.verticalGap,
        branchTile(model),
        12.verticalGap
      ],
      BlueTextField.plaintext(
        hint: "Apapa branch",
        title: "Branch name",
        onChanged: model.onChanged,
        controller: model.nameController,
      ),
      12.verticalGap,
      BlueDropdown.show(
        title: "Staff size",
        values: model.sizes,
        value: model.staffSize,
        onChanged: (val) {
          model.staffSize = val;
        },
      ),
      12.verticalGap,
      BlueTextField.plaintext(
        hint: "Apapa, Lagos",
        title: "Location",
        onChanged: model.onChanged,
        controller: model.locationController,
      )
    ]);
  }

  Widget branchTile(EnterBranchDetailsViewModel model) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      width: model.size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: AppColors.inputField,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            branch!.name.nameCase,
            style: AppTextStyles.smallHeader,
          ),
          Text(
            branch!.location.sentenceCase,
            style: AppTextStyles.smallText
                .copyWith(color: AppColors.bodyTextColor2),
          )
        ],
      ),
    );
  }

  List<Widget> titleAndSubtitle() {
    return [
      Text(
        branch != null ? "Edit branch details" : "Enter branch details",
        style: AppTextStyles.header,
      ),
      8.verticalGap,
      SizedBox(
        width: 350,
        child: Text(
          branch != null
              ? "Update the following details to edit the following  branch."
              : "Please enter the following details below to add a branch of your business. ",
          style: AppTextStyles.subHeader,
          textAlign: TextAlign.start,
        ),
      )
    ];
  }
}
