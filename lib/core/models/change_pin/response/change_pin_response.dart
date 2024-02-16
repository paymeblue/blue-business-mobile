import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_pin_response.freezed.dart';
part 'change_pin_response.g.dart';

@freezed
class ChangePinResponse with _$ChangePinResponse {
  const factory ChangePinResponse({
    @Default(false) bool success,
    String? message,
  }) = _ChangePinResponse;

  factory ChangePinResponse.fromJson(Map<String, dynamic> json) =>
      _$ChangePinResponseImpl.fromJson(json);
}
