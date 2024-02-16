import 'package:blue_business/core/models/withdrawal_account/verify/data/verify_payout_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_payout_response.freezed.dart';
part 'verify_payout_response.g.dart';

@freezed
class VerifyPayoutResponse with _$VerifyPayoutResponse {
  const factory VerifyPayoutResponse({
    @Default(false) bool success,
    String? message,
    VerifyPayoutData? data,
  }) = _VerifyPayoutResponse;

  factory VerifyPayoutResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifyPayoutResponseImpl.fromJson(json);
}
