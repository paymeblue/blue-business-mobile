import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_new_phone_request.freezed.dart';
part 'verify_new_phone_request.g.dart';

@freezed
abstract class VerifyNewPhoneRequest with _$VerifyNewPhoneRequest {
  const factory VerifyNewPhoneRequest({
    required String otp,
    required String reference,
  }) = _VerifyNewPhoneRequest;

  factory VerifyNewPhoneRequest.fromJson(Map<String, dynamic> json) =>
      _$VerifyNewPhoneRequestFromJson(json);
}
