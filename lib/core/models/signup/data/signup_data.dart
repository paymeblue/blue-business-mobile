import 'package:blue_business/core/models/signup/user/signup_user_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_data.freezed.dart';
part 'signup_data.g.dart';

@freezed
class SignupData with _$SignupData {
  const factory SignupData({
    required SignupUserData user,
  }) = _SignupData;

  factory SignupData.fromJson(Map<String, dynamic> json) =>
      _$SignupDataImpl.fromJson(json);
}
