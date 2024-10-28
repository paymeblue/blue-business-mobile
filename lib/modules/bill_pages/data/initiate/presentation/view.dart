import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
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

import 'view_model.dart';

class InitiateDataView extends StatefulWidget {
  const InitiateDataView({super.key});

  @override
  State<InitiateDataView> createState() => _InitiateDataViewState();
}

class _InitiateDataViewState extends State<InitiateDataView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<InitiateDataViewModel>(
      model: InitiateDataViewModel(),
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
                  child: ListView(
                    children: [
                      if (model.providersState == FetchState.loading)
                        BlueLoadingTile.withoutImage(title: "Data providers")
                      else
                        Row(
                          children: [
                            Expanded(
                              child: BlueDropdown.billProviders(
                                banks: model.providers,
                                onChanged: model.onBillProviderChanged,
                                value: model.selectedProvider,
                                searchController: model.searchController,
                                title: "data provider",
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
                      20.verticalGap,
                      if (model.packagesState == FetchState.loading)
                        BlueLoadingTile.withoutImage(title: "Data bundles")
                      else
                        Row(
                          children: [
                            Expanded(
                              child: BlueDropdown.billPackages(
                                banks: model.packages,
                                onChanged: model.onBillPackageChanged,
                                value: model.selectedPackage,
                                searchController: model.searchController,
                                title: "data bundles",
                              ),
                            ),
                            if (model.packagesState == FetchState.error) ...[
                              10.horizontalGap,
                              GestureDetector(
                                onTap: () {
                                  model.getPackages();
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
                      20.verticalGap,
                      BlueTextField.plaintext(
                        title: "Phone number/Device ID",
                        hint: "Phone number/Device ID",
                        onChanged: model.onChanged,
                        controller: model.phoneController,
                        keyboardType: TextInputType.number,
                        node: FocusNode(),
                      ),
                    ],
                  ),
                ),
                AppButton.primary(
                  title: "Continue",
                  isEnabled: model.isActive(),
                  onTap: () {
                    model.verfyPackage(context);
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

  List<Widget> titleAndSubtitle() {
    return [
      Text(
        "Purchase Data Plan",
        style: AppTextStyles.header.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 20.sp,
        ),
      ),
      SizedBox(
        width: 350,
        child: Text(
          "Fill the details below to purchase a data plan",
          style: AppTextStyles.subHeader,
          textAlign: TextAlign.start,
        ),
      ),
    ];
  }
}
