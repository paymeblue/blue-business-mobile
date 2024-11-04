import 'package:blue_business/core/config/country_code.dart';
import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/enums.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/ui/widgets/buttons/app_buttons.dart';
import 'package:blue_business/ui/widgets/paging/loading_shimmer.dart';
import 'package:blue_business/ui/widgets/textfield/blue_textfield.dart';
import 'package:blue_business/ui/widgets/textfield/dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'view_model.dart';

class InitiateCableView extends StatefulWidget {
  const InitiateCableView({super.key});

  @override
  State<InitiateCableView> createState() => _InitiateCableViewState();
}

class _InitiateCableViewState extends State<InitiateCableView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<InitiateCableViewModel>(
      model: InitiateCableViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () => model.goBack(context),
            icon: Icons.arrow_back_ios_new,
          ),
          body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 25),
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
                  isEnabled: model.data != null,
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

  ListView form(InitiateCableViewModel model) {
    return ListView(
      children: [
        if (model.providersState == FetchState.loading)
          BlueLoadingTile.withoutImage(title: "Cable Providers")
        else
          Row(
            children: [
              Expanded(
                child: BlueDropdown.billProviders(
                  banks: model.providers,
                  onChanged: model.onBillProviderChanged,
                  value: model.selectedProvider,
                  searchController: model.searchController,
                  title: "cable provider",
                ),
              ),
              if (model.packagesState == FetchState.error) ...[
                10.horizontalGap,
                GestureDetector(
                  onTap: () {
                    model.getProviders();
                  },
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration:
                        const BoxDecoration(color: AppColors.inputField),
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
          BlueLoadingTile.withoutImage(title: "Cable bundles")
        else
          Row(
            children: [
              Expanded(
                child: BlueDropdown.billPackages(
                  banks: model.packages,
                  onChanged: model.onBillPackageChanged,
                  value: model.selectedPackage,
                  searchController: model.searchController,
                  title: "cable bundle",
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
                    decoration:
                        const BoxDecoration(color: AppColors.inputField),
                    child: const Icon(
                      Icons.refresh_rounded,
                    ),
                  ),
                ),
              ]
            ],
          ),
        20.verticalGap,
        Row(
          children: [
            Expanded(
              child: BlueTextField.plaintext(
                hint: "Smartcard/IUC number",
                title: "Smartcard/IUC number",
                controller: model.cardNumberController,
                onChanged: model.onChanged,
              ),
            ),
            6.horizontalGap,
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                height: 35.h,
                width: 110.w,
                child: AppButton.ghost(
                  title: "Verify",
                  isEnabled: model.shouldVerify(),
                  onTap: () {
                    model.verifyPackage();
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
                  "The amount to be paid is ${nairaSymbol()}${(double.parse(model.data!.amount)).toStringAsFixed(2)}",
                  style: AppTextStyles.smallText.copyWith(
                    color: AppColors.bodyTextColor,
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }

  List<Widget> titleAndSubtitle() {
    return [
      Text(
        "Pay Cable TV Bills",
        style: AppTextStyles.header.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 20.sp,
        ),
      ),
      SizedBox(
        width: 350.w,
        child: Text(
          "Fill the details below to pay your cable tv bill.",
          style: AppTextStyles.subHeader,
          textAlign: TextAlign.start,
        ),
      ),
    ];
  }
}
