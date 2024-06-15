// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BillProviderImpl _$$BillProviderImplFromJson(Map<String, dynamic> json) =>
    _$BillProviderImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$BillProviderImplToJson(_$BillProviderImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('image', instance.image);
  return val;
}
