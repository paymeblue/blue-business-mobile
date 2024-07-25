import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_forgot_pin_request.freezed.dart';
part 'verify_forgot_pin_request.g.dart';

@freezed
class VerifyForgotPinRequest with _$VerifyForgotPinRequest {
  const factory VerifyForgotPinRequest({
    required String otp,
    required String recoveryPhone,
  }) = _VerifyForgotPinRequest;

  factory VerifyForgotPinRequest.fromJson(Map<String, dynamic> json) =>
      _$VerifyForgotPinRequestImpl.fromJson(json);
}
