// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_shareholders_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateShareholdersDataImpl _$$CreateShareholdersDataImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateShareholdersDataImpl(
      name: json['name'] as String,
      bvn: json['bvn'] as String,
      id: (json['id'] as num).toInt(),
      verified: json['verified'] as bool? ?? false,
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$$CreateShareholdersDataImplToJson(
    _$CreateShareholdersDataImpl instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'bvn': instance.bvn,
    'id': instance.id,
    'verified': instance.verified,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('created_at', instance.createdAt);
  return val;
}
