import 'package:auto_route/auto_route.dart';
import 'package:blue_business/core/config/country_code.dart';
import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/enums.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/pay/pages/initiate/presentation/view_model.dart';
import 'package:blue_business/ui/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/ui/widgets/buttons/app_buttons.dart';
import 'package:blue_business/ui/widgets/modals/info_container.dart';
import 'package:blue_business/ui/widgets/textfield/blue_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class InitiateTransactionView extends StatelessWidget {
  final PaymentMode? mode;
  const InitiateTransactionView({super.key, this.mode});

  @override
  Widget build(BuildContext context) {
    return BaseView<InitiateTransactionViewModel>(
      model: InitiateTransactionViewModel(),
      onModelReady: (model) => model.init(context, mode),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () {
              context.router.maybePop();
            },
            icon: Icons.arrow_back_ios_new,
          ),
          body: Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 16, bottom: 35, top: 8),
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      if (mode == PaymentMode.withdrawal)
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
                      if (mode != PaymentMode.withdrawal)
                        ...spaceAndDescriptionField(model),
                    ],
                  ),
                ),
                AppButton.primary(
                  title: "Continue",
                  isEnabled: model.isActive(),
                  onTap: () {
                    model.onButtonTap(context);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget currencyField(InitiateTransactionViewModel model) {
    return BlueTextField.currency(
      hint: "${nairaSymbol()}50,000.00",
      controller: model.amountController,
      onChanged: model.onChanged,
      title: mode == PaymentMode.withdrawal
          ? "How much would you like to withdraw?"
          : "How much would you like to send?",
    );
  }

  List<Widget> spaceAndDescriptionField(InitiateTransactionViewModel model) {
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
    if (mode == PaymentMode.withdrawal) {
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
        width: 350.w,
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
        width: 350.w,
        child: Text(
          "Please enter the amount you wish to send from your wallet to initiate the transaction.",
          style: AppTextStyles.subHeader,
          textAlign: TextAlign.start,
        ),
      )
    ];
  }
}
