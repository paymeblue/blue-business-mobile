// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auto_withdrawal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AutoWithdrawalRequestImpl _$$AutoWithdrawalRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AutoWithdrawalRequestImpl(
      autoWithdrawalEnabled: json['auto_withdrawal_enabled'] as bool,
    );

Map<String, dynamic> _$$AutoWithdrawalRequestImplToJson(
        _$AutoWithdrawalRequestImpl instance) =>
    <String, dynamic>{
      'auto_withdrawal_enabled': instance.autoWithdrawalEnabled,
    };

_$AutoWithdrawalResponseImpl _$$AutoWithdrawalResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AutoWithdrawalResponseImpl(
      status: json['status'] as String? ?? 'fail',
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$AutoWithdrawalResponseImplToJson(
        _$AutoWithdrawalResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      if (instance.message case final value?) 'message': value,
    };
