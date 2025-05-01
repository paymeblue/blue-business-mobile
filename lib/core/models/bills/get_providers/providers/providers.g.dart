// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BillProviderImpl _$$BillProviderImplFromJson(Map<String, dynamic> json) =>
    _$BillProviderImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$BillProviderImplToJson(_$BillProviderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      if (instance.image case final value?) 'image': value,
    };
