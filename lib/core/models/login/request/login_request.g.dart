// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginRequestImpl _$$LoginRequestImplFromJson(Map<String, dynamic> json) =>
    _$LoginRequestImpl(
      fcmToken: json['fcm_token'] as String? ?? "",
      type: json['type'] as String? ?? "mobile",
      phone: json['phone'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$LoginRequestImplToJson(_$LoginRequestImpl instance) =>
    <String, dynamic>{
      'fcm_token': instance.fcmToken,
      'type': instance.type,
      'phone': instance.phone,
      'password': instance.password,
    };
