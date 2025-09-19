// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'withdraw_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WithdrawRequest _$WithdrawRequestFromJson(Map<String, dynamic> json) =>
    _WithdrawRequest(
      amount: json['amount'] as String,
      paymentMode: json['payment_mode'] as String? ?? "withdrawal",
      passcode: json['passcode'] as String,
    );

Map<String, dynamic> _$WithdrawRequestToJson(_WithdrawRequest instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'payment_mode': instance.paymentMode,
      'passcode': instance.passcode,
    };
