// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vend_electricity_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VendElectricityResponseImpl _$$VendElectricityResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$VendElectricityResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : VendElectricityData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VendElectricityResponseImplToJson(
    _$VendElectricityResponseImpl instance) {
  final val = <String, dynamic>{
    'status': instance.status,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  writeNotNull('data', instance.data);
  return val;
}
