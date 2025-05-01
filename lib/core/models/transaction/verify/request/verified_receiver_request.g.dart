// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verified_receiver_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifiedReceiverRequestImpl _$$VerifiedReceiverRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifiedReceiverRequestImpl(
      transactionId: json['transaction_id'] as String,
      receiver: json['receiver'] as String,
      receiverName: json['receiver_name'] as String?,
      branchId: json['branch_id'] as String?,
    );

Map<String, dynamic> _$$VerifiedReceiverRequestImplToJson(
        _$VerifiedReceiverRequestImpl instance) =>
    <String, dynamic>{
      'transaction_id': instance.transactionId,
      'receiver': instance.receiver,
      if (instance.receiverName case final value?) 'receiver_name': value,
      if (instance.branchId case final value?) 'branch_id': value,
    };
