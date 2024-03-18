// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignupUserDataImpl _$$SignupUserDataImplFromJson(Map<String, dynamic> json) =>
    _$SignupUserDataImpl(
      id: json['id'] as int,
      phone: json['phone'] as String,
      level: json['level'] as int,
      createdAt: json['created_at'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$SignupUserDataImplToJson(
        _$SignupUserDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phone': instance.phone,
      'level': instance.level,
      'created_at': instance.createdAt,
      'type': instance.type,
    };
