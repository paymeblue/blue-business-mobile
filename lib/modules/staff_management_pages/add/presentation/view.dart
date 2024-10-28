import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/staff/get/item/staff.dart';
import 'package:blue_business/core/models/staff_roles/get/item/staff_role.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/modules/bill_pages/airtime/initiate/presentation/view_model.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/widgets/avatar/avatar.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:blue_business/widgets/paging/loading_shimmer.dart';
import 'package:blue_business/widgets/password_validation/password_validation.dart';
import 'package:blue_business/widgets/textfield/blue_textfield.dart';
import 'package:blue_business/widgets/textfield/dropdown.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'view_model.dart';

class AddStaffView extends StatefulWidget {
  final Staff? staff;
  const AddStaffView({super.key, this.staff});

  @override
  State<AddStaffView> createState() => _AddStaffViewState();
}

class _AddStaffViewState extends State<AddStaffView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<AddStaffViewModel>(
      model: AddStaffViewModel(),
      onModelReady: (model) => model.init(context, widget.staff),
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
                ...titleAndSubtitle(),
                25.verticalGap,
                Expanded(
                  child: form(model),
                ),
                AppButton.primary(
                  title: widget.staff == null ? "Grant access" : "Edit info",
                  isEnabled: model.isActive(widget.staff),
                  onTap: () {
                    if (widget.staff == null) {
                      model.confirmAccess(context);
                    } else {
                      model.editStaff(context, widget.staff!);
                    }
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget branchTile(AddStaffViewModel model) {
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
            widget.staff!.name.nameCase,
            style: AppTextStyles.smallHeader,
          ),
          Text(
            widget.staff!.role.sentenceCase,
            style: AppTextStyles.smallText
                .copyWith(color: AppColors.bodyTextColor2),
          )
        ],
      ),
    );
  }

  Widget avatarRow(AddStaffViewModel model) {
    return Row(
      children: [
        GestureDetector(
          onTap: model.pickImage,
          child: BlueAvatar(
            radius: 31,
            imageUrl: model.path ?? widget.staff?.displayPicture,
          ),
        ),
        10.horizontalGap,
        Text(
          "Profile picture",
          style: AppTextStyles.subHeader,
        )
      ],
    );
  }

  Widget form(AddStaffViewModel model) {
    return ListView(
      children: [
        if (widget.staff != null) ...[
          branchTile(model),
          12.verticalGap,
        ],
        avatarRow(model),
        15.verticalGap,
        BlueTextField.plaintext(
          hint: "Sharon Tate",
          title: "Staff name",
          onChanged: model.onChanged,
          controller: model.nameController,
          node: FocusNode(),
        ),
        12.verticalGap,
        model.roleState == FetchState.loading
            ? BlueLoadingTile.withoutImage(title: "Set role")
            : BlueDropdown.show(
                values: model.roles.map((e) => e.name.sentenceCase).toList(),
                onChanged: (val) {
                  for (StaffRole r in model.roles) {
                    if (r.name.toLowerCase() == val?.toLowerCase()) {
                      model.role = r.copyWith(name: r.name.sentenceCase);
                    }
                  }
                },
                title: "Set role",
                value: model.role?.name,
              ),
        12.verticalGap,
        model.branchSetState == FetchState.loading
            ? BlueLoadingTile.withoutImage(title: "Set branch")
            : BlueDropdown.branch(
                controller: model.branchPagingController,
                onChanged: (val) {
                  model.branch = val;
                },
                searchController: model.searchController,
                title: "Set branch",
                value: model.branch,
              ),
        6.verticalGap,
        info(model),
        12.verticalGap,
        BlueTextField.phone(
          title: "Phone number",
          selectedItem: model.selectedCountry,
          onCountryChanged: model.onCountryChanged,
          onChanged: model.onChanged,
          controller: model.phoneController,
          searchController: model.searchController,
        ),
        12.verticalGap,
        BlueTextField.password(
          controller: model.passwordController,
          onChanged: model.onChanged,
          title: "Set password",
          node: FocusNode(),
        ),
        10.verticalGap,
        ...List.generate(
          model.conditions().length,
          (i) => PasswordCheckOption(
              isComplete: model.conditions()[i]["isComplete"],
              condition: model.conditions()[i]["condition"]),
        )
      ],
    );
  }

  Widget info(AddStaffViewModel model) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12.56, horizontal: 18),
      decoration: const BoxDecoration(
        color: AppColors.info,
      ),
      child: Row(
        children: [
          AppAssets.images.icons.infoSquare.svg(),
          const SizedBox(
            width: 11,
          ),
          Expanded(
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text:
                      "Select from pre-added branches. If none are displayed, ",
                  style: AppTextStyles.subHeader.copyWith(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 13.sp),
                ),
                TextSpan(
                  text: "add branches",
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      await model.goToAddBranch(context);
                    },
                  style: AppTextStyles.subHeader.copyWith(
                      color: AppColors.blue,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                      fontSize: 13.sp),
                ),
                TextSpan(
                  text: " to your account.",
                  style: AppTextStyles.subHeader.copyWith(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 13.sp),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> titleAndSubtitle() {
    return [
      Text(
        "Enter staff details",
        style: AppTextStyles.header,
      ),
      8.verticalGap,
      SizedBox(
        width: 350,
        child: Text(
          "Enter the name and phone number of the staff you want to grant access to.",
          style: AppTextStyles.subHeader,
          textAlign: TextAlign.start,
        ),
      )
    ];
  }
}
