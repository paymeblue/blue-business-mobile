// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_avatar_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UploadAvatarResponseDataImpl _$$UploadAvatarResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$UploadAvatarResponseDataImpl(
      user: UserImage.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UploadAvatarResponseDataImplToJson(
        _$UploadAvatarResponseDataImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
    };
