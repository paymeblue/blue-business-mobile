// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_profile_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignupProfileRequestImpl _$$SignupProfileRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$SignupProfileRequestImpl(
      firstName: json['firstName'] as String? ?? "",
      lastName: json['lastName'] as String? ?? "",
      middleName: json['middleName'] as String?,
      password: json['password'] as String? ?? "",
      passwordConfirmation: json['passwordConfirmation'] as String? ?? "",
      passcode: json['passcode'] as String? ?? "",
    );

Map<String, dynamic> _$$SignupProfileRequestImplToJson(
        _$SignupProfileRequestImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'middleName': instance.middleName,
      'password': instance.password,
      'passwordConfirmation': instance.passwordConfirmation,
      'passcode': instance.passcode,
    };
