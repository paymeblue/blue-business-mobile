import 'package:blue_business/core/models/recover_phone/add/data/recover_phone_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recover_phone_response.freezed.dart';
part 'recover_phone_response.g.dart';

@freezed
class SendNewPhoneResponse with _$SendNewPhoneResponse {
  const factory SendNewPhoneResponse({
    @Default("fail") String status,
    String? message,
    SendNewPhoneData? data,
  }) = _SendNewPhoneResponse;

  factory SendNewPhoneResponse.fromJson(Map<String, dynamic> json) =>
      _$SendNewPhoneResponseImpl.fromJson(json);
}
