import 'package:freezed_annotation/freezed_annotation.dart';

part 'vend_cable_data.freezed.dart';
part 'vend_cable_data.g.dart';

@freezed
class VendCableData with _$VendCableData {
  const factory VendCableData({
    required String transactionId,
    required String customerName,
    required String customerInfo,
    required String receiver,
    required String provider,
    required String package,
    required String paymentReference,
    required int amount,
    @Default(0) int serviceCharget,
    @Default("pending") String status,
    String? createdAt,
  }) = _VendCableData;

  factory VendCableData.fromJson(Map<String, dynamic> json) =>
      _$VendCableDataImpl.fromJson(json);
}
