import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_detail.freezed.dart';
part 'payment_detail.g.dart';

@freezed
abstract class PaymentDetail with _$PaymentDetail {
  const factory PaymentDetail({
    String? id,
    required String amount,
    required String receiver,
    required String details,
    required String paymentMode,
    required String createdAt,
    required String transactionId,
    @Default("payment") String service,
    @Default("pending") String status,
    @Default("N/A") String narration,
    @Default("") String sender,
    @Default("0.00") String balanceBefore,
    @Default("0.00") String balanceAfter,
  }) = _PaymentDetail;

  factory PaymentDetail.fromJson(Map<String, dynamic> json) =>
      _$PaymentDetailFromJson(json);
}
