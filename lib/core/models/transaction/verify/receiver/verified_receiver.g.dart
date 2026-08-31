// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verified_receiver.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifiedReceiver _$VerifiedReceiverFromJson(Map<String, dynamic> json) =>
    _VerifiedReceiver(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      walletCode: json['wallet_code'] as String?,
      receiverName: json['receiver_name'] as String,
      phone: json['phone'] as String,
      amount: json['amount'] as String,
      charge: (json['charge'] as num).toDouble(),
    );

Map<String, dynamic> _$VerifiedReceiverToJson(_VerifiedReceiver instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': ?instance.userId,
      'wallet_code': ?instance.walletCode,
      'receiver_name': instance.receiverName,
      'phone': instance.phone,
      'amount': instance.amount,
      'charge': instance.charge,
    };
