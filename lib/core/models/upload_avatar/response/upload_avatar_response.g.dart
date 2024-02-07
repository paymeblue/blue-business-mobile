// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_avatar_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UploadAvatarResponseImpl _$$UploadAvatarResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UploadAvatarResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : UploadAvatarResponseData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UploadAvatarResponseImplToJson(
    _$UploadAvatarResponseImpl instance) {
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
