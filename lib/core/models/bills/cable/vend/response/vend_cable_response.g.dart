// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vend_cable_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VendCableResponseImpl _$$VendCableResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$VendCableResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : VendCableData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VendCableResponseImplToJson(
    _$VendCableResponseImpl instance) {
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
