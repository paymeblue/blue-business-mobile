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
          : UserImage.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UploadAvatarResponseImplToJson(
        _$UploadAvatarResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      if (instance.message case final value?) 'message': value,
      if (instance.data case final value?) 'data': value,
    };
