// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_reason_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetReasonResponse _$GetReasonResponseFromJson(Map<String, dynamic> json) =>
    _GetReasonResponse(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Reason.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetReasonResponseToJson(_GetReasonResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': ?instance.message,
      'data': ?instance.data,
    };
