import 'package:blue_business/core/models/payment_link/data/payment_link_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_link_response.freezed.dart';
part 'payment_link_response.g.dart';

@freezed
abstract class PaymentLinkResponse with _$PaymentLinkResponse {
  const factory PaymentLinkResponse({
    @Default("fail") String status,
    String? message,
    PaymentLinkData? data,
  }) = _PaymentLinkResponse;

  factory PaymentLinkResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentLinkResponseFromJson(json);
}
