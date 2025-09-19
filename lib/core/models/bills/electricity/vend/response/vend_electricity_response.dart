import 'package:blue_business/core/models/bills/electricity/vend/data/vend_electricity_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vend_electricity_response.freezed.dart';
part 'vend_electricity_response.g.dart';

@freezed
abstract class VendElectricityResponse with _$VendElectricityResponse {
  const factory VendElectricityResponse({
    @Default("fail") String status,
    String? message,
    VendElectricityData? data,
  }) = _VendElectricityResponse;

  factory VendElectricityResponse.fromJson(Map<String, dynamic> json) =>
      _$VendElectricityResponseFromJson(json);
}
