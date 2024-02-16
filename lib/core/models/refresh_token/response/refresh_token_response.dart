import 'package:blue_business/core/models/refresh_token/data/refresh_token_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_token_response.freezed.dart';
part 'refresh_token_response.g.dart';

@freezed
class RefreshTokenResponse with _$RefreshTokenResponse {
  const factory RefreshTokenResponse({
    @Default(false) bool success,
    String? message,
    RefreshTokenData? data,
  }) = _RefreshTokenResponse;

  factory RefreshTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenResponseImpl.fromJson(json);
}
