import 'package:auto_route/auto_route.dart';
import 'package:blue_business/core/config/country_code.dart';
import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/beneficiary/electricity/electricity_beneficiary.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/enums.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/ui/widgets/buttons/app_buttons.dart';
import 'package:blue_business/ui/widgets/paging/loading_shimmer.dart';
import 'package:blue_business/ui/widgets/textfield/blue_textfield.dart';
import 'package:blue_business/ui/widgets/textfield/dropdown.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nigerian_states_and_lga/nigerian_states_and_lga.dart';

import 'view_model.dart';

@RoutePage()
class InitiateElectricityView extends StatelessWidget {
  const InitiateElectricityView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<InitiateElectricityViewModel>(
      model: InitiateElectricityViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () => model.goBack(context),
            icon: Icons.arrow_back_ios_new,
          ),
          body: Container(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...titleAndSubtitle(),
                20.verticalGap,
                Expanded(
                  child: form(model, context),
                ),
                AppButton.primary(
                  title: "Continue",
                  isEnabled: model.isActive(),
                  onTap: () {
                    model.goToNext(context);
                  },
                ),
                10.verticalGap,
              ],
            ),
          ),
        );
      },
    );
  }

  Widget textFieldHeader(String header) {
    return Text(
      header,
      style: AppTextStyles.subHeader.copyWith(color: AppColors.textColor),
    );
  }

  List<Widget> beneficiaries(
      InitiateElectricityViewModel model, BuildContext context) {
    return [
      textFieldHeader("Select beneficiary"),
      5.verticalGap,
      SizedBox(
        width: context.mediaQuery.size.width,
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            SizedBox(
              height: 120.h,
              child: ListView.separated(
                itemCount: model.beneficiaries.length < 2
                    ? model.beneficiaries.length
                    : 2,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  ElectricityBeneficiary beneficiary =
                      model.beneficiaries[index];
                  return GestureDetector(
                    onTap: () {
                      model.onBeneficiarySelected(beneficiary);
                    },
                    child: Container(
                      width: 129.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.midGrey, width: .5),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 12),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 36.h,
                            width: 36.h,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.primary,
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              beneficiary.tag.orEmpty.isEmpty
                                  ? "Meter number".initials
                                  : beneficiary.tag!.initials,
                              style: AppTextStyles.subText.copyWith(
                                fontSize: 14.sp,
                                color: AppColors.white,
                              ),
                            ),
                          ),
                          8.verticalGap,
                          Text(
                            beneficiary.tag.orEmpty.isEmpty
                                ? "Meter number"
                                : beneficiary.tag!,
                            style: AppTextStyles.smallText.copyWith(
                              color: AppColors.bodyTextColor2,
                            ),
                          ),
                          Text(
                            beneficiary.receiver,
                            style: AppTextStyles.subText.copyWith(
                              color: AppColors.bodyTextColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => 12.horizontalGap,
              ),
            ),
            6.horizontalGap,
            GestureDetector(
              onTap: model.viewAll,
              child: DecoratedBox(
                decoration: const BoxDecoration(),
                child: Text(
                  "View all",
                  style: AppTextStyles.subText.copyWith(
                    color: AppColors.primary,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      12.verticalGap,
    ];
  }

  Widget form(InitiateElectricityViewModel model, BuildContext context) {
    return ListView(
      children: [
        if (model.beneficiaries.isNotEmpty) ...beneficiaries(model, context),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: model.size.width / 2.35,
              child: statesDropdown(model),
            ),
            SizedBox(
              width: model.size.width / 2.35,
              child: model.providersState == FetchState.loading
                  ? BlueLoadingTile.withoutImage(title: "DISCOs")
                  : Row(
                      children: [
                        Expanded(
                          child: BlueDropdown.billProviders(
                            banks: model.providers,
                            onChanged: model.onBillProviderChanged,
                            value: model.selectedProvider,
                            searchController: model.searchController,
                            title: "DISCO",
                          ),
                        ),
                        if (model.providersState == FetchState.error) ...[
                          10.horizontalGap,
                          GestureDetector(
                            onTap: () {
                              model.getProviders();
                            },
                            child: Container(
                              padding: const EdgeInsets.all(12),
                              decoration: const BoxDecoration(
                                  color: AppColors.inputField),
                              child: const Icon(
                                Icons.refresh_rounded,
                              ),
                            ),
                          ),
                        ]
                      ],
                    ),
            )
          ],
        ),
        BlueDropdown.meterType(
          onChanged: model.onMeterTypeChanged,
          value: model.selectedMeterType,
        ),
        20.verticalGap,
        Row(
          children: [
            Expanded(
              child: BlueTextField.plaintext(
                hint: "Meter Number",
                title: "Meter Number",
                keyboardType: TextInputType.number,
                controller: model.meterNumberController,
                onChanged: model.onChanged,
              ),
            ),
            6.horizontalGap,
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                height: 35,
                width: 110,
                child: AppButton.ghost(
                  title: "Verify",
                  isEnabled: model.shouldVerify(),
                  onTap: () {
                    model.verifyMeter();
                  },
                ),
              ),
            )
          ],
        ),
        8.verticalGap,
        if (model.verifying)
          BlueLoadingTile.withoutImage()
        else if (model.data != null)
          Container(
            width: model.size.width,
            decoration: BoxDecoration(
              color: AppColors.inputField,
              borderRadius: BorderRadius.circular(6),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  model.data!.customerName,
                  style: AppTextStyles.subHeader.copyWith(
                    color: AppColors.primary,
                  ),
                ),
                2.verticalGap,
                Text(
                  model.data!.customerInfo,
                  style: AppTextStyles.smallText.copyWith(
                    color: AppColors.bodyTextColor,
                  ),
                ),
                Text(
                  "The minimum amount payable is ${nairaSymbol()}${(double.parse(model.data!.minimumAmount)).toStringAsFixed(2)}",
                  style: AppTextStyles.smallText.copyWith(
                    color: AppColors.bodyTextColor,
                  ),
                ),
              ],
            ),
          ),
        if (model.data != null) ...[
          10.verticalGap,
          BlueTextField.currency(
              hint: "${nairaSymbol()}0.00",
              title: "Amount",
              onChanged: model.onChanged,
              controller: model.amountController),
          if (model.selectedBeneficiary == null ||
              model.meterNumberController.text !=
                  model.selectedBeneficiary!.receiver) ...[
            12.verticalGap,
            saveBeneficiaryRow(model)
          ],
          if (model.saveBeneficiary) ...[
            15.verticalGap,
            BlueTextField.plaintext(
              hint: "Home",
              title: "Add a Tag",
              isOptional: true,
              controller: model.tagController,
            ),
          ],
        ]
      ],
    );
  }

  Widget saveBeneficiaryRow(InitiateElectricityViewModel model) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Save as beneficiary",
          style: AppTextStyles.subHeader,
        ),
        Transform.scale(
          scale: .6,
          child: CupertinoSwitch(
            value: model.saveBeneficiary,
            activeTrackColor: AppColors.primary,
            inactiveTrackColor: AppColors.grey,
            onChanged: (v) {
              model.saveBeneficiary = v;
            },
          ),
        )
      ],
    );
  }

  Widget statesDropdown(InitiateElectricityViewModel model) {
    return BlueDropdown.show(
      values: NigerianStatesAndLGA.allStates,
      onChanged: model.onStateChanged,
      searchController: model.searchController,
      value: model.state,
      title: "State",
    );
  }

  List<Widget> titleAndSubtitle() {
    return [
      Text(
        "Pay Electricity Bill",
        style: AppTextStyles.header.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 20.sp,
        ),
      ),
      SizedBox(
        width: 350.w,
        child: Text(
          "Fill the details below to pay your electricity bill.",
          style: AppTextStyles.subHeader,
          textAlign: TextAlign.start,
        ),
      ),
    ];
  }
}
