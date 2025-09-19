import 'package:blue_business/core/models/withdrawal_account/get/data/withdrawal_account.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_payout_response.freezed.dart';
part 'set_payout_response.g.dart';

@freezed
abstract class SetPayoutResponse with _$SetPayoutResponse {
  const factory SetPayoutResponse({
    @Default("fail") String status,
    String? message,
    WithdrawalAccount? data,
  }) = _SetPayoutResponse;

  factory SetPayoutResponse.fromJson(Map<String, dynamic> json) =>
      _$SetPayoutResponseFromJson(json);
}
