import 'package:blue_business/core/models/transaction/pay/data/pay_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pay_response.freezed.dart';
part 'pay_response.g.dart';

@freezed
class PayResponse with _$PayResponse {
  const factory PayResponse({
    @Default(false) bool success,
    String? message,
    PayData? data,
  }) = _PayResponse;

  factory PayResponse.fromJson(Map<String, dynamic> json) =>
      _$PayResponseImpl.fromJson(json);
}
