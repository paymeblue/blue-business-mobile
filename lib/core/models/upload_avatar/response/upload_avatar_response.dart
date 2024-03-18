import 'package:blue_business/core/models/upload_avatar/image/image.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_avatar_response.freezed.dart';
part 'upload_avatar_response.g.dart';

@freezed
class UploadAvatarResponse with _$UploadAvatarResponse {
  const factory UploadAvatarResponse(
      {@Default("fail") String status,
      String? message,
      UserImage? data}) = _UploadAvatarResponse;

  factory UploadAvatarResponse.fromJson(Map<String, dynamic> json) =>
      _$UploadAvatarResponseImpl.fromJson(json);
}
