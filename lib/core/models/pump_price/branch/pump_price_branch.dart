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
    int? statusCode,
    String? error,
    dynamic data,
    @Default('0') String id,
    @Default('0') String branchId,
    @Default(0) double amount,
    @Default('0:00') String opening,
    @Default('0:00') String closing,
    @Default(0) double longitude,
    @Default(0) double latitude,
    @Default('') String address,
    String? createdAt,
    String? updatedAt,
  }) = _CreatePumpPriceBranchResponse;

  factory CreatePumpPriceBranchResponse.fromJson(Map<String, dynamic> json) =>
      _$CreatePumpPriceBranchResponseImpl.fromJson(json);
}
