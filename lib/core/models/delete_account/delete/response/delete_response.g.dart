// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeleteResponseImpl _$$DeleteResponseImplFromJson(Map<String, dynamic> json) =>
    _$DeleteResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$DeleteResponseImplToJson(
        _$DeleteResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
