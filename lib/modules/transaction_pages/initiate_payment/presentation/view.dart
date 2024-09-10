import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/country_code.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:blue_business/widgets/modals/info_container.dart';
import 'package:blue_business/widgets/textfield/blue_textfield.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class InitiatePaymentView extends StatefulWidget {
  final bool isWithdrawal;
  const InitiatePaymentView({
    super.key,
    this.isWithdrawal = false,
  });

  @override
  State<InitiatePaymentView> createState() => _InitiatePaymentViewState();
}

class _InitiatePaymentViewState extends State<InitiatePaymentView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<InitiatePaymentViewModel>(
      model: InitiatePaymentViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Container(
          height: model.size.height,
          width: model.size.width,
          padding:
              const EdgeInsets.only(left: 16, right: 16, bottom: 35, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListView(
                  children: [
                    if (widget.isWithdrawal)
                      ...withdrawalTitleAndSubtitle()
                    else
                      ...paymentTitleAndSubtitle(),
                    50.verticalGap,
                    currencyField(model),
                    4.verticalGap,
                    InfoContainer(
                      text:
                          "The minimum ${tText()} amount is ${nairaSymbol()}200.00",
                    ),
                    if (!widget.isWithdrawal)
                      ...spaceAndDescriptionField(model),
                  ],
                ),
              ),
              AppButton.primary(
                title: "Continue",
                isEnabled: model.isActive(),
                onTap: () {
                  model.startTransaction(context, widget.isWithdrawal);
                },
              )
            ],
          ),
        );
      },
    );
  }

  Widget currencyField(InitiatePaymentViewModel model) {
    return BlueTextField.currency(
      hint: "${nairaSymbol()}50,000.00",
      controller: model.amountController,
      onChanged: model.onChanged,
      title: "How much would you like to withdraw?",
    );
  }

  List<Widget> spaceAndDescriptionField(InitiatePaymentViewModel model) {
    return [
      25.verticalGap,
      BlueTextField.plaintext(
        hint: "Food, Bills, Flex...",
        title: "What is it for?",
        onChanged: model.onChanged,
        controller: model.descriptionController,
        isOptional: true,
      ),
    ];
  }

  String tText() {
    if (widget.isWithdrawal) {
      return "withdrawable";
    } else {
      return "transferrable";
    }
  }

  List<Widget> withdrawalTitleAndSubtitle() {
    return [
      Text(
        "Withdraw funds",
        style: AppTextStyles.header,
      ),
      8.verticalGap,
      SizedBox(
        width: 350,
        child: Text(
          "Enter the amount you wish to withdraw from your Blue wallet.",
          style: AppTextStyles.subHeader,
          textAlign: TextAlign.start,
        ),
      )
    ];
  }

  List<Widget> paymentTitleAndSubtitle() {
    return [
      Text(
        "Send money",
        style: AppTextStyles.header,
      ),
      8.verticalGap,
      SizedBox(
        width: 350,
        child: Text(
          "Please enter the amount you wish to send from your wallet to initiate the transaction.",
          style: AppTextStyles.subHeader,
          textAlign: TextAlign.start,
        ),
      )
    ];
  }
}
