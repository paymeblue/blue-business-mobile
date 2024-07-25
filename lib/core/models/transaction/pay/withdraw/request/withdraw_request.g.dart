// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'withdraw_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WithdrawRequestImpl _$$WithdrawRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$WithdrawRequestImpl(
      amount: json['amount'] as String,
      paymentMode: json['payment_mode'] as String? ?? "withdrawal",
      passcode: json['passcode'] as String,
    );

Map<String, dynamic> _$$WithdrawRequestImplToJson(
        _$WithdrawRequestImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'payment_mode': instance.paymentMode,
      'passcode': instance.passcode,
    };
