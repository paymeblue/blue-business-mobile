import 'package:freezed_annotation/freezed_annotation.dart';

part 'pump_price_branch.freezed.dart';
part 'pump_price_branch.g.dart';

@freezed
class CreatePumpPriceBranchRequest with _$CreatePumpPriceBranchRequest {
  const factory CreatePumpPriceBranchRequest({
    required String name,
    required int businessId,
    required String address,
    required double fuelPrice,
    required double latitude,
    required double longitude,
    required String opening,
    required String closing,
  }) = _CreatePumpPriceBranchRequest;

  factory CreatePumpPriceBranchRequest.fromJson(Map<String, dynamic> json) =>
      _$CreatePumpPriceBranchRequestImpl.fromJson(json);
}

@freezed
class CreatePumpPriceBranchResponse with _$CreatePumpPriceBranchResponse {
  const factory CreatePumpPriceBranchResponse({
    @Default('') String message,
    required int statusCode,
    String? error,
    dynamic data,
  }) = _CreatePumpPriceBranchResponse;

  factory CreatePumpPriceBranchResponse.fromJson(Map<String, dynamic> json) =>
      _$CreatePumpPriceBranchResponseImpl.fromJson(json);
}
