import 'package:freezed_annotation/freezed_annotation.dart';

part 'recover_phone_response.freezed.dart';
part 'recover_phone_response.g.dart';

@freezed
class SendNewPhoneResponse with _$SendNewPhoneResponse {
  const factory SendNewPhoneResponse({
    @Default(false) bool success,
    String? message,
  }) = _SendNewPhoneResponse;

  factory SendNewPhoneResponse.fromJson(Map<String, dynamic> json) =>
      _$SendNewPhoneResponseImpl.fromJson(json);
}
