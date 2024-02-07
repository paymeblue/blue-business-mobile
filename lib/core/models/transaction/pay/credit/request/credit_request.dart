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

//Sending PATCH request with {transaction_id: 1705999712850, passcode: 2587} to https://blue-api-backend.herokuapp.com/api/transactions/credit
// [log] {
//         "status": true,
//         "data": {
//           "transaction_id": "1705999712850",
//           "amount": 200,
//           "receiver_name": "Avoseh Deyon",
//           "receiver_wallet": "748F0534DA",
//           "reference": "BLUE-C60079042350D8E5A170600007",
//           "status": "successful",
//           "created_at": "1/23/2024, 9:48:32 AM"
//         },
//         "message": "Transaction completed successfully"
//       }