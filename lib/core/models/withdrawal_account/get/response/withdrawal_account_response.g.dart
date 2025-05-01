// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'withdrawal_account_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WithdrawalAccountResponseImpl _$$WithdrawalAccountResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$WithdrawalAccountResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : WithdrawalAccount.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WithdrawalAccountResponseImplToJson(
        _$WithdrawalAccountResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      if (instance.message case final value?) 'message': value,
      if (instance.data case final value?) 'data': value,
    };
