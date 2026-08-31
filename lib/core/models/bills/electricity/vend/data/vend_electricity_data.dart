import 'package:freezed_annotation/freezed_annotation.dart';

part 'vend_electricity_data.freezed.dart';
part 'vend_electricity_data.g.dart';

@freezed
abstract class VendElectricityData with _$VendElectricityData {
  const factory VendElectricityData({
    required String transactionId,
    required String customerName,
    required String customerInfo,
    required String receiver,
    required String provider,
    required String meterType,
    required String paymentReference,
    required String amount,
    @Default("pending") String status,
    String? createdAt,
    String? units,
    String? token,
  }) = _VendElectricityData;

  factory VendElectricityData.fromJson(Map<String, dynamic> json) =>
      _$VendElectricityDataFromJson(json);
}
