// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_shareholders_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddShareholdersRequest _$AddShareholdersRequestFromJson(
  Map<String, dynamic> json,
) => _AddShareholdersRequest(
  bvn: json['bvn'] as String,
  shareholderId: (json['shareholder_id'] as num).toInt(),
  userId: (json['user_id'] as num).toInt(),
);

Map<String, dynamic> _$AddShareholdersRequestToJson(
  _AddShareholdersRequest instance,
) => <String, dynamic>{
  'bvn': instance.bvn,
  'shareholder_id': instance.shareholderId,
  'user_id': instance.userId,
};
