import 'package:freezed_annotation/freezed_annotation.dart';

part 'auto_withdrawal.freezed.dart';
part 'auto_withdrawal.g.dart';

@freezed
class AutoWithdrawalRequest with _$AutoWithdrawalRequest {
  const factory AutoWithdrawalRequest({
    required bool autoWithdrawalEnabled,
  }) = _AutoWithdrawalRequest;

  factory AutoWithdrawalRequest.fromJson(Map<String, dynamic> json) =>
      _$AutoWithdrawalRequestImpl.fromJson(json);
}

@freezed
class AutoWithdrawalResponse with _$AutoWithdrawalResponse {
  const factory AutoWithdrawalResponse({
    @Default('fail') String status,
    String? message,
  }) = _AutoWithdrawalResponse;

  factory AutoWithdrawalResponse.fromJson(Map<String, dynamic> json) =>
      _$AutoWithdrawalResponseImpl.fromJson(json);
}
