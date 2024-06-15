// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vend_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VendDataResponseImpl _$$VendDataResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$VendDataResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : VendDataData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VendDataResponseImplToJson(
    _$VendDataResponseImpl instance) {
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
