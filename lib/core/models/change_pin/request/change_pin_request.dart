import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_pin_request.freezed.dart';
part 'change_pin_request.g.dart';

@freezed
abstract class ChangePinRequest with _$ChangePinRequest {
  const factory ChangePinRequest({
    required String oldPin,
    required String newPin,
    required String confirmPin,
  }) = _ChangePinRequest;

  factory ChangePinRequest.fromJson(Map<String, dynamic> json) =>
      _$ChangePinRequestFromJson(json);
}
