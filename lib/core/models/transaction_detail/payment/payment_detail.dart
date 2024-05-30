import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_detail.freezed.dart';
part 'payment_detail.g.dart';

@freezed
class PaymentDetail with _$PaymentDetail {
  const factory PaymentDetail({
    required int id,
    required String amount,
    required String receiver,
    required String details,
    required String paymentMode,
    required String createdAt,
    required String transactionId,
    @Default("payment") String service,
    @Default("pending") String status,
  }) = _PaymentDetail;

  factory PaymentDetail.fromJson(Map<String, dynamic> json) =>
      _$PaymentDetailImpl.fromJson(json);
}
