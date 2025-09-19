// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_shareholders_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetShareholdersResponse _$GetShareholdersResponseFromJson(
  Map<String, dynamic> json,
) => _GetShareholdersResponse(
  status: json['status'] as String? ?? "fail",
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => Shareholders.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetShareholdersResponseToJson(
  _GetShareholdersResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': ?instance.message,
  'data': ?instance.data,
};
