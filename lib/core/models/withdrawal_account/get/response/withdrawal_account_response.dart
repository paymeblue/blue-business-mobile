import 'package:blue_business/core/models/withdrawal_account/get/data/withdrawal_account.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'withdrawal_account_response.freezed.dart';
part 'withdrawal_account_response.g.dart';

@freezed
abstract class WithdrawalAccountResponse with _$WithdrawalAccountResponse {
  const factory WithdrawalAccountResponse({
    @Default("fail") String status,
    String? message,
    WithdrawalAccount? data,
  }) = _WithdrawalAccountResponse;

  factory WithdrawalAccountResponse.fromJson(Map<String, dynamic> json) =>
      _$WithdrawalAccountResponseFromJson(json);
}
