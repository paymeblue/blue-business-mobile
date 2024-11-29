// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataDetailsImpl _$$DataDetailsImplFromJson(Map<String, dynamic> json) =>
    _$DataDetailsImpl(
      id: (json['id'] as num?)?.toInt(),
      amount: json['amount'] as String,
      receiver: json['receiver'] as String,
      transactionId: json['transaction_id'] as String,
      provider: json['provider'] as String,
      package: json['package'] as String,
      paymentMode: json['payment_mode'] as String,
      createdAt: json['created_at'] as String,
      service: json['service'] as String? ?? "data",
      status: json['status'] as String? ?? "successful",
      balanceBefore: json['balance_before'] as String? ?? "0.00",
      balanceAfter: json['balance_after'] as String? ?? "0.00",
    );

Map<String, dynamic> _$$DataDetailsImplToJson(_$DataDetailsImpl instance) {
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
  val['package'] = instance.package;
  val['payment_mode'] = instance.paymentMode;
  val['created_at'] = instance.createdAt;
  val['service'] = instance.service;
  val['status'] = instance.status;
  val['balance_before'] = instance.balanceBefore;
  val['balance_after'] = instance.balanceAfter;
  return val;
}
