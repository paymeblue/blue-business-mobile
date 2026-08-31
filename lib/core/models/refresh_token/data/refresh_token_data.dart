import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_token_data.freezed.dart';
part 'refresh_token_data.g.dart';

@freezed
abstract class RefreshTokenData with _$RefreshTokenData {
  const factory RefreshTokenData({
    @Default("Bearer") String type,
    required String accessToken,
  }) = _RefreshTokenData;

  factory RefreshTokenData.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenDataFromJson(json);
}
