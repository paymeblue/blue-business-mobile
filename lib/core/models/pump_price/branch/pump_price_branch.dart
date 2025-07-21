import 'package:freezed_annotation/freezed_annotation.dart';

part 'pump_price_branch.freezed.dart';
part 'pump_price_branch.g.dart';

@freezed
class CreatePumpPriceBranchRequest with _$CreatePumpPriceBranchRequest {
  const factory CreatePumpPriceBranchRequest({
    required String name,
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
class EditPumpPriceBranchRequest with _$EditPumpPriceBranchRequest {
  const factory EditPumpPriceBranchRequest({
    String? name,
    String? address,
    double? fuelPrice,
    double? latitude,
    double? longitude,
    String? opening,
    String? closing,
  }) = _EditPumpPriceBranchRequest;

  factory EditPumpPriceBranchRequest.fromJson(Map<String, dynamic> json) =>
      _$EditPumpPriceBranchRequestImpl.fromJson(json);
}

@freezed
class CreatePumpPriceBranchResponse with _$CreatePumpPriceBranchResponse {
  const factory CreatePumpPriceBranchResponse({
    @Default('') String message,
    @Default('fail') String status,
    CreateFillingStationData? data,
  }) = _CreatePumpPriceBranchResponse;

  factory CreatePumpPriceBranchResponse.fromJson(Map<String, dynamic> json) =>
      _$CreatePumpPriceBranchResponseImpl.fromJson(json);
}

@freezed
class CreateFillingStationData with _$CreateFillingStationData {
  const factory CreateFillingStationData({
    required String id,
    required String branchId,
    required double fuelPrice,
    required String opening,
    required String closing,
    required double longitude,
    required double latitude,
    required String address,
    String? createdAt,
    String? updatedAt,
  }) = _CreateFillingStationData;

  factory CreateFillingStationData.fromJson(Map<String, dynamic> json) =>
      _$CreateFillingStationDataImpl.fromJson(json);
}

@freezed
class EditPumpPriceBranchResponse with _$EditPumpPriceBranchResponse {
  const factory EditPumpPriceBranchResponse({
    @Default('') String message,
    @Default('fail') String status,
    EditFillingStationData? data,
  }) = _EditPumpPriceBranchResponse;

  factory EditPumpPriceBranchResponse.fromJson(Map<String, dynamic> json) =>
      _$EditPumpPriceBranchResponseImpl.fromJson(json);
}

@freezed
class EditFillingStationData with _$EditFillingStationData {
  const factory EditFillingStationData({
    required String id,
    required String branchId,
    required double fuelPrice,
    required String opening,
    required String closing,
    required String longitude,
    required String latitude,
    required String address,
    String? createdAt,
    String? updatedAt,
    String? deletedAt,
  }) = _EditFillingStationData;

  factory EditFillingStationData.fromJson(Map<String, dynamic> json) =>
      _$EditFillingStationDataImpl.fromJson(json);
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
  const factory FillingStation({
    required String id,
    required String branchId,
    @Default('') String name,
    required String fuelPrice,
    required String opening,
    required String closing,
    required String longitude,
    required String latitude,
    required String address,
    String? createdAt,
    String? updatedAt,
    String? businessId,
  }) = _FillingStation;

  factory FillingStation.fromJson(Map<String, dynamic> json) =>
      _$FillingStationImpl.fromJson(json);
}
