// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_shareholders_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateShareholdersResponseImpl _$$CreateShareholdersResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateShareholdersResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : CreateShareholdersData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateShareholdersResponseImplToJson(
        _$CreateShareholdersResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      if (instance.message case final value?) 'message': value,
      if (instance.data case final value?) 'data': value,
    };
