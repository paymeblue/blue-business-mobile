// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserImage _$UserImageFromJson(Map<String, dynamic> json) => _UserImage(
  id: (json['id'] as num).toInt(),
  displayPicture: json['display_picture'] as String,
);

Map<String, dynamic> _$UserImageToJson(_UserImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'display_picture': instance.displayPicture,
    };
