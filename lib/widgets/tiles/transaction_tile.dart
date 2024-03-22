import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/io/api/country_code.dart';
import 'package:blue_business/core/models/transaction_history/transaction_history.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransationTile extends StatelessWidget {
  final TransactionHistory transaction;
  const TransationTile({
    super.key,
    required this.transaction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
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
          "${typeSymbol()}${transaction.amount}",
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
          transaction.otherPartyName ?? "",
          style: AppTextStyles.header.copyWith(fontSize: 15.5),
        ),
        Text(
          "${methodString()}, ${timeString()}",
          style: AppTextStyles.smallText
              .copyWith(color: AppColors.bodyTextColor, fontSize: 14.5),
        )
      ],
    );
  }

  PaymentMode getPaymentMode() {
    // switch (transaction.paymentMode) {
    //   case "phone":
    //     return PaymentMode.phone;
    //   case "withdrawal":
    //     return PaymentMode.withdrawal;
    //   case "wallet_topup":
    //     return PaymentMode.topup;
    //   case "blue-user":
    //   default:
    return PaymentMode.blue;
    // }
  }

  TransactionType getTransactionType() {
    switch (transaction.type?.toLowerCase()) {
      case "credit":
        return TransactionType.credit;
      case "debit":
      default:
        return TransactionType.debit;
    }
  }

  Widget transactionImage() {
    // switch (getPaymentMode()) {
    //   case PaymentMode.blue:
    //   case PaymentMode.qr:
    //     return bluePaymentImage();
    //   case PaymentMode.topup:
    //   case PaymentMode.withdrawal:
    //     return AppAssets.images.icons.virtualBank.svg();
    //   case PaymentMode.phone:
    //   default:
    return defaultImage();
    // }
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
        transaction.initials,
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

    return formatCurrency.format(transaction.amount);
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
