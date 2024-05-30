import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_detail_response.freezed.dart';
part 'transaction_detail_response.g.dart';

@freezed
class TransactionDetailResponse with _$TransactionDetailResponse {
  const factory TransactionDetailResponse({
    @Default("fail") String status,
    String? message,
    dynamic data,
  }) = _TransactionDetailResponse;

  factory TransactionDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionDetailResponseImpl.fromJson(json);
}
