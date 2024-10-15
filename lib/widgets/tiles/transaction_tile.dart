import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/io/api/country_code.dart';
import 'package:blue_business/core/models/transaction_history/transaction_history.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class TransationTile extends StatelessWidget {
  final TransactionHistory transaction;
  final bool colored;
  const TransationTile({
    super.key,
    required this.transaction,
    this.colored = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: colored ? 14 : 6, horizontal: colored ? 17 : 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: colored ? AppColors.inputField : null,
      ),
      child: Row(
        children: [
          transactionImage(),
          10.horizontalGap,
          Expanded(
            child: textColumn(),
          ),
          10.horizontalGap,
          amountWidget()
        ],
      ),
    );
  }

  Widget amountWidget() {
    return SizedBox(
      height: 20,
      child: FittedBox(
        child: Text(
          "${typeSymbol()}${transaction.transactionAmount}",
          style: AppTextStyles.subHeader.copyWith(
            color: typeColor(),
          ),
        ),
      ),
    );
  }

  Widget textColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          columnTitle(),
          style: AppTextStyles.header.copyWith(fontSize: 15.sp),
        ),
        Text(
          "${methodString()}, ${timeString()}",
          style: AppTextStyles.smallText
              .copyWith(color: AppColors.bodyTextColor, fontSize: 14.sp),
        )
      ],
    );
  }

  String columnTitle() {
    switch (getPaymentMode()) {
      case PaymentMode.blue:
      case PaymentMode.qr:
      case PaymentMode.topup:
      case PaymentMode.withdrawal:
        return transaction.otherPartyName;
      case PaymentMode.phone:
        if (transaction.otherPartyName
            .toString()
            .startsWith(RegExp(r"[0-9]"))) {
          return "+${transaction.otherPartyName}";
        } else {
          return transaction.otherPartyName;
        }
      case PaymentMode.airtime:
        return "Airtime Bill";
      case PaymentMode.data:
        return "Data Bill";
      case PaymentMode.electricity:
        return "Electricity Bill";
      case PaymentMode.tv:
        return "Cable TV bill";
    }
  }

  PaymentMode getPaymentMode() {
    switch (transaction.paymentMode) {
      case "withdrawal":
        return PaymentMode.withdrawal;
      case "wallet_topup":
        return PaymentMode.topup;
      case "blue-user":
        return PaymentMode.blue;
      case "power":
        return PaymentMode.electricity;
      case "data":
        return PaymentMode.data;
      case "airtime":
        return PaymentMode.airtime;
      case "cable-tv":
        return PaymentMode.tv;
      case "phone":
      default:
        return PaymentMode.phone;
    }
  }

  TransactionType getTransactionType() {
    switch (transaction.transactionType.toLowerCase()) {
      case "credit":
        return TransactionType.credit;
      case "debit":
      default:
        return TransactionType.debit;
    }
  }

  Widget transactionImage() {
    switch (getPaymentMode()) {
      case PaymentMode.blue:
      case PaymentMode.qr:
        return bluePaymentImage();
      case PaymentMode.topup:
      case PaymentMode.withdrawal:
        return AppAssets.images.icons.virtualBank.svg();
      case PaymentMode.phone:
        return defaultImage();
      case PaymentMode.airtime:
        return AppAssets.images.icons.airtime.svg();
      case PaymentMode.data:
        return AppAssets.images.icons.data.svg();
      case PaymentMode.electricity:
        return AppAssets.images.icons.electricity.svg();
      case PaymentMode.tv:
        return AppAssets.images.icons.tv.svg();
    }
  }

  Container defaultImage() {
    return Container(
      height: 38,
      width: 38,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.success,
      ),
      alignment: Alignment.center,
      child: Text(
        transaction.otherPartyName.initials,
        style: AppTextStyles.smallButtonText.copyWith(color: AppColors.white),
      ),
    );
  }

  Container bluePaymentImage() {
    return Container(
      height: 38,
      width: 38,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: AppColors.bgGrey,
        shape: BoxShape.circle,
      ),
      child: AppAssets.images.logos.blueBgLogo.image(),
    );
  }

  String methodString() {
    switch (getPaymentMode()) {
      case PaymentMode.blue:
      case PaymentMode.qr:
        return "Blue to Blue";
      case PaymentMode.topup:
        return "Wallet topup";
      case PaymentMode.withdrawal:
        return "Withdrawal";
      case PaymentMode.phone:
      default:
        return "Phone number";
    }
  }

  String amountString() {
    final formatCurrency = NumberFormat.simpleCurrency(name: nairaSymbol());

    return formatCurrency.format(double.parse(transaction.transactionAmount));
  }

  String typeSymbol() {
    if (getTransactionType() == TransactionType.credit) {
      return "+";
    } else {
      return "-";
    }
  }

  Color typeColor() {
    if (getTransactionType() == TransactionType.credit) {
      return AppColors.success;
    } else {
      return AppColors.error;
    }
  }

  String timeString() {
    DateFormat format = DateFormat.jm();

    return format.format(DateTime.parse(transaction.createdAt));
  }
}
