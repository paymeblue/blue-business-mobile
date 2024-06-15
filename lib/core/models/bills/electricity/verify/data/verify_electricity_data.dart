import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_electricity_data.freezed.dart';
part 'verify_electricity_data.g.dart';

@freezed
class VerifyElectricityData with _$VerifyElectricityData {
  const factory VerifyElectricityData({
    required String transactionId,
    required String customerName,
    required String customerInfo,
    required String receiver,
    required String provider,
    required String meterType,
    @Default(100) int serviceCharge,
    @Default("0.0") String minimumAmount,
    @Default("pending") String status,
    String? createdAt,
  }) = _VerifyElectricityData;

  factory VerifyElectricityData.fromJson(Map<String, dynamic> json) =>
      _$VerifyElectricityDataImpl.fromJson(json);
}
