// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verified_receiver_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifiedReceiverRequest _$VerifiedReceiverRequestFromJson(
  Map<String, dynamic> json,
) => _VerifiedReceiverRequest(
  transactionId: json['transaction_id'] as String,
  receiver: json['receiver'] as String,
  receiverName: json['receiver_name'] as String?,
  branchId: json['branch_id'] as String?,
);

Map<String, dynamic> _$VerifiedReceiverRequestToJson(
  _VerifiedReceiverRequest instance,
) => <String, dynamic>{
  'transaction_id': instance.transactionId,
  'receiver': instance.receiver,
  'receiver_name': ?instance.receiverName,
  'branch_id': ?instance.branchId,
};
