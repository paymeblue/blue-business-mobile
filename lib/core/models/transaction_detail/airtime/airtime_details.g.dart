// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'airtime_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AirtimeDetailsImpl _$$AirtimeDetailsImplFromJson(Map<String, dynamic> json) =>
    _$AirtimeDetailsImpl(
      id: (json['id'] as num?)?.toInt(),
      amount: json['amount'] as String,
      receiver: json['receiver'] as String,
      transactionId: json['transaction_id'] as String,
      provider: json['provider'] as String,
      createdAt: json['created_at'] as String,
      service: json['service'] as String? ?? "airtime",
      status: json['status'] as String? ?? "successful",
      balanceBefore: json['balance_before'] as String? ?? "0.00",
      balanceAfter: json['balance_after'] as String? ?? "0.00",
    );

Map<String, dynamic> _$$AirtimeDetailsImplToJson(
    _$AirtimeDetailsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['amount'] = instance.amount;
  val['receiver'] = instance.receiver;
  val['transaction_id'] = instance.transactionId;
  val['provider'] = instance.provider;
  val['created_at'] = instance.createdAt;
  val['service'] = instance.service;
  val['status'] = instance.status;
  val['balance_before'] = instance.balanceBefore;
  val['balance_after'] = instance.balanceAfter;
  return val;
}
