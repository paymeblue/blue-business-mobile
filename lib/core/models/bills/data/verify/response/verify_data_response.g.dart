// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyDataResponseImpl _$$VerifyDataResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyDataResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : VerifyDataData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VerifyDataResponseImplToJson(
    _$VerifyDataResponseImpl instance) {
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
