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
    );

Map<String, dynamic> _$$VerifiedReceiverRequestImplToJson(
    _$VerifiedReceiverRequestImpl instance) {
  final val = <String, dynamic>{
    'transaction_id': instance.transactionId,
    'receiver': instance.receiver,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('receiver_name', instance.receiverName);
  return val;
}
