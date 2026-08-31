// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_payout_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SetPayoutResponse _$SetPayoutResponseFromJson(Map<String, dynamic> json) =>
    _SetPayoutResponse(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : WithdrawalAccount.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SetPayoutResponseToJson(_SetPayoutResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': ?instance.message,
      'data': ?instance.data,
    };
