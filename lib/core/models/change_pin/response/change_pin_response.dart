import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_pin_response.freezed.dart';
part 'change_pin_response.g.dart';

@freezed
abstract class ChangePinResponse with _$ChangePinResponse {
  const factory ChangePinResponse({
    @Default("fail") String status,
    String? message,
  }) = _ChangePinResponse;

  factory ChangePinResponse.fromJson(Map<String, dynamic> json) =>
      _$ChangePinResponseFromJson(json);
}
