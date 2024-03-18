import 'package:blue_business/core/models/withdrawal_account/verify/account/verify_payout_account.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_payout_data.freezed.dart';
part 'verify_payout_data.g.dart';

@freezed
class VerifyPayoutData with _$VerifyPayoutData {
  const factory VerifyPayoutData({
    required VerifyPayoutAccount account,
  }) = _VerifyPayoutData;

  factory VerifyPayoutData.fromJson(Map<String, dynamic> json) =>
      _$VerifyPayoutDataImpl.fromJson(json);
}
