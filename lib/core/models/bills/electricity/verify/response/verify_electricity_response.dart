import 'package:blue_business/core/models/bills/electricity/verify/data/verify_electricity_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_electricity_response.freezed.dart';
part 'verify_electricity_response.g.dart';

@freezed
class VerifyElectricityResponse with _$VerifyElectricityResponse {
  const factory VerifyElectricityResponse({
    @Default("fail") String status,
    String? message,
    VerifyElectricityData? data,
  }) = _VerifyElectricityResponse;

  factory VerifyElectricityResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifyElectricityResponseImpl.fromJson(json);
}
