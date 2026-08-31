import 'package:freezed_annotation/freezed_annotation.dart';

part 'recover_phone_response.freezed.dart';
part 'recover_phone_response.g.dart';

@freezed
abstract class SendNewPhoneResponse with _$SendNewPhoneResponse {
  const factory SendNewPhoneResponse({
    @Default("fail") String status,
    String? message,
  }) = _SendNewPhoneResponse;

  factory SendNewPhoneResponse.fromJson(Map<String, dynamic> json) =>
      _$SendNewPhoneResponseFromJson(json);
}
