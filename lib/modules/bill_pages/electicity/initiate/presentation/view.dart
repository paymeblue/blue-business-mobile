import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/io/api/country_code.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/modules/bill_pages/airtime/initiate/presentation/view_model.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:blue_business/widgets/paging/loading_shimmer.dart';
import 'package:blue_business/widgets/textfield/blue_textfield.dart';
import 'package:blue_business/widgets/textfield/dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nigerian_states_and_lga/nigerian_states_and_lga.dart';

import 'view_model.dart';

class InitiateElectricityView extends StatefulWidget {
  const InitiateElectricityView({super.key});

  @override
  State<InitiateElectricityView> createState() =>
      _InitiateElectricityViewState();
}

class _InitiateElectricityViewState extends State<InitiateElectricityView> {
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
            padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 25),
            height: model.size.height,
            width: model.size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...titleAndSubtitle(),
                20.verticalGap,
                Expanded(
                  child: form(model),
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

  Widget form(InitiateElectricityViewModel model) {
    return ListView(
      children: [
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
                node: FocusNode(),
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
          20.verticalGap,
          BlueTextField.currency(
            hint: "${nairaSymbol()}0.00",
            title: "Amount",
            onChanged: model.onChanged,
            controller: model.amountController,
            node: FocusNode(),
          ),
        ]
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
        width: 350,
        child: Text(
          "Fill the details below to pay your electricity bill.",
          style: AppTextStyles.subHeader,
          textAlign: TextAlign.start,
        ),
      ),
    ];
  }
}
