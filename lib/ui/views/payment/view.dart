import 'dart:io';

import 'package:blue_business/core/helpers/auth/timeout.dart';
import 'package:blue_business/core/managers/payment_state_manager.dart';
import 'package:blue_business/core/navigation/pages.dart';
import 'package:blue_business/ui/base/base_view.dart';
import 'package:blue_business/ui/views/login/view.dart';
import 'package:blue_business/ui/views/payment/view_model.dart';
import 'package:blue_business/ui/widgets/app_button.dart';
import 'package:blue_business/ui/widgets/custom_app_bar.dart';
import 'package:blue_business/ui/widgets/custom_textfield.dart';
import 'package:blue_business/ui/widgets/info_container.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class PaymentHomeView extends StatefulWidget {
  const PaymentHomeView({super.key});

  static MaterialPage page() {
    return MaterialPage(
        name: AppPages.paymentPath,
        key: ValueKey(AppPages.paymentPath),
        child: const PaymentHomeView());
  }

  @override
  State<PaymentHomeView> createState() => _PaymentHomeViewState();
}

class _PaymentHomeViewState extends State<PaymentHomeView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BaseView<QuickPayHomeViewModel>(
      model: QuickPayHomeViewModel(),
      onModelReady: (model) => model.init(),
      onDispose: (p0) {
        Timeout.dispose();
      },
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
                model.appStateManager.quickPay = false;
                model.paymentStateManager.method = null;
                model.paymentStateManager.amount = "";
                model.appStateManager.goToDashboard();
              },
            ),
            body: SingleChildScrollView(
              child: Container(
                  height: size.height - 100,
                  padding: const EdgeInsets.only(
                      top: 25, bottom: 52, left: 16, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        model.appStateManager.sendMoney
                            ? model.paymentStateManager.method != null &&
                                    model.paymentStateManager.method ==
                                        PaymentMethod.bank
                                ? "Withdraw Funds"
                                : "Send Money"
                            : "Make Payment",
                        style: AppTextStyles.header,
                      ),
                      const SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(right: 55),
                        child: Text(
                          model.appStateManager.sendMoney
                              ? model.paymentStateManager.method != null &&
                                      model.paymentStateManager.method ==
                                          PaymentMethod.bank
                                  ? "Enter the amount you wish to withdraw from your Blue wallet."
                                  : "Send & receive money quickly and easier with your Blue account."
                              : "Enter the amount below to initiate payment from your wallet.",
                          style: AppTextStyles.subHeader,
                        ),
                      ),
                      const SizedBox(height: 50),
                      const TextFieldHeader(
                          title: "How much would you like to send?"),
                      CustomTextField(
                        hintText: "0.00",
                        onChanged: model.onAmountChanged,
                        onSaved: model.onAmountSaved,
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly,
                          CurrencyTextInputFormatter(
                            decimalDigits: 2,
                            symbol: Platform.isAndroid ? "NGN" : "\u{20a6}",
                            name: "NGN",
                            locale: Platform.localeName,
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      InfoContainer(
                          text:
                              "The minimum transferrable amount is ${Platform.isAndroid ? "NGN" : "\u{20a6}"}100.00"),
                      if (!(model.paymentStateManager.method != null &&
                          model.paymentStateManager.method ==
                              PaymentMethod.bank))
                        const SizedBox(height: 20),
                      if (model.paymentStateManager.method !=
                          PaymentMethod.bank)
                        const TextFieldHeader(
                          title: "What is it for?",
                          isOptional: true,
                        ),
                      if (model.paymentStateManager.method !=
                          PaymentMethod.bank)
                        CustomTextField(
                          hintText: "Food, Bills, etc...",
                          onChanged: model.onReasonChanged,
                          onSaved: model.onReasonSaved,
                        ),
                      const Spacer(),
                      Consumer<PaymentStateManager>(builder: (context, pay, _) {
                        return Center(
                          child: AppButton(
                            onTap: () {
                              // if (pay.method == null) {
                              //   model.showOptionBottomSheet();
                              // } else if (pay.method == PaymentMethod.bank &&
                              //     model.appStateManager.currentUser!
                              //             .withdrawalAccountData ==
                              //         null) {
                              //   AppNotification.error(
                              //       message:
                              //           "You have not setup a withdrawal account. Please set one up and try again",
                              //       context: context);
                              //   // model.appStateManager.addPayoutAccount = true;
                              // } else {
                              model.initiateTransaction(context);
                              // }
                            },
                            buttonText: "Continue",
                            isActive: (model.appStateManager.sendMoney &&
                                    pay.method != null &&
                                    pay.amount.isNotEmpty &&
                                    double.parse(pay.amount
                                            .replaceAll(",", "")
                                            .replaceAll(
                                                Platform.isAndroid
                                                    ? "NGN"
                                                    : "\u{20a6}",
                                                "")) >=
                                        100.0) ||
                                !model.appStateManager.sendMoney &&
                                    pay.amount.isNotEmpty &&
                                    double.parse(pay.amount
                                            .replaceAll(",", "")
                                            .replaceAll(
                                                Platform.isAndroid
                                                    ? "NGN"
                                                    : "\u{20a6}",
                                                "")) >=
                                        100.0,
                          ),
                        );
                      })
                    ],
                  )),
            ),
          ),
        );
      },
    );
  }
}
