import 'package:blue_business/core/models/refresh_token/token/token.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_token_data.freezed.dart';
part 'refresh_token_data.g.dart';

@freezed
class RefreshTokenData with _$RefreshTokenData {
  const factory RefreshTokenData({
    required RefreshToken token,
  }) = _RefreshTokenData;

  factory RefreshTokenData.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenDataImpl.fromJson(json);
}
