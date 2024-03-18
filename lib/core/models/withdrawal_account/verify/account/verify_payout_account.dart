import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_payout_account.freezed.dart';
part 'verify_payout_account.g.dart';

@freezed
class VerifyPayoutAccount with _$VerifyPayoutAccount {
  const factory VerifyPayoutAccount({
    required int id,
    required String reference,
    required String accountNumber,
    required String accountName,
    required String bankId,
    required String name,
    required String createdAt,
  }) = _VerifyPayoutAccount;

  factory VerifyPayoutAccount.fromJson(Map<String, dynamic> json) =>
      _$VerifyPayoutAccountImpl.fromJson(json);
}
