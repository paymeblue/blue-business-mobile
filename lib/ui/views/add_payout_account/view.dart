import 'package:blue_business/core/helpers/auth/timeout.dart';
import 'package:blue_business/core/navigation/pages.dart';
import 'package:blue_business/ui/base/base_view.dart';
import 'package:blue_business/ui/views/login/view.dart';
import 'package:blue_business/ui/widgets/app_button.dart';
import 'package:blue_business/ui/widgets/custom_app_bar.dart';
import 'package:blue_business/ui/widgets/custom_textfield.dart';
import 'package:blue_business/ui/widgets/info_container.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'view_model.dart';

class AddWithdrawalAccountView extends StatefulWidget {
  const AddWithdrawalAccountView({super.key});

  @override
  State<AddWithdrawalAccountView> createState() =>
      _AddWithdrawalAccountViewState();

  static MaterialPage page() {
    return MaterialPage(
        name: AppPages.addPayoutAccountPath,
        key: ValueKey(AppPages.addPayoutAccountPath),
        child: const AddWithdrawalAccountView());
  }
}

class _AddWithdrawalAccountViewState extends State<AddWithdrawalAccountView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<AddWithdrawalAccountViewModel>(
      model: AddWithdrawalAccountViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return GestureDetector(
          onTap: () {
            Timeout.resetTimer();
          },
          onPanDown: (details) {
            Timeout.resetTimer();
          },
          child: Scaffold(
            appBar: BlueAppBar.show(
              leadingIcon: Icons.arrow_back_ios_new,
              onBackTap: () {
                model.appStateManager.addPayoutAccount = false;
              },
            ),
            body: SingleChildScrollView(
              child: Container(
                height: model.size.height - 80,
                padding: EdgeInsets.only(
                    top: 25,
                    bottom: model.size.height > 900 ? 80 : 45,
                    left: 16,
                    right: 16),
                child: Form(
                    key: model.formKey,
                    child: Stack(
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Withdrawal bank",
                                style: AppTextStyles.header,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                "Link your bank account to Blue for easy and secure withdrawal.",
                                style: AppTextStyles.subHeader,
                              ),
                              const SizedBox(height: 50),
                              const TextFieldHeader(title: "Bank name"),
                              CustomTextField(
                                hintText: "--Search for your bank--",
                                node: model.bankDropdownNode,
                                controller: model.bankSearchController,
                                onChanged: model.onBankChanged,
                                onSaved: model.onBankSaved,
                                suffixIcon: IconButton(
                                  icon: const Icon(
                                      Icons.keyboard_arrow_down_rounded),
                                  onPressed: () {
                                    model.searchBank("");
                                    model.isExpanded = !model.isExpanded;
                                  },
                                ),
                              ),
                              const SizedBox(height: 10),
                              const TextFieldHeader(
                                  title: "Bank Account number"),
                              CustomTextField(
                                hintText: "Bank Account Number",
                                keyboardType: TextInputType.number,
                                onChanged: model.onAccountNumberChanged,
                                onSaved: model.onAccountNumberSaved,
                              ),
                              if (model.verifying)
                                Text(
                                  model.verifyMessage,
                                  style: AppTextStyles.subText,
                                ),
                              const SizedBox(height: 10),
                              const TextFieldHeader(title: "Account name"),
                              CustomTextField(
                                hintText: "Account name",
                                isDisabled: true,
                                controller: model.accountNameController,
                              ),
                              const SizedBox(height: 22),
                              const InfoContainer(
                                  text:
                                      "Only link the bank details that belong to you as an individual."),
                              const Spacer(),
                              Center(
                                child: AppButton(
                                    onTap: () {
                                      model.addPayoutAccount(context);
                                    },
                                    isActive: model
                                        .accountNameController.text.isNotEmpty,
                                    buttonText: "Link Account"),
                              )
                            ]),
                        Positioned(
                          top: 200,
                          child: model.isExpanded
                              ? model.banks.isNotEmpty
                                  ? AnimatedContainer(
                                      width: model.size.width,
                                      height: model.banks.isEmpty
                                          ? 55
                                          : model.banks.length * 50 <
                                                  model.size.height / 2.4
                                              ? model.banks.length * 50
                                              : model.size.height / 2.4,
                                      duration: const Duration(
                                        milliseconds: 350,
                                      ),
                                      decoration: BoxDecoration(
                                          color: AppColors.white,
                                          boxShadow: kElevationToShadow[3],
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: ListView.builder(
                                          itemCount: model.banks.length,
                                          itemBuilder: (context, i) {
                                            return GestureDetector(
                                              onTap: () {
                                                model.bankSearchController
                                                    .text = model.banks[i].name;

                                                model.selectedBank =
                                                    model.banks[i];
                                                model.isExpanded = false;
                                                model.searchBank(
                                                    model.banks[i].name);
                                              },
                                              child: Container(
                                                height: 50,
                                                width: model.size.width,
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 16),
                                                alignment: Alignment.centerLeft,
                                                decoration:
                                                    const BoxDecoration(),
                                                child: Text(
                                                  model.banks[i].name,
                                                  style:
                                                      AppTextStyles.textField,
                                                ),
                                              ),
                                            );
                                          }),
                                    )
                                  : Container(
                                      height: 50,
                                      width: model.size.width,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16),
                                      alignment: Alignment.centerLeft,
                                      decoration: BoxDecoration(
                                          color: AppColors.white,
                                          boxShadow: kElevationToShadow[3],
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Text(
                                        "No matches found",
                                        style: AppTextStyles.textField,
                                      ))
                              : const SizedBox(),
                        ),
                      ],
                    )),
              ),
            ),
          ),
        );
      },
    );
  }
}
