// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_reason_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetReasonResponseImpl _$$GetReasonResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetReasonResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Reason.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetReasonResponseImplToJson(
        _$GetReasonResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      if (instance.message case final value?) 'message': value,
      if (instance.data case final value?) 'data': value,
    };
