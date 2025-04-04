// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_payout_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyPayoutResponseImpl _$$VerifyPayoutResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyPayoutResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : VerifyPayoutData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VerifyPayoutResponseImplToJson(
        _$VerifyPayoutResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      if (instance.message case final value?) 'message': value,
      if (instance.data case final value?) 'data': value,
    };
