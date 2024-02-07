import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_payout_request.freezed.dart';
part 'verify_payout_request.g.dart';

@freezed
class VerifyPayoutRequest with _$VerifyPayoutRequest {
  const factory VerifyPayoutRequest({
    required int bankId,
    required String accountNumber,
  }) = _VerifyPayoutRequest;

  factory VerifyPayoutRequest.fromJson(Map<String, dynamic> json) =>
      _$VerifyPayoutRequestImpl.fromJson(json);
}
