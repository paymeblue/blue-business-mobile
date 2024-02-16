import 'package:blue_business/core/models/banks/data/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank_response.freezed.dart';
part 'bank_response.g.dart';

@freezed
class BankResponse with _$BankResponse {
  const factory BankResponse({
    @Default(false) bool success,
    String? message,
    BankData? data,
  }) = _BankResponse;

  factory BankResponse.fromJson(Map<String, dynamic> json) =>
      _$BankResponseImpl.fromJson(json);
}
