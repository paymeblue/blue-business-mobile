// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'power_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PowerDetailsImpl _$$PowerDetailsImplFromJson(Map<String, dynamic> json) =>
    _$PowerDetailsImpl(
      id: (json['id'] as num).toInt(),
      amount: json['amount'] as String,
      serviceCharge: json['service_charge'] as String,
      transactionId: json['transaction_id'] as String,
      provider: json['provider'] as String,
      createdAt: json['created_at'] as String,
      receiver: json['receiver'] as String,
      service: json['service'] as String? ?? "power",
      status: json['status'] as String? ?? "successful",
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$PowerDetailsImplToJson(_$PowerDetailsImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'amount': instance.amount,
    'service_charge': instance.serviceCharge,
    'transaction_id': instance.transactionId,
    'provider': instance.provider,
    'created_at': instance.createdAt,
    'receiver': instance.receiver,
    'service': instance.service,
    'status': instance.status,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('token', instance.token);
  return val;
}
