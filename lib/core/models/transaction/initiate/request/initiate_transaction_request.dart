import 'package:freezed_annotation/freezed_annotation.dart';

part 'initiate_transaction_request.freezed.dart';
part 'initiate_transaction_request.g.dart';

@freezed
class InitiateTransactionRequest with _$InitiateTransactionRequest {
  const factory InitiateTransactionRequest({
    required String amount,
    String? narration,
    required String paymentMode,
  }) = _InitiateTransactionRequest;

  factory InitiateTransactionRequest.fromJson(Map<String, dynamic> json) =>
      _$InitiateTransactionRequestImpl.fromJson(json);
}
