// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'withdraw_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WithdrawRequestImpl _$$WithdrawRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$WithdrawRequestImpl(
      paymentMode: json['payment_mode'] as String? ?? "withdrawal",
      amount: json['amount'] as String,
      passcode: json['passcode'] as String,
    );

Map<String, dynamic> _$$WithdrawRequestImplToJson(
        _$WithdrawRequestImpl instance) =>
    <String, dynamic>{
      'payment_mode': instance.paymentMode,
      'amount': instance.amount,
      'passcode': instance.passcode,
    };
