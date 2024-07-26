// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pay_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PayDataImpl _$$PayDataImplFromJson(Map<String, dynamic> json) =>
    _$PayDataImpl(
      transactionId: json['transaction_id'] as String,
      amount: json['amount'] as String,
      receiverName: json['receiver_name'] as String,
      receiverWallet: json['receiver_wallet'] as String,
      reference: json['reference'] as String?,
      status: json['status'] as String,
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$$PayDataImplToJson(_$PayDataImpl instance) {
  final val = <String, dynamic>{
    'transaction_id': instance.transactionId,
    'amount': instance.amount,
    'receiver_name': instance.receiverName,
    'receiver_wallet': instance.receiverWallet,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('reference', instance.reference);
  val['status'] = instance.status;
  val['created_at'] = instance.createdAt;
  return val;
}
