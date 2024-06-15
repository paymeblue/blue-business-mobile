import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:blue_business/widgets/paging/loading_shimmer.dart';
import 'package:blue_business/widgets/textfield/blue_textfield.dart';
import 'package:blue_business/widgets/textfield/dropdown.dart';
import 'view_model.dart';
import 'package:flutter/material.dart';

class AddWithdrawalDetailsView extends StatefulWidget {
  const AddWithdrawalDetailsView({super.key});

  @override
  State<AddWithdrawalDetailsView> createState() =>
      _AddWithdrawalDetailsViewState();
}

class _AddWithdrawalDetailsViewState extends State<AddWithdrawalDetailsView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<AddWithdrawalDetailsViewModel>(
      model: AddWithdrawalDetailsViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () {
              model.goBack(context);
            },
          ),
          body: Container(
            height: model.size.height,
            width: model.size.width,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                textColumn(),
                35.verticalGap,
                Expanded(
                  child: formFields(model),
                ),
                AppButton.primary(
                  title: "Link Account",
                  isEnabled: model.isActive(),
                  onTap: () {},
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget formFields(AddWithdrawalDetailsViewModel model) {
    return ListView(
      children: [
        model.loadingBanks
            ? BlueLoadingTile.withoutImage()
            : bankDropdown(model),
        20.verticalGap,
        BlueTextField.plaintext(
          hint: "1234554321",
          title: "Bank account number",
          onChanged: model.onAccountNumberChanged,
          controller: model.accountNumberController,
        ),
        if (model.verifyingAccount)
          Text(
            "Verifying account details...",
            style: AppTextStyles.smallText.copyWith(color: AppColors.primary),
          ),
        20.verticalGap,
        BlueTextField.plaintext(
          hint: "John Doe",
          title: "Account name",
          isEnabled: false,
          controller: model.accountNameController,
        ),
      ],
    );
  }

  Widget bankDropdown(AddWithdrawalDetailsViewModel model) {
    return BlueDropdown.bank(
      banks: model.banks,
      onChanged: model.onBankChanged,
      searchController: model.searchController,
      value: model.selectedBank,
    );
  }

  Widget textColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Withdrawal bank",
          style: AppTextStyles.header,
        ),
        SizedBox(
          width: 350,
          child: Text(
            "Link your bank account to Blue for easy and secure withdrawal.",
            style: AppTextStyles.subHeader,
          ),
        )
      ],
    );
  }
}
