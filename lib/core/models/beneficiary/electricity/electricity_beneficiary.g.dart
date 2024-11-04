// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'electricity_beneficiary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ElectricityBeneficiaryImpl _$$ElectricityBeneficiaryImplFromJson(
        Map<String, dynamic> json) =>
    _$ElectricityBeneficiaryImpl(
      id: (json['id'] as num?)?.toInt(),
      receiver: json['receiver'] as String,
      meterType: json['meter_type'] as String,
      providerId: (json['provider_id'] as num).toInt(),
      customerName: json['customer_name'] as String,
      customerInfo: json['customer_info'] as String,
      provider: json['provider'] as String,
      serviceCharge: (json['service_charge'] as num?)?.toInt() ?? 100,
      minimumAmount: json['minimum_amount'] as String? ?? "0.0",
      state: json['state'] as String,
      tag: json['tag'] as String?,
      isOnline: json['is_online'] as String? ?? "false",
    );

Map<String, dynamic> _$$ElectricityBeneficiaryImplToJson(
    _$ElectricityBeneficiaryImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['receiver'] = instance.receiver;
  val['meter_type'] = instance.meterType;
  val['provider_id'] = instance.providerId;
  val['customer_name'] = instance.customerName;
  val['customer_info'] = instance.customerInfo;
  val['provider'] = instance.provider;
  val['service_charge'] = instance.serviceCharge;
  val['minimum_amount'] = instance.minimumAmount;
  val['state'] = instance.state;
  writeNotNull('tag', instance.tag);
  val['is_online'] = instance.isOnline;
  return val;
}
