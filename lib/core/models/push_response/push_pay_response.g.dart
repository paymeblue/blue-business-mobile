// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_pay_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PushPayResponseImpl _$$PushPayResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PushPayResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : PushPayData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PushPayResponseImplToJson(
    _$PushPayResponseImpl instance) {
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
