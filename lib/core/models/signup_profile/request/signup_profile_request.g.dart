// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_profile_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignupProfileRequestImpl _$$SignupProfileRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$SignupProfileRequestImpl(
      userId: json['user_id'] as String? ?? "0",
      firstName: json['first_name'] as String? ?? "",
      lastName: json['last_name'] as String? ?? "",
      middleName: json['middle_name'] as String?,
      password: json['password'] as String? ?? "",
      passwordConfirmation: json['password_confirmation'] as String? ?? "",
      passcode: json['passcode'] as String? ?? "",
    );

Map<String, dynamic> _$$SignupProfileRequestImplToJson(
    _$SignupProfileRequestImpl instance) {
  final val = <String, dynamic>{
    'user_id': instance.userId,
    'first_name': instance.firstName,
    'last_name': instance.lastName,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('middle_name', instance.middleName);
  val['password'] = instance.password;
  val['password_confirmation'] = instance.passwordConfirmation;
  val['passcode'] = instance.passcode;
  return val;
}
