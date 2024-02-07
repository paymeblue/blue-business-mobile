import 'package:blue_business/core/models/withdrawal_account/set/data/set_payout_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_payout_response.freezed.dart';
part 'set_payout_response.g.dart';

@freezed
class SetPayoutResponse with _$SetPayoutResponse {
  const factory SetPayoutResponse(
      {@Default("fail") String status,
      String? message,
      SetPayoutData? data}) = _SetPayoutResponse;

  factory SetPayoutResponse.fromJson(Map<String, dynamic> json) =>
      _$SetPayoutResponseImpl.fromJson(json);
}
