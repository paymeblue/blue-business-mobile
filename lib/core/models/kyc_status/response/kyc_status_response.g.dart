// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kyc_status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KycStatusResponseImpl _$$KycStatusResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$KycStatusResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : KycStatusData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$KycStatusResponseImplToJson(
        _$KycStatusResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
