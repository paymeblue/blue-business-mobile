// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_reason_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetReasonResponseImpl _$$GetReasonResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetReasonResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Reason.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetReasonResponseImplToJson(
    _$GetReasonResponseImpl instance) {
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
