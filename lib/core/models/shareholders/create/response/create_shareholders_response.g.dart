// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_shareholders_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateShareholdersResponseImpl _$$CreateShareholdersResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateShareholdersResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : CreateShareholdersData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateShareholdersResponseImplToJson(
    _$CreateShareholdersResponseImpl instance) {
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
