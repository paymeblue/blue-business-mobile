import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_otp_response.freezed.dart';
part 'signup_otp_response.g.dart';

@freezed
class SignupOtpResponse with _$SignupOtpResponse {
  const factory SignupOtpResponse({
    @Default("fail") String status,
    String? message,
  }) = _SignupOtpResponse;

  factory SignupOtpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignupOtpResponseImpl.fromJson(json);
}
