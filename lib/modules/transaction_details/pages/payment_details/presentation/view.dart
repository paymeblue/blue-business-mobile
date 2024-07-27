import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/io/api/country_code.dart';
import 'package:blue_business/core/models/transaction_detail/payment/payment_detail.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/modules/transaction_pages/success/widgets/receipt.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:screenshot/screenshot.dart';

import 'view_model.dart';

class PaymentDetailsView extends StatefulWidget {
  final PaymentDetail detail;
  final String type;
  const PaymentDetailsView(
      {super.key, required this.detail, this.type = "debit"});

  @override
  State<PaymentDetailsView> createState() => _PaymentDetailsViewState();
}

class _PaymentDetailsViewState extends State<PaymentDetailsView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<PaymentDetailsViewModel>(
      model: PaymentDetailsViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () => model.goBack(context),
            icon: Icons.arrow_back_ios_new,
          ),
          body: Stack(
            children: [
              if (model.receipt != null)
                Screenshot(
                  controller: model.screenshotController,
                  child: Receipt(record: model.receipt!),
                ),
              Container(
                height: model.size.height,
                width: model.size.width,
                padding: const EdgeInsets.symmetric(horizontal: 17),
                decoration: const BoxDecoration(
                  color: AppColors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Transaction Details",
                        style: AppTextStyles.semiLargeHeader,
                      ),
                    ),
                    25.verticalGap,
                    Text(
                      "YOU ${action()}",
                      style:
                          AppTextStyles.subHeader.copyWith(letterSpacing: 1.5),
                    ),
                    Text(
                      "${nairaSymbol()}${widget.detail.amount}",
                      style: AppTextStyles.header
                          .copyWith(fontSize: 26, fontWeight: FontWeight.w700),
                    ),
                    15.verticalGap,
                    Expanded(
                      child: ListView(
                        children: [
                          ...detailsSection(
                            title: "Transaction type",
                            detail: widget.type,
                          ),
                          8.verticalGap,
                          if (widget.type.toLowerCase() == "credit")
                            ...detailsSection(
                              title: "Sender's name",
                              detail: widget.detail.details,
                            )
                          else
                            ...detailsSection(
                              title: "Recipient name",
                              detail: widget.detail.details,
                            ),
                          8.verticalGap,
                          if (widget.type.toLowerCase() == "credit")
                            ...detailsSection(
                              title: "Sender",
                              detail: widget.detail.receiver,
                            )
                          else
                            ...detailsSection(
                              title: "Recipient",
                              detail: widget.detail.receiver,
                            ),
                          8.verticalGap,
                          ...detailsSection(
                            title: "Payment method",
                            detail: typeString(),
                          ),
                          8.verticalGap,
                          ...detailsSection(
                            title: "Amount",
                            detail: "${nairaSymbol()}${widget.detail.amount}",
                          ),
                          8.verticalGap,
                          ...detailsSection(
                            title: "Transaction date & time",
                            detail: dateAndTime(),
                          ),
                          8.verticalGap,
                          ...detailsSection(
                            title: "Status",
                            detail: widget.detail.status.sentenceCase,
                            color: AppColors.otherGreen,
                          ),
                        ],
                      ),
                    ),
                    AppButton.primary(
                        title: "Share Receipt",
                        onTap: () {
                          model.getTransactionReceipt(widget.detail);
                        }),
                    35.verticalGap,
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  String dateAndTime() {
    DateTime dateTime = DateTime.parse(widget.detail.createdAt);
    String date =
        "${dateTime.day.toString().padLeft(2, "0")}/${dateTime.month.toString().padLeft(2, "0")}/${dateTime.year}";
    String time = DateFormat.Hms().format(dateTime);
    return "$date, $time";
  }

  String typeString() {
    switch (widget.detail.paymentMode) {
      case "blue-user":
        return "Blue to Blue";
      case "withdrawal":
        return "Withdrawal";
      case "wallet_topup":
        return "Wallet Topup";
      default:
        return "Phone number";
    }
  }

  List<Widget> detailsSection(
      {required String title, required String detail, Color? color}) {
    return [
      detailRow(title: title, detail: detail, color: color),
      8.verticalGap,
      const Divider(
        color: AppColors.bodyTextColor2,
      ),
      4.verticalGap,
    ];
  }

  Widget detailRow(
      {required String title, required String detail, Color? color}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppTextStyles.subText,
          ),
          10.horizontalGap,
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              child: Text(
                detail,
                style: AppTextStyles.subText
                    .copyWith(color: color ?? AppColors.textColor),
                textAlign: TextAlign.end,
              ),
            ),
          ),
        ],
      ),
    );
  }

  String action() {
    switch (widget.detail.paymentMode) {
      case "withdrawal":
        return "WITHREW";
      case "wallet_topup":
        return "RECEIVED";
      default:
        if (widget.type.toLowerCase() == "debit") {
          return "SENT";
        } else {
          return "RECEIVED";
        }
    }
  }
}
