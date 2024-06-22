import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_cable_data.freezed.dart';
part 'verify_cable_data.g.dart';

@freezed
class VerifyCableData with _$VerifyCableData {
  const factory VerifyCableData({
    required String transactionId,
    required String customerName,
    required String customerInfo,
    required String receiver,
    required String provider,
    required String package,
    @Default(100) int serviceCharge,
    @Default(0) int amount,
    @Default("pending") String status,
    String? createdAt,
  }) = _VerifyCableData;

  factory VerifyCableData.fromJson(Map<String, dynamic> json) =>
      _$VerifyCableDataImpl.fromJson(json);
}
