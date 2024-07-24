import 'package:freezed_annotation/freezed_annotation.dart';

part 'recover_phone_request.freezed.dart';
part 'recover_phone_request.g.dart';

@freezed
class SendRecoverPinRequest with _$SendRecoverPinRequest {
  const factory SendRecoverPinRequest({
    String? recoveryPhone,
    @Default("recovery-phone") String validationMode,
    String? securityAnswer,
  }) = _SendRecoverPinRequest;

  factory SendRecoverPinRequest.fromJson(Map<String, dynamic> json) =>
      _$SendRecoverPinRequestImpl.fromJson(json);
}
