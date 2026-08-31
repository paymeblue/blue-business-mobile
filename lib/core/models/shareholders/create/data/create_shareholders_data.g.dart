// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_shareholders_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateShareholdersData _$CreateShareholdersDataFromJson(
  Map<String, dynamic> json,
) => _CreateShareholdersData(
  name: json['name'] as String,
  bvn: json['bvn'] as String,
  id: (json['id'] as num).toInt(),
  verified: json['verified'] as bool? ?? false,
  createdAt: json['created_at'] as String?,
);

Map<String, dynamic> _$CreateShareholdersDataToJson(
  _CreateShareholdersData instance,
) => <String, dynamic>{
  'name': instance.name,
  'bvn': instance.bvn,
  'id': instance.id,
  'verified': instance.verified,
  'created_at': ?instance.createdAt,
};
