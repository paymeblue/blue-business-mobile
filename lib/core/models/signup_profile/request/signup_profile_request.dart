import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_profile_request.freezed.dart';
part 'signup_profile_request.g.dart';

@freezed
class SignupProfileRequest with _$SignupProfileRequest {
  const factory SignupProfileRequest({
    @Default("0") String userId,
    @Default("") String firstName,
    @Default("") String lastName,
    String? middleName,
    @Default("") String password,
    @Default("") String passwordConfirmation,
    @Default("") String passcode,
  }) = _SignupProfileRequest;

  factory SignupProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$SignupProfileRequestImpl.fromJson(json);
}
