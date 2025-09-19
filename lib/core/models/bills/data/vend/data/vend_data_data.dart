import 'package:freezed_annotation/freezed_annotation.dart';

part 'vend_data_data.freezed.dart';
part 'vend_data_data.g.dart';

@freezed
abstract class VendDataData with _$VendDataData {
  const factory VendDataData({
    required String transactionId,
    required String receiver,
    required String provider,
    required String package,
    required String paymentReference,
    required int amount,
    @Default("pending") String status,
    String? createdAt,
  }) = _VendDataData;

  factory VendDataData.fromJson(Map<String, dynamic> json) =>
      _$VendDataDataFromJson(json);
}
