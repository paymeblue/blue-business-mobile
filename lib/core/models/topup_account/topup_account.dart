import 'package:freezed_annotation/freezed_annotation.dart';

part 'topup_account.freezed.dart';
part 'topup_account.g.dart';

@freezed
abstract class TopupAccount with _$TopupAccount {
  const factory TopupAccount({
    required int id,
    required String accountName,
    required String bankName,
    required String accountNumber,
  }) = _TopupAccount;

  factory TopupAccount.fromJson(Map<String, dynamic> json) =>
      _$TopupAccountFromJson(json);
}
