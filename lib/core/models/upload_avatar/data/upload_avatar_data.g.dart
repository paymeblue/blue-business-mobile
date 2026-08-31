// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_avatar_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UploadAvatarResponseData _$UploadAvatarResponseDataFromJson(
  Map<String, dynamic> json,
) => _UploadAvatarResponseData(
  user: UserImage.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$UploadAvatarResponseDataToJson(
  _UploadAvatarResponseData instance,
) => <String, dynamic>{'user': instance.user};
