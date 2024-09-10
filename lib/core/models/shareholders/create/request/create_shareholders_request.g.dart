// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_shareholders_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateShareholdersRequestImpl _$$CreateShareholdersRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateShareholdersRequestImpl(
      name: json['name'] as String,
      bvn: json['bvn'] as String,
      businessId: (json['business_id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
    );

Map<String, dynamic> _$$CreateShareholdersRequestImplToJson(
        _$CreateShareholdersRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'bvn': instance.bvn,
      'business_id': instance.businessId,
      'user_id': instance.userId,
    };
