// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verified_receiver.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifiedReceiverImpl _$$VerifiedReceiverImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifiedReceiverImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      walletCode: json['wallet_code'] as String?,
      receiverName: json['receiver_name'] as String,
      phone: json['phone'] as String,
      amount: json['amount'] as String,
      charge: (json['charge'] as num).toDouble(),
    );

Map<String, dynamic> _$$VerifiedReceiverImplToJson(
        _$VerifiedReceiverImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      if (instance.userId case final value?) 'user_id': value,
      if (instance.walletCode case final value?) 'wallet_code': value,
      'receiver_name': instance.receiverName,
      'phone': instance.phone,
      'amount': instance.amount,
      'charge': instance.charge,
    };
