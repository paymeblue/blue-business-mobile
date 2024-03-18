// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_staff_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateStaffResponseImpl _$$CreateStaffResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateStaffResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$CreateStaffResponseImplToJson(
    _$CreateStaffResponseImpl instance) {
  final val = <String, dynamic>{
    'status': instance.status,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  return val;
}
