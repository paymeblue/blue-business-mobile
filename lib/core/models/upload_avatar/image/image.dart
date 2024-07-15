import 'package:freezed_annotation/freezed_annotation.dart';

part 'image.freezed.dart';
part 'image.g.dart';

@freezed
class UserImage with _$UserImage {
  const factory UserImage({
    required int id,
    required String displayPicture,
  }) = _UserImage;

  factory UserImage.fromJson(Map<String, dynamic> json) =>
      _$UserImageImpl.fromJson(json);
}
