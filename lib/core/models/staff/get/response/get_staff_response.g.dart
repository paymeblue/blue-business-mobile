// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_staff_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetStaffResponseImpl _$$GetStaffResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetStaffResponseImpl(
      status: json['status'] as String? ?? "fail",
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Staff.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$GetStaffResponseImplToJson(
    _$GetStaffResponseImpl instance) {
  final val = <String, dynamic>{
    'status': instance.status,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  writeNotNull('message', instance.message);
  return val;
}
