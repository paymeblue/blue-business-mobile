import 'package:freezed_annotation/freezed_annotation.dart';

part 'business_fees.freezed.dart';
part 'business_fees.g.dart';

@freezed
abstract class GetBusinessFeesResponse with _$GetBusinessFeesResponse {
  const factory GetBusinessFeesResponse({
    @Default('fail') String status,
    String? message,
    GetBusinessFeesData? data,
  }) = _GetBusinessFeesResponse;

  factory GetBusinessFeesResponse.fromJson(Map<String, dynamic> json) =>
      _$GetBusinessFeesResponseFromJson(json);
}

@freezed
abstract class GetBusinessFeesData with _$GetBusinessFeesData {
  const factory GetBusinessFeesData({
    required int id,
    required int businessId,
    @Default(0) double withdrawal,
    @Default(0) double billPayment,
    @Default(0) double transfers,
    @Default(0) double blueToBlue,
    String? createdAt,
    String? updatedAt,
  }) = _GetBusinessFeesData;

  factory GetBusinessFeesData.fromJson(Map<String, dynamic> json) =>
      _$GetBusinessFeesDataFromJson(json);
}
