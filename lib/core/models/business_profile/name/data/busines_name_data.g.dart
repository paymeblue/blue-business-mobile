// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'busines_name_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BusinessNameDataImpl _$$BusinessNameDataImplFromJson(
        Map<String, dynamic> json) =>
    _$BusinessNameDataImpl(
      id: json['id'] as int,
      userId: json['user_id'] as int,
      level: json['level'] as int,
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$$BusinessNameDataImplToJson(
        _$BusinessNameDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'level': instance.level,
      'created_at': instance.createdAt,
    };
