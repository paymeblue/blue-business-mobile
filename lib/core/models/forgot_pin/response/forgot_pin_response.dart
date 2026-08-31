import 'package:blue_business/core/models/forgot_pin/data/forgot_pin_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_pin_response.freezed.dart';
part 'forgot_pin_response.g.dart';

@freezed
abstract class ForgotPinResponse with _$ForgotPinResponse {
  const factory ForgotPinResponse({
    @Default("fail") String status,
    String? message,
    ForgotPinData? data,
  }) = _ForgotPinResponse;

  factory ForgotPinResponse.fromJson(Map<String, dynamic> json) =>
      _$ForgotPinResponseFromJson(json);
}
