// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_profile_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignupProfileRequestImpl _$$SignupProfileRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$SignupProfileRequestImpl(
      userId: json['userId'] as int? ?? 0,
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
      'userId': instance.userId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'middleName': instance.middleName,
      'password': instance.password,
      'passwordConfirmation': instance.passwordConfirmation,
      'passcode': instance.passcode,
    };
