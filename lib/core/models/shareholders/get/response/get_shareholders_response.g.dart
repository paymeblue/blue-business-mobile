// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_shareholders_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetShareholdersResponseImpl _$$GetShareholdersResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetShareholdersResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Shareholders.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetShareholdersResponseImplToJson(
    _$GetShareholdersResponseImpl instance) {
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
