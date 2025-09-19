import 'package:freezed_annotation/freezed_annotation.dart';

part 'withdrawal_account.freezed.dart';
part 'withdrawal_account.g.dart';

@freezed
abstract class WithdrawalAccount with _$WithdrawalAccount {
  const factory WithdrawalAccount({
    required int id,
    required int bankId,
    required String bankName,
    required String accountName,
    required String accountNumber,
    String? createdAt,
  }) = _WithdrawalAccount;

  factory WithdrawalAccount.fromJson(Map<String, dynamic> json) =>
      _$WithdrawalAccountFromJson(json);
}
