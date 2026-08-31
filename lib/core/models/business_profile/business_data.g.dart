// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BusinessData _$BusinessDataFromJson(Map<String, dynamic> json) =>
    _BusinessData(
      name: json['name'] as String,
      cacNumber: json['cac_number'] as String,
      category: json['category'] as String,
    );

Map<String, dynamic> _$BusinessDataToJson(_BusinessData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'cac_number': instance.cacNumber,
      'category': instance.category,
    };
