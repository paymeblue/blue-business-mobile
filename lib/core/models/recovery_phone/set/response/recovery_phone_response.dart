import 'package:freezed_annotation/freezed_annotation.dart';

part 'recovery_phone_response.freezed.dart';
part 'recovery_phone_response.g.dart';

@freezed
class SetRecoveryPhoneResponse with _$SetRecoveryPhoneResponse {
  const factory SetRecoveryPhoneResponse({
    @Default(false) bool success,
    String? message,
  }) = _SetRecoveryPhoneResponse;

  factory SetRecoveryPhoneResponse.fromJson(Map<String, dynamic> json) =>
      _$SetRecoveryPhoneResponseImpl.fromJson(json);
}
