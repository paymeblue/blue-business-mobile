// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'power_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PowerDetailsImpl _$$PowerDetailsImplFromJson(Map<String, dynamic> json) =>
    _$PowerDetailsImpl(
      id: (json['id'] as num?)?.toInt(),
      amount: json['amount'] as String,
      serviceCharge: json['service_charge'] as String,
      transactionId: json['transaction_id'] as String,
      provider: json['provider'] as String,
      createdAt: json['created_at'] as String,
      receiver: json['receiver'] as String,
      service: json['service'] as String? ?? "power",
      status: json['status'] as String? ?? "successful",
      token: json['token'] as String?,
      balanceBefore: json['balance_before'] as String? ?? "0.00",
      balanceAfter: json['balance_after'] as String? ?? "0.00",
      units: json['units'] as String? ?? "0.0",
    );

Map<String, dynamic> _$$PowerDetailsImplToJson(_$PowerDetailsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['amount'] = instance.amount;
  val['service_charge'] = instance.serviceCharge;
  val['transaction_id'] = instance.transactionId;
  val['provider'] = instance.provider;
  val['created_at'] = instance.createdAt;
  val['receiver'] = instance.receiver;
  val['service'] = instance.service;
  val['status'] = instance.status;
  writeNotNull('token', instance.token);
  val['balance_before'] = instance.balanceBefore;
  val['balance_after'] = instance.balanceAfter;
  val['units'] = instance.units;
  return val;
}
