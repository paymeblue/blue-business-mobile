import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_payout_request.freezed.dart';
part 'set_payout_request.g.dart';

@freezed
class SetPayoutRequest with _$SetPayoutRequest {
  const factory SetPayoutRequest({required String reference}) =
      _SetPayoutRequest;

  factory SetPayoutRequest.fromJson(Map<String, dynamic> json) =>
      _$SetPayoutRequestImpl.fromJson(json);
}
