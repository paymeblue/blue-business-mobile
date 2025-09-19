import 'package:freezed_annotation/freezed_annotation.dart';

part 'pump_price_branch.freezed.dart';
part 'pump_price_branch.g.dart';

@freezed
abstract class CreatePumpPriceBranchRequest
    with _$CreatePumpPriceBranchRequest {
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
      _$CreatePumpPriceBranchRequestFromJson(json);
}

@freezed
abstract class EditPumpPriceBranchRequest with _$EditPumpPriceBranchRequest {
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
      _$EditPumpPriceBranchRequestFromJson(json);
}

@freezed
abstract class CreatePumpPriceBranchResponse
    with _$CreatePumpPriceBranchResponse {
  const factory CreatePumpPriceBranchResponse({
    @Default('') String message,
    @Default('fail') String status,
    CreateFillingStationData? data,
  }) = _CreatePumpPriceBranchResponse;

  factory CreatePumpPriceBranchResponse.fromJson(Map<String, dynamic> json) =>
      _$CreatePumpPriceBranchResponseFromJson(json);
}

@freezed
abstract class CreateFillingStationData with _$CreateFillingStationData {
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
      _$CreateFillingStationDataFromJson(json);
}

@freezed
abstract class EditPumpPriceBranchResponse with _$EditPumpPriceBranchResponse {
  const factory EditPumpPriceBranchResponse({
    @Default('') String message,
    @Default('fail') String status,
    EditFillingStationData? data,
  }) = _EditPumpPriceBranchResponse;

  factory EditPumpPriceBranchResponse.fromJson(Map<String, dynamic> json) =>
      _$EditPumpPriceBranchResponseFromJson(json);
}

@freezed
abstract class EditFillingStationData with _$EditFillingStationData {
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
      _$EditFillingStationDataFromJson(json);
}

@freezed
abstract class GetFillingStationsResponse with _$GetFillingStationsResponse {
  const factory GetFillingStationsResponse({
    @Default('') String message,
    @Default('fail') String status,
    @Default(GetFillingStationsData()) GetFillingStationsData data,
  }) = _GetFillingStationsResponse;

  factory GetFillingStationsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetFillingStationsResponseFromJson(json);
}

@freezed
abstract class GetFillingStationsData with _$GetFillingStationsData {
  const factory GetFillingStationsData({
    @Default(GetFillingStationsMeta()) GetFillingStationsMeta meta,
    @Default([]) List<FillingStation> data,
  }) = _GetFillingStationsData;

  factory GetFillingStationsData.fromJson(Map<String, dynamic> json) =>
      _$GetFillingStationsDataFromJson(json);
}

@freezed
abstract class GetFillingStationsMeta with _$GetFillingStationsMeta {
  const factory GetFillingStationsMeta({
    @Default(0) int total,
    @Default(1) int page,
    @Default(0) int limit,
    @Default(1) int pages,
  }) = _GetFillingStationsMeta;

  factory GetFillingStationsMeta.fromJson(Map<String, dynamic> json) =>
      _$GetFillingStationsMetaFromJson(json);
}

@freezed
abstract class FillingStation with _$FillingStation {
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
    @Default(0) double totalTransactions,
    @Default(0) double percentageIncrease,
    String? createdAt,
    String? updatedAt,
  }) = _FillingStation;

  factory FillingStation.fromJson(Map<String, dynamic> json) =>
      _$FillingStationFromJson(json);
}
