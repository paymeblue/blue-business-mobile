// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_dash_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BusinessDashResponseImpl _$$BusinessDashResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BusinessDashResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : BusinessDashData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BusinessDashResponseImplToJson(
    _$BusinessDashResponseImpl instance) {
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
