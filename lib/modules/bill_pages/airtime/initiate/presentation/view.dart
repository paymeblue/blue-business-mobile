import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/io/api/country_code.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:blue_business/widgets/paging/loading_shimmer.dart';
import 'package:blue_business/widgets/textfield/blue_textfield.dart';
import 'package:blue_business/widgets/textfield/dropdown.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class InitiateAirtimeView extends StatefulWidget {
  const InitiateAirtimeView({super.key});

  @override
  State<InitiateAirtimeView> createState() => _InitiateAirtimeViewState();
}

class _InitiateAirtimeViewState extends State<InitiateAirtimeView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<InitiateAirtimeViewModel>(
      model: InitiateAirtimeViewModel(),
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
                        BlueLoadingTile.withoutImage(title: "Network")
                      else
                        Row(
                          children: [
                            Expanded(
                              child: BlueDropdown.billProviders(
                                banks: model.providers,
                                onChanged: model.onBillProviderChanged,
                                value: model.selectedProvider,
                                searchController: model.searchController,
                                title: "network",
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
                              )
                            ]
                          ],
                        ),
                      20.verticalGap,
                      BlueTextField.phone(
                        title: "Phone",
                        countries: countryCodes,
                        selectedItem: model.selectedCountry,
                        onCountryChanged: model.onCountryChanged,
                        onChanged: model.onChanged,
                        controller: model.phoneController,
                        searchController: model.searchController,
                      ),
                      20.verticalGap,
                      BlueTextField.currency(
                        hint: "${nairaSymbol()}0.00",
                        controller: model.amountController,
                        onChanged: model.onChanged,
                        title: "Amount",
                      ),
                    ],
                  ),
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

  List<Widget> titleAndSubtitle() {
    return [
      Text(
        "Purchase Airtime",
        style: AppTextStyles.header.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
      ),
      SizedBox(
        width: 350,
        child: Text(
          "Fill the details below to purchase airtime.",
          style: AppTextStyles.subHeader,
          textAlign: TextAlign.start,
        ),
      ),
    ];
  }
}
