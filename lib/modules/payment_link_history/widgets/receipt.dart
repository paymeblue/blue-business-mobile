import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/io/api/country_code.dart';
import 'package:blue_business/core/models/transaction/receipt/data/payment_link/receipt_record.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Receipt extends StatelessWidget {
  final PaymentLinkReceiptRecord record;
  const Receipt({
    super.key,
    required this.record,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      decoration: const BoxDecoration(
        color: AppColors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          receiptHeader(),
          dataSection(context),
          13.verticalGap,
          blueTeamSignatureWitdget(),
          13.verticalGap,
          supportContainer(),
        ],
      ),
    );
  }

  Widget supportContainer() {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.lightBlue,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 50),
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
            text: "Need help? Kindly contact us on ",
            style: AppTextStyles.receiptFieldTitle.copyWith(
                color: AppColors.bodyTextColor, fontSize: 14.5, height: 1.5),
          ),
          TextSpan(
            text: "hello@paymeblue.com ",
            style: AppTextStyles.receiptFieldTitle.copyWith(
                color: AppColors.primary,
                fontSize: 14.5,
                decoration: TextDecoration.underline,
                height: 1.5),
          ),
          TextSpan(
            text: "and ",
            style: AppTextStyles.receiptFieldTitle.copyWith(
                color: AppColors.bodyTextColor, fontSize: 14, height: 1.5),
          ),
          TextSpan(
            text: "+2347077655432",
            style: AppTextStyles.receiptFieldTitle.copyWith(
                color: AppColors.primary,
                fontSize: 14.5,
                decoration: TextDecoration.underline,
                height: 1.5),
          )
        ]),
      ),
    );
  }

  Widget blueTeamSignatureWitdget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Text(
        "Best Reagards,\nBluePay Team",
        style: AppTextStyles.receiptFieldbody
            .copyWith(fontSize: 15.5, fontWeight: FontWeight.w400),
      ),
    );
  }

  Widget dataSection(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(
        left: 50,
        right: 50,
        top: 30,
        bottom: 50,
      ),
      width: context.mediaQuery.size.width,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.paleBlue),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: receiptFields(),
      ),
    );
  }

  List<Widget> receiptFields() {
    return [
      receiptField(
        title: "Transaction type",
        data: typeString(),
      ),
      16.verticalGap,
      receiptField(
        title: "Transaction Date",
        data: dateString(),
      ),
      16.verticalGap,
      receiptField(
        title: "Amount",
        data: "${nairaSymbol()}${record.amount}",
      ),
      16.verticalGap,
      receiptField(
        title: "Credit Account",
        data: record.receivedBy,
      ),
      16.verticalGap,
      receiptField(
        title: "Beneficiary name",
        data: record.receiverName,
      ),
      if (record.narration != null) ...[
        16.verticalGap,
        receiptField(
          title: "Credit Account",
          data: record.receivedBy,
        ),
      ],
      16.verticalGap,
      receiptField(
        title: "Status",
        data: "${record.status[0].toUpperCase()}${record.status.substring(1)}",
        textColor: statusColor(),
      )
    ];
  }

  String dateString() {
    DateTime date = DateTime.parse(record.createdAt);
    return "${date.day.toString().padLeft(2, "0")}-${DateFormat.MMM().format(date)}-${date.year} ${DateFormat.jms().format(date)}";
  }

  Color statusColor() {
    switch (record.status) {
      case "sent":
        return AppColors.warning;
      case "wwithdrawn":
        return AppColors.success;
      default:
        return AppColors.error;
    }
  }

  String typeString() {
    switch (record.paymentMode) {
      case "blue-user":
        return "Blue to Blue";
      case "withdrawal":
        return "Withdrawal";
      default:
        return "Phone number";
    }
  }

  Widget receiptHeader() {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 40),
      decoration: const BoxDecoration(color: AppColors.primary),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Transaction Receipt",
            style: AppTextStyles.receiptFieldTitle.copyWith(
                fontSize: 18.5,
                fontWeight: FontWeight.w500,
                color: AppColors.white),
          ),
          SizedBox(
            height: 23,
            child: AppAssets.images.logos.splashLogo.image(),
          ),
        ],
      ),
    );
  }

  Widget receiptField(
      {required String title,
      required String data,
      Color textColor = AppColors.textColor}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyles.receiptFieldTitle,
        ),
        const SizedBox(height: 3),
        Text(
          data,
          style: AppTextStyles.receiptFieldbody.copyWith(
            color: textColor,
          ),
        ),
      ],
    );
  }
}
