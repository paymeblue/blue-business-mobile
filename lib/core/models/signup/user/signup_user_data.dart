import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_user_data.freezed.dart';
part 'signup_user_data.g.dart';

@freezed
class SignupUserData with _$SignupUserData {
  const factory SignupUserData({
    required int id,
    required String phone,
    required int level,
    required String createdAt,
  }) = _SignupUserData;

  factory SignupUserData.fromJson(Map<String, dynamic> json) =>
      _$SignupUserDataImpl.fromJson(json);
}
