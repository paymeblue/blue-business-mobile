// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pay_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PayResponseImpl _$$PayResponseImplFromJson(Map<String, dynamic> json) =>
    _$PayResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : PayData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PayResponseImplToJson(_$PayResponseImpl instance) {
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
