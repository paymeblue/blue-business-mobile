// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoResponseImpl _$$TodoResponseImplFromJson(Map<String, dynamic> json) =>
    _$TodoResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : TodoData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TodoResponseImplToJson(_$TodoResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
