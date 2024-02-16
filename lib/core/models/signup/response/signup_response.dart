import 'package:blue_business/core/models/signup/user/signup_user_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_response.freezed.dart';
part 'signup_response.g.dart';

@freezed
class SignupResponse with _$SignupResponse {
  const factory SignupResponse({
    @Default(false) bool success,
    String? message,
    SignupUserData? data,
  }) = _SignupResponse;

  factory SignupResponse.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseImpl.fromJson(json);
}
