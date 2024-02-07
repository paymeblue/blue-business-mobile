import 'package:freezed_annotation/freezed_annotation.dart';

part 'token.freezed.dart';
part 'token.g.dart';

@freezed
class RefreshToken with _$RefreshToken {
  const factory RefreshToken({
    @Default("Bearer") String type,
    required String accessToken,
  }) = _RefreshToken;

  factory RefreshToken.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenImpl.fromJson(json);
}
