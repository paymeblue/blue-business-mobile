import 'package:blue_business/core/models/upload_avatar/data/upload_avatar_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_avatar_response.freezed.dart';
part 'upload_avatar_response.g.dart';

@freezed
class UploadAvatarResponse with _$UploadAvatarResponse {
  const factory UploadAvatarResponse(
      {@Default("fail") String status,
      String? message,
      UploadAvatarResponseData? data}) = _UploadAvatarResponse;

  factory UploadAvatarResponse.fromJson(Map<String, dynamic> json) =>
      _$UploadAvatarResponseImpl.fromJson(json);
}
