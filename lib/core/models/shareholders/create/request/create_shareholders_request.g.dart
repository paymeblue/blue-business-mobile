// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_shareholders_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateShareholdersRequest _$CreateShareholdersRequestFromJson(
  Map<String, dynamic> json,
) => _CreateShareholdersRequest(
  name: json['name'] as String,
  bvn: json['bvn'] as String,
  businessId: (json['business_id'] as num).toInt(),
  userId: (json['user_id'] as num).toInt(),
);

Map<String, dynamic> _$CreateShareholdersRequestToJson(
  _CreateShareholdersRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'bvn': instance.bvn,
  'business_id': instance.businessId,
  'user_id': instance.userId,
};
