import 'package:freezed_annotation/freezed_annotation.dart';

part 'pay_data.freezed.dart';
part 'pay_data.g.dart';

@freezed
class PayData with _$PayData {
  const factory PayData({
    required String transactionId,
    required String amount,
    required String receiverName,
    required String receiverWallet,
    required String reference,
    required String status,
    required String createdAt,
  }) = _PayData;

  factory PayData.fromJson(Map<String, dynamic> json) =>
      _$PayDataImpl.fromJson(json);
}
