// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_shareholders_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateShareholdersResponse _$CreateShareholdersResponseFromJson(
  Map<String, dynamic> json,
) => _CreateShareholdersResponse(
  status: json['status'] as String? ?? "fail",
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : CreateShareholdersData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CreateShareholdersResponseToJson(
  _CreateShareholdersResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': ?instance.message,
  'data': ?instance.data,
};
