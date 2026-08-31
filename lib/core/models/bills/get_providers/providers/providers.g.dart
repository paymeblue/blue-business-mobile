// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BillProvider _$BillProviderFromJson(Map<String, dynamic> json) =>
    _BillProvider(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$BillProviderToJson(_BillProvider instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': ?instance.image,
    };
