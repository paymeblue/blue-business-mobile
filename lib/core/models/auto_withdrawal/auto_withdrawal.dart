import 'package:freezed_annotation/freezed_annotation.dart';

part 'auto_withdrawal.freezed.dart';
part 'auto_withdrawal.g.dart';

@freezed
abstract class AutoWithdrawalRequest with _$AutoWithdrawalRequest {
  const factory AutoWithdrawalRequest({required bool autoWithdrawalEnabled}) =
      _AutoWithdrawalRequest;

  factory AutoWithdrawalRequest.fromJson(Map<String, dynamic> json) =>
      _$AutoWithdrawalRequestFromJson(json);
}

@freezed
abstract class AutoWithdrawalResponse with _$AutoWithdrawalResponse {
  const factory AutoWithdrawalResponse({
    @Default('fail') String status,
    String? message,
  }) = _AutoWithdrawalResponse;

  factory AutoWithdrawalResponse.fromJson(Map<String, dynamic> json) =>
      _$AutoWithdrawalResponseFromJson(json);
}
