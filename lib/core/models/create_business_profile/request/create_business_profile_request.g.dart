// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_business_profile_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateBusinessProfileRequestImpl _$$CreateBusinessProfileRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateBusinessProfileRequestImpl(
      userId: (json['user_id'] as num).toInt(),
      name: json['name'] as String,
      categoryId: (json['category_id'] as num).toInt(),
      cacNumber: json['cac_number'] as String,
      staffSize: json['staff_size'] as String,
    );

Map<String, dynamic> _$$CreateBusinessProfileRequestImplToJson(
        _$CreateBusinessProfileRequestImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'name': instance.name,
      'category_id': instance.categoryId,
      'cac_number': instance.cacNumber,
      'staff_size': instance.staffSize,
    };
