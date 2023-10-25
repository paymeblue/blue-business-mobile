import 'wallet.dart';

class User {
  final int id;
  final String phone;
  final DateTime? createdAt;
  final String firstName;
  final String? middleName;
  final String lastName;
  final bool isVerified;
  final String recoveryCode;
  final String? displayPicture;

  final Wallet? walletData;
  final WithdrawalAccount? withdrawalAccountData;

  String getInitials() {
    return "${firstName[0].toUpperCase()}${lastName[0].toUpperCase()}";
  }

  User(
      {required this.id,
      this.firstName = "",
      this.middleName,
      this.lastName = "",
      this.isVerified = false,
      this.displayPicture,
      this.recoveryCode = "",
      required this.phone,
      this.walletData,
      this.withdrawalAccountData,
      this.createdAt});

  @override
  String toString() {
    return "User(id: $id, phone: $phone, createdAt: ${createdAt == null ? "" : createdAt!.toIso8601String()}, "
        "firstName: $firstName, middleName: $middleName, lastName: $lastName, verified: $isVerified, "
        "recoveryCode: $recoveryCode, walletData: ${walletData.toString()}";
  }
}

class BlueRecipientData {
  final String firstName;
  final String lastName;
  final String walletCode;

  BlueRecipientData(
      {required this.firstName,
      required this.lastName,
      required this.walletCode});

  @override
  String toString() {
    return "BlueRecipientData{firstName: $firstName, lastName: $lastName, walletCode: $walletCode}";
  }
}
