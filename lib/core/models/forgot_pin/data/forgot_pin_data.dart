import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_pin_data.freezed.dart';
part 'forgot_pin_data.g.dart';

@freezed
class ForgotPinData with _$ForgotPinData {
  const factory ForgotPinData({
    required String phone,
  }) = _ForgotPinData;

  factory ForgotPinData.fromJson(Map<String, dynamic> json) =>
      _$ForgotPinDataImpl.fromJson(json);
}
