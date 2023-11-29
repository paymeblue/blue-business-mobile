import 'dart:io';

import 'package:blue_business/core/helpers/auth/timeout.dart';
import 'package:blue_business/core/managers/payment_state_manager.dart';
import 'package:blue_business/core/navigation/pages.dart';
import 'package:blue_business/ui/base/base_view.dart';
import 'package:blue_business/ui/views/login/view.dart';
import 'package:blue_business/ui/widgets/app_button.dart';
import 'package:blue_business/ui/widgets/custom_app_bar.dart';
import 'package:blue_business/ui/widgets/info_container.dart';
import 'package:blue_business/utils/app_images.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'view_model.dart';

class ConfirmPaymentView extends StatefulWidget {
  const ConfirmPaymentView({super.key});

  @override
  State<ConfirmPaymentView> createState() => _ConfirmPaymentViewState();

  static MaterialPage page() {
    return MaterialPage(
        name: AppPages.confirmPaymentPath,
        key: ValueKey(AppPages.confirmPaymentPath),
        child: const ConfirmPaymentView());
  }
}

class _ConfirmPaymentViewState extends State<ConfirmPaymentView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<ConfirmPaymentViewModel>(
      model: ConfirmPaymentViewModel(),
      onModelReady: (model) => model.init(),
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
                model.appStateManager.confirmPayment = false;
              },
            ),
            body: Container(
                height: model.size.height - 70,
                padding: const EdgeInsets.only(
                    top: 25, left: 16, right: 16, bottom: 52),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        model.paymentStateManager.method == PaymentMethod.bank
                            ? "Withdraw ${model.paymentStateManager.amount}"
                            : "Send ${model.paymentStateManager.amount}",
                        style: AppTextStyles.header,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        model.paymentStateManager.method == PaymentMethod.bank
                            ? "Enter the amount you wish to withdraw from your Blue wallet."
                            : "You are about to send ${Platform.isAndroid ? "NGN" : "₦"}${model.paymentStateManager.amount} to the following Blue user${model.paymentStateManager.reason.isNotEmpty ? " for ${model.paymentStateManager.reason}" : ""}.",
                        style: AppTextStyles.subHeader,
                      ),
                      const SizedBox(
                        height: 34,
                      ),
                      const TextFieldHeader(title: "To:"),
                      Container(
                        height: 80,
                        width: model.size.width,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 14),
                        decoration: BoxDecoration(
                            color: AppColors.grey,
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            if (model.paymentStateManager.method ==
                                PaymentMethod.blue)
                              Container(
                                  height: 40,
                                  width: 40,
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: AppColors.bgGrey,
                                      shape: BoxShape.circle),
                                  child: Image.asset(AppAssets.blueBgLogo,
                                      height: 20, width: 18))
                            else
                              Container(
                                  height: 45,
                                  width: 45,
                                  padding: model.paymentStateManager.method ==
                                          PaymentMethod.bank
                                      ? null
                                      : const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: model.paymentStateManager.method ==
                                            PaymentMethod.bank
                                        ? null
                                        : AppColors.primaryColor,
                                    shape: BoxShape.circle,
                                    // image: model.paymentStateManager.method ==
                                    //             PaymentMethod.bank &&
                                    //         model
                                    //                 .appStateManager
                                    //                 .currentUser!
                                    //                 .withdrawalAccountData!
                                    //                 .logoUrl !=
                                    //             null
                                    //     ? DecorationImage(
                                    //         image: AssetImage(model
                                    //             .appStateManager
                                    //             .currentUser!
                                    //             .withdrawalAccountData!
                                    //             .logoUrl!))
                                    //     : null,
                                  ),
                                  alignment: Alignment.center,
                                  child:
                                      //model.paymentStateManager.method ==
                                      //             PaymentMethod.bank &&
                                      //         model
                                      //                 .appStateManager
                                      //                 .currentUser!
                                      //                 .withdrawalAccountData!
                                      //                 .logoUrl ==
                                      //             null
                                      //     ? SvgPicture.asset(
                                      //         AppAssets.fundWalletIcon)
                                      //     :
                                      Text(
                                    "${model.paymentStateManager.recipientName.split(" ")[0].isNotEmpty ? model.paymentStateManager.recipientName.split(" ")[0][0].toUpperCase() : ""}"
                                    "${model.paymentStateManager.recipientName.split(" ")[model.paymentStateManager.recipientName.split(" ").length - 1].isNotEmpty ? model.paymentStateManager.recipientName.split(" ")[model.paymentStateManager.recipientName.split(" ").length - 1][0].toUpperCase() : ""}",
                                    style: AppTextStyles.subHeader.copyWith(
                                        color: AppColors.white, fontSize: 15),
                                  )),
                            const SizedBox(width: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  model.paymentStateManager.method ==
                                          PaymentMethod.bank
                                      ? "Semira Yesufu"
                                      : model.paymentStateManager.recipientName,
                                  style: AppTextStyles.subHeader.copyWith(
                                      color: AppColors.textcolor,
                                      height: 1.8,
                                      fontWeight: FontWeight.w600),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  model.paymentStateManager.method ==
                                          PaymentMethod.bank
                                      ? "1234567890"
                                      : model.paymentStateManager.method ==
                                                  PaymentMethod.blue ||
                                              model.paymentStateManager
                                                      .method ==
                                                  PaymentMethod.qr
                                          ? model.paymentStateManager.walletId
                                          : model.paymentStateManager.phone,
                                  style: AppTextStyles.subText.copyWith(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      if (model.paymentStateManager.method !=
                              PaymentMethod.bank &&
                          model.appStateManager.canSaveBeneficiary)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Save as beneficiary",
                              style: AppTextStyles.subHeader
                                  .copyWith(fontSize: 14),
                            ),
                            Consumer<PaymentStateManager>(
                                builder: (context, pay, _) {
                              return Transform.scale(
                                scale: .65,
                                child: CupertinoSwitch(
                                  value: pay.saveBeneficiary,
                                  onChanged: (v) {
                                    pay.saveBeneficiary = v;
                                  },
                                  activeColor: AppColors.primaryColor,
                                  trackColor: AppColors.midGrey,
                                  thumbColor: AppColors.white,
                                ),
                              );
                            })
                          ],
                        ),
                      const SizedBox(height: 8),
                      InfoContainer(
                          text:
                              "You will be charged ${Platform.isAndroid ? "NGN" : "₦"}${model.paymentStateManager.method == PaymentMethod.bank ? "20.00" : "0.00"} for this transfer"),
                      const Spacer(),
                      Center(
                          child: AppButton(
                              onTap: model.goToPasscodeScreen,
                              buttonText: "Continue"))
                    ])),
          ),
        );
      },
    );
  }
}
