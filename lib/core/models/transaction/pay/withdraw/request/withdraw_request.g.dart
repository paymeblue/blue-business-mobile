// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'withdraw_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WithdrawRequestImpl _$$WithdrawRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$WithdrawRequestImpl(
      paymentMode: json['paymentMode'] as String? ?? "withdrawal",
      amount: json['amount'] as String,
      passcode: json['passcode'] as String,
    );

Map<String, dynamic> _$$WithdrawRequestImplToJson(
        _$WithdrawRequestImpl instance) =>
    <String, dynamic>{
      'paymentMode': instance.paymentMode,
      'amount': instance.amount,
      'passcode': instance.passcode,
    };
