import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_profile_response.freezed.dart';
part 'signup_profile_response.g.dart';

@freezed
class SignupProfileResponse with _$SignupProfileResponse {
  const factory SignupProfileResponse({
    @Default(false) bool success,
    String? message,
  }) = _SignupProfileResponse;

  factory SignupProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$SignupProfileResponseImpl.fromJson(json);
}
