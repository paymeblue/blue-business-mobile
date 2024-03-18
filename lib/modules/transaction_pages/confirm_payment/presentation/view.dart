import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/io/api/country_code.dart';
import 'package:blue_business/core/models/transaction/verify/receiver/verified_receiver.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:blue_business/widgets/modals/info_container.dart';
import 'package:flutter/cupertino.dart';

import 'view_model.dart';

class ConfirmPaymentView extends StatefulWidget {
  final String mode;
  final int? amount;
  final String? transactionId;
  final VerifiedReceiver? data;
  const ConfirmPaymentView({
    super.key,
    required this.mode,
    this.data,
    this.amount,
    this.transactionId,
  }) : assert((mode == "withdraw" && amount != null) ||
            (data != null && transactionId != null));

  @override
  State<ConfirmPaymentView> createState() => _ConfirmPaymentViewState();
}

class _ConfirmPaymentViewState extends State<ConfirmPaymentView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<TransactionShellViewModel>(
      model: TransactionShellViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (widget.mode == "withdraw")
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
            if (widget.data != null && widget.data!.walletCode != null)
              saveBeneficiaryRow(model),
            4.verticalGap,
            InfoContainer(
              text:
                  "You will be charged ${nairaSymbol()}${widget.data != null ? (widget.data!.charge.toDouble()).toStringAsFixed(2) : "20.00"} for this ${tText()}",
            ),
            const Spacer(),
            AppButton.primary(
              title: "Continue",
              onTap: () {
                model.goToNext(context, widget.transactionId, widget.mode,
                    widget.amount, widget.data);
              },
            )
          ],
        );
      },
    );
  }

  String tText() {
    if (widget.mode == "withdraw") {
      return "withdrawal";
    } else {
      return "transfer";
    }
  }

  Widget saveBeneficiaryRow(TransactionShellViewModel model) {
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
          widget.data!.receiverName,
          style: AppTextStyles.header.copyWith(fontSize: 15.5),
        ),
        Text(
          modeSubString(),
          style: AppTextStyles.smallText
              .copyWith(color: AppColors.bodyTextColor, fontSize: 14.5),
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
          style: AppTextStyles.header.copyWith(fontSize: 15.5),
        ),
        Text(
          modeSubString(),
          style: AppTextStyles.smallText
              .copyWith(color: AppColors.bodyTextColor, fontSize: 14.5),
        )
      ],
    );
  }

  Widget recipientContainer(TransactionShellViewModel model) {
    return Container(
      height: 70,
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
          if (widget.mode == "withdraw")
            withdrawalTextColumn()
          else
            paymentTextColumn(),
        ],
      ),
    );
  }

  List<Widget> withdrawalTitleAndSubtitle() {
    return [
      Text(
        "Withdraw ${nairaSymbol()}${(widget.amount! / 100).toStringAsFixed(2)}",
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
        "Send ${nairaSymbol()}${double.parse(widget.data!.amount).toStringAsFixed(2)}",
        style: AppTextStyles.header,
      ),
      8.verticalGap,
      SizedBox(
        width: 330,
        child: Text(
          "You are about to send ${nairaSymbol()}${double.parse(widget.data!.amount).toStringAsFixed(2)} to the following ${modeString()}.",
          style: AppTextStyles.subHeader,
          textAlign: TextAlign.start,
        ),
      )
    ];
  }

  String modeString() {
    switch (widget.mode) {
      case "phone":
        return "Phone number";
      case "blue-user":
      default:
        return "Blue user";
    }
  }

  String modeSubString() {
    switch (widget.mode) {
      case "withdraw":
        return locator<AppStateValues>().withdrawalAccount!.accountNumber;
      case "phone":
        return widget.data!.phone;
      case "blue-user":
      default:
        return widget.data!.walletCode!;
    }
  }

  Widget modeImage() {
    switch (widget.mode) {
      case "withdraw":
        return Container(
            height: 38,
            width: 38,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: AppColors.midGrey),
            child: AppAssets.images.icons.virtualBank.svg());
      case "phone":
        return Container(
          height: 38,
          width: 38,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: AppColors.primary),
          child: Text(
            widget.data!.receiverName[0],
            style: AppTextStyles.header
                .copyWith(color: AppColors.white, fontSize: 18.5),
          ),
        );
      case "blue-user":
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
