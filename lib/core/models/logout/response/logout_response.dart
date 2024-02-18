import 'package:freezed_annotation/freezed_annotation.dart';

part 'logout_response.freezed.dart';
part 'logout_response.g.dart';

@freezed
class LogoutResponse with _$LogoutResponse {
  const factory LogoutResponse({
    @Default("fail") String status,
    String? message,
  }) = _LogoutResponse;

  factory LogoutResponse.fromJson(Map<String, dynamic> json) =>
      _$LogoutResponseImpl.fromJson(json);
}
