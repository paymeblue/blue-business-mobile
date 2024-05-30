import 'package:freezed_annotation/freezed_annotation.dart';

part 'vend_airtime_data.freezed.dart';
part 'vend_airtime_data.g.dart';

@freezed
class VendAirtimeData with _$VendAirtimeData {
  const factory VendAirtimeData({
    required String transactionId,
    required String receiver,
    required String provider,
    required String paymentReference,
    required String amount,
    @Default("pending") String status,
    String? createdAt,
  }) = _VendAirtimeData;

  factory VendAirtimeData.fromJson(Map<String, dynamic> json) =>
      _$VendAirtimeDataImpl.fromJson(json);
}
