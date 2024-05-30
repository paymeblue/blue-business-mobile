import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_electricity_request.freezed.dart';
part 'verify_electricity_request.g.dart';

@freezed
class VerifyElectricityRequest with _$VerifyElectricityRequest {
  const factory VerifyElectricityRequest({
    required String receiver,
    required String meterType,
    required String providerId,
  }) = _VerifyElectricityRequest;

  factory VerifyElectricityRequest.fromJson(Map<String, dynamic> json) =>
      _$VerifyElectricityRequestImpl.fromJson(json);
}
