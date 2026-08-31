// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_payout_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifyPayoutResponse _$VerifyPayoutResponseFromJson(
  Map<String, dynamic> json,
) => _VerifyPayoutResponse(
  status: json['status'] as String? ?? "fail",
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : VerifyPayoutData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$VerifyPayoutResponseToJson(
  _VerifyPayoutResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': ?instance.message,
  'data': ?instance.data,
};
