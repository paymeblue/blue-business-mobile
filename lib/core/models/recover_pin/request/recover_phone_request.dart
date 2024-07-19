import 'package:freezed_annotation/freezed_annotation.dart';

part 'recover_phone_request.freezed.dart';
part 'recover_phone_request.g.dart';

@freezed
class SendPhoneRecoverPinRequest with _$SendPhoneRecoverPinRequest {
  const factory SendPhoneRecoverPinRequest({
    required String phone,
    @Default("recovery-phone") String validationMode,
  }) = _SendPhoneRecoverPinRequest;

  factory SendPhoneRecoverPinRequest.fromJson(Map<String, dynamic> json) =>
      _$SendPhoneRecoverPinRequestImpl.fromJson(json);
}
