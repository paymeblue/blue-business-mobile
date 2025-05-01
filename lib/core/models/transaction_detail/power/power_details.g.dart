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

Map<String, dynamic> _$$PowerDetailsImplToJson(_$PowerDetailsImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      'amount': instance.amount,
      'service_charge': instance.serviceCharge,
      'transaction_id': instance.transactionId,
      'provider': instance.provider,
      'created_at': instance.createdAt,
      'receiver': instance.receiver,
      'service': instance.service,
      'status': instance.status,
      if (instance.token case final value?) 'token': value,
      'balance_before': instance.balanceBefore,
      'balance_after': instance.balanceAfter,
      'units': instance.units,
    };
