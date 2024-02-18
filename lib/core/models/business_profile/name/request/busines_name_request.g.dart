// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'busines_name_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BusinessNameRequestImpl _$$BusinessNameRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$BusinessNameRequestImpl(
      name: json['name'] as String,
      categoryId: json['category_id'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$BusinessNameRequestImplToJson(
        _$BusinessNameRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'category_id': instance.categoryId,
      'description': instance.description,
    };
