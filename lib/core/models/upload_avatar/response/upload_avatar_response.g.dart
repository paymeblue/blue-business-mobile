// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_avatar_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UploadAvatarResponse _$UploadAvatarResponseFromJson(
  Map<String, dynamic> json,
) => _UploadAvatarResponse(
  status: json['status'] as String? ?? "fail",
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : UserImage.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$UploadAvatarResponseToJson(
  _UploadAvatarResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': ?instance.message,
  'data': ?instance.data,
};
