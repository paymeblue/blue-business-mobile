// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_payout_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SetPayoutResponseImpl _$$SetPayoutResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SetPayoutResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : WithdrawalAccount.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SetPayoutResponseImplToJson(
        _$SetPayoutResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      if (instance.message case final value?) 'message': value,
      if (instance.data case final value?) 'data': value,
    };
