import 'package:freezed_annotation/freezed_annotation.dart';

part 'recovery_phone_request.freezed.dart';
part 'recovery_phone_request.g.dart';

@freezed
class SetRecoveryPhoneRequest with _$SetRecoveryPhoneRequest {
  const factory SetRecoveryPhoneRequest({
    required String phone,
    required String password,
  }) = _SetRecoveryPhoneRequest;

  factory SetRecoveryPhoneRequest.fromJson(Map<String, dynamic> json) =>
      _$SetRecoveryPhoneRequestImpl.fromJson(json);
}
