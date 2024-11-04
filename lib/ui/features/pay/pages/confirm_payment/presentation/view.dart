import 'package:blue_business/core/config/country_code.dart';
import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/transaction/verify/receiver/verified_receiver.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/enums.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/pay/pages/confirm_payment/presentation/view_model.dart';
import 'package:blue_business/ui/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/ui/widgets/buttons/app_buttons.dart';
import 'package:blue_business/ui/widgets/modals/info_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ConfirmTransactionViewArgs {
  final PaymentMode mode;
  final int? amount;
  final VerifiedReceiver? receiver;
  final String? transactionId;

  ConfirmTransactionViewArgs({
    required this.mode,
    this.amount,
    this.receiver,
    this.transactionId,
  }) : assert((mode.key == "withdraw" && amount != null) ||
            (receiver != null && transactionId != null));
}

class ConfirmTransactionView extends StatelessWidget {
  const ConfirmTransactionView({super.key, required this.args});

  final ConfirmTransactionViewArgs args;

  @override
  Widget build(BuildContext context) {
    return BaseView<ConfirmTransactionViewModel>(
        model: ConfirmTransactionViewModel(),
        onModelReady: (model) => model.init(context),
        builder: (context, model, _) {
          return Scaffold(
            appBar: BlueAppBar.primary(
              onBackTap: () => context.pop(),
              icon: Icons.arrow_back_ios,
            ),
            body: Padding(
              padding: const EdgeInsets.only(
                  bottom: 35, top: 10, left: 16, right: 16),
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                      children: [
                        if (args.mode == PaymentMode.withdrawal)
                          ...withdrawalTitleAndSubtitle()
                        else
                          ...paymentTitleAndSubtitle(),
                        35.verticalGap,
                        Text(
                          "To:",
                          style: AppTextStyles.subHeader,
                        ),
                        4.verticalGap,
                        recipientContainer(model),
                        8.verticalGap,
                        if (args.receiver != null &&
                            args.receiver!.walletCode != null)
                          saveBeneficiaryRow(model),
                        4.verticalGap,
                        InfoContainer(
                          text:
                              "You will be charged ${nairaSymbol()}${args.receiver != null ? (args.receiver!.charge.toDouble()).toStringAsFixed(2) : "20.00"} for this ${tText()}",
                        ),
                      ],
                    ),
                  ),
                  AppButton.primary(
                    title: "Continue",
                    onTap: () {},
                  )
                ],
              ),
            ),
          );
        });
  }

  String tText() {
    if (args.mode == PaymentMode.withdrawal) {
      return "withdrawal";
    } else {
      return "transfer";
    }
  }

  Widget saveBeneficiaryRow(ConfirmTransactionViewModel model) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Save as beneficiary",
          style: AppTextStyles.subHeader,
        ),
        Transform.scale(
          scale: .6,
          child: CupertinoSwitch(
            value: model.saveBeneficiary,
            activeColor: AppColors.primary,
            trackColor: AppColors.grey,
            onChanged: (v) {
              model.saveBeneficiary = v;
            },
          ),
        )
      ],
    );
  }

  Widget paymentTextColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          args.receiver!.receiverName,
          style: AppTextStyles.header.copyWith(fontSize: 15.sp),
        ),
        Text(
          modeSubString(),
          style: AppTextStyles.smallText
              .copyWith(color: AppColors.bodyTextColor, fontSize: 14.sp),
        )
      ],
    );
  }

  Widget withdrawalTextColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          locator<AppStateValues>().withdrawalAccount!.accountName,
          style: AppTextStyles.header.copyWith(fontSize: 15.sp),
        ),
        Text(
          modeSubString(),
          style: AppTextStyles.smallText
              .copyWith(color: AppColors.bodyTextColor, fontSize: 14.sp),
        )
      ],
    );
  }

  Widget recipientContainer(ConfirmTransactionViewModel model) {
    return Container(
      height: 70.h,
      width: model.size.width,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.grey,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          modeImage(),
          10.horizontalGap,
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: FittedBox(
                child: args.mode == PaymentMode.withdrawal
                    ? withdrawalTextColumn()
                    : paymentTextColumn(),
              ),
            ),
          )
        ],
      ),
    );
  }

  List<Widget> withdrawalTitleAndSubtitle() {
    return [
      Text(
        "Withdraw ${nairaSymbol()}${(args.amount! / 100).toStringAsFixed(2)}",
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
        "Send ${nairaSymbol()}${args.receiver!.amount}",
        style: AppTextStyles.header,
      ),
      8.verticalGap,
      SizedBox(
        width: 330.w,
        child: Text(
          "You are about to send ${nairaSymbol()}${args.receiver!.amount} to the following ${modeString()}.",
          style: AppTextStyles.subHeader,
          textAlign: TextAlign.start,
        ),
      )
    ];
  }

  String modeString() {
    switch (args.mode.key) {
      case "phone":
        return "Phone number";
      case "blue-user":
      default:
        return "Blue user";
    }
  }

  String modeSubString() {
    switch (args.mode.key) {
      case "withdraw":
        return locator<AppStateValues>().withdrawalAccount!.accountNumber;
      case "phone":
        return args.receiver!.phone;
      case "blue-user":
      default:
        return args.receiver!.walletCode!;
    }
  }

  Widget modeImage() {
    switch (args.mode) {
      case PaymentMode.withdrawal:
        return Container(
            height: 38.h,
            width: 38.w,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: AppColors.midGrey),
            child: AppAssets.images.icons.virtualBank.svg());
      case PaymentMode.phone:
        return Container(
          height: 38.h,
          width: 38.w,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: AppColors.primary),
          child: Text(
            args.receiver!.receiverName.initials,
            style: AppTextStyles.header
                .copyWith(color: AppColors.white, fontSize: 17.sp),
          ),
        );
      case PaymentMode.blue:
      case PaymentMode.qr:
      default:
        return Container(
            height: 38,
            width: 38,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: AppColors.midGrey),
            child: AppAssets.images.logos.blueBgLogo.image());
    }
  }
}
