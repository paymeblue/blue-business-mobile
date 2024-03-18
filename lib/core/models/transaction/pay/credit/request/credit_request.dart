import 'package:freezed_annotation/freezed_annotation.dart';

part 'credit_request.freezed.dart';
part 'credit_request.g.dart';

@freezed
class CreditRequest with _$CreditRequest {
  const factory CreditRequest({
    required String transactionId,
    required String passcode,
  }) = _CreditRequest;

  factory CreditRequest.fromJson(Map<String, dynamic> json) =>
      _$CreditRequestImpl.fromJson(json);
}
