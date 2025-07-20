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
    @Default('fail') String status,
    FillingStation? data,
  }) = _CreatePumpPriceBranchResponse;

  factory CreatePumpPriceBranchResponse.fromJson(Map<String, dynamic> json) =>
      _$CreatePumpPriceBranchResponseImpl.fromJson(json);
}

@freezed
class GetFillingStationsResponse with _$GetFillingStationsResponse {
  const factory GetFillingStationsResponse({
    @Default('') String message,
    @Default('fail') String status,
    @Default([]) List<FillingStation> data,
  }) = _GetFillingStationsResponse;

  factory GetFillingStationsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetFillingStationsResponseImpl.fromJson(json);
}

@freezed
class FillingStation with _$FillingStation {
  const factory FillingStation(
      {required String id,
      required String branchId,
      required String name,
      required String fuelPrice,
      required String opening,
      required String closing,
      required String longitude,
      required String latitude,
      required String address,
      String? createdAt,
      String? updatedAt,
      String? businessId}) = _FillingStation;

  factory FillingStation.fromJson(Map<String, dynamic> json) =>
      _$FillingStationImpl.fromJson(json);
}
