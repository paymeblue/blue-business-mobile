// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'busines_name_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BusinessNameResponseImpl _$$BusinessNameResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BusinessNameResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : BusinessNameData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BusinessNameResponseImplToJson(
    _$BusinessNameResponseImpl instance) {
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
