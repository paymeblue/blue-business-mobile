import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_new_phone_response.freezed.dart';
part 'verify_new_phone_response.g.dart';

@freezed
class VerifyNewPhoneResponse with _$VerifyNewPhoneResponse {
  const factory VerifyNewPhoneResponse({
    @Default("fail") String status,
    String? message,
  }) = _VerifyNewPhoneResponse;

  factory VerifyNewPhoneResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifyNewPhoneResponseImpl.fromJson(json);
}
