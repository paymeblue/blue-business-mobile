// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verified_receiver.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifiedReceiverImpl _$$VerifiedReceiverImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifiedReceiverImpl(
      id: json['id'] as int,
      userId: json['userId'] as int?,
      walletCode: json['walletCode'] as String?,
      receiverName: json['receiverName'] as String,
      phone: json['phone'] as String,
      amount: json['amount'] as String,
      charge: json['charge'] as int,
    );

Map<String, dynamic> _$$VerifiedReceiverImplToJson(
        _$VerifiedReceiverImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'walletCode': instance.walletCode,
      'receiverName': instance.receiverName,
      'phone': instance.phone,
      'amount': instance.amount,
      'charge': instance.charge,
    };
