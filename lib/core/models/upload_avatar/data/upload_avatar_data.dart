import 'package:blue_business/core/models/upload_avatar/image/image.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_avatar_data.freezed.dart';
part 'upload_avatar_data.g.dart';

@freezed
abstract class UploadAvatarResponseData with _$UploadAvatarResponseData {
  const factory UploadAvatarResponseData({required UserImage user}) =
      _UploadAvatarResponseData;

  factory UploadAvatarResponseData.fromJson(Map<String, dynamic> json) =>
      _$UploadAvatarResponseDataFromJson(json);
}
