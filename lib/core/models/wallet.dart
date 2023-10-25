import 'package:blue_business/utils/app_images.dart';

class Wallet {
  final int id;
  final double? balance;
  final String walletCode;
  final String bankName;
  final String accountNumber;

  Wallet(
      {this.bankName = "",
      this.accountNumber = "",
      required this.id,
      this.balance = 0.0,
      required this.walletCode});

  String? bankLogo() {
    if (accountNumber[0] == "7") {
      return AppAssets.loader;
    } else if (accountNumber[0] == "9") {
      return AppAssets.loader;
    }

    return null;
  }

  @override
  String toString() {
    return "Wallet: {id: $id, balance: ${balance!.toStringAsFixed(2)}, walletCode: $walletCode}";
  }
}

class WithdrawalAccount {
  final int id;
  final String accountNumber;
  final String bankName;
  final String accountName;
  final String? logoUrl;

  WithdrawalAccount(
      {required this.id,
      required this.accountName,
      required this.accountNumber,
      required this.bankName,
      required this.logoUrl});
}
