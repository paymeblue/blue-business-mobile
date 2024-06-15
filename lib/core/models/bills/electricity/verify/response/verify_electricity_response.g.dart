// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_electricity_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyElectricityResponseImpl _$$VerifyElectricityResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyElectricityResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : VerifyElectricityData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VerifyElectricityResponseImplToJson(
    _$VerifyElectricityResponseImpl instance) {
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
