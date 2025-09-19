import 'package:freezed_annotation/freezed_annotation.dart';

part 'vend_electricity_request.freezed.dart';
part 'vend_electricity_request.g.dart';

@freezed
abstract class VendElectricityRequest with _$VendElectricityRequest {
  const factory VendElectricityRequest({
    required String transactionId,
    required String passcode,
    required String amount,
  }) = _VendElectricityRequest;

  factory VendElectricityRequest.fromJson(Map<String, dynamic> json) =>
      _$VendElectricityRequestFromJson(json);
}
