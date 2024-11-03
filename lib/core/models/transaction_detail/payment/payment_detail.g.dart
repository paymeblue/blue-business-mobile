// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentDetailImpl _$$PaymentDetailImplFromJson(Map<String, dynamic> json) =>
    _$PaymentDetailImpl(
      id: json['id'] as String?,
      amount: json['amount'] as String,
      receiver: json['receiver'] as String,
      details: json['details'] as String,
      paymentMode: json['payment_mode'] as String,
      createdAt: json['created_at'] as String,
      transactionId: json['transaction_id'] as String,
      service: json['service'] as String? ?? "payment",
      status: json['status'] as String? ?? "pending",
      narration: json['narration'] as String?,
      balanceBefore: json['balance_before'] as String? ?? "0.00",
      balanceAfter: json['balance_after'] as String? ?? "0.00",
    );

Map<String, dynamic> _$$PaymentDetailImplToJson(_$PaymentDetailImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['amount'] = instance.amount;
  val['receiver'] = instance.receiver;
  val['details'] = instance.details;
  val['payment_mode'] = instance.paymentMode;
  val['created_at'] = instance.createdAt;
  val['transaction_id'] = instance.transactionId;
  val['service'] = instance.service;
  val['status'] = instance.status;
  writeNotNull('narration', instance.narration);
  val['balance_before'] = instance.balanceBefore;
  val['balance_after'] = instance.balanceAfter;
  return val;
}
