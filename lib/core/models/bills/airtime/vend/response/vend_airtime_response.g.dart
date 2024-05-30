// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vend_airtime_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VendAirtimeResponseImpl _$$VendAirtimeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$VendAirtimeResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : VendAirtimeData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VendAirtimeResponseImplToJson(
    _$VendAirtimeResponseImpl instance) {
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
