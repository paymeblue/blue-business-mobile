import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_forgot_password_request.freezed.dart';
part 'verify_forgot_password_request.g.dart';

@freezed
abstract class VerifyForgotPasswordRequest with _$VerifyForgotPasswordRequest {
  const factory VerifyForgotPasswordRequest({
    required String otp,
    required String phone,
  }) = _VerifyForgotPasswordRequest;

  factory VerifyForgotPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$VerifyForgotPasswordRequestFromJson(json);
}
