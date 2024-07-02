import 'package:freezed_annotation/freezed_annotation.dart';

part 'verified_receiver.freezed.dart';
part 'verified_receiver.g.dart';

@freezed
class VerifiedReceiver with _$VerifiedReceiver {
  const factory VerifiedReceiver({
    required int id,
    int? userId,
    String? walletCode,
    required String receiverName,
    required String phone,
    required String amount,
    required double charge,
  }) = _VerifiedReceiver;

  factory VerifiedReceiver.fromJson(Map<String, dynamic> json) =>
      _$VerifiedReceiverImpl.fromJson(json);
}

// {
//         "status": true,
//         "data": {
//           "receiver": {
//             "id": 20,
//             "user_id": 20,
//             "wallet_code": "05C8BAB429",
//             "receiver_name": "Halima Balogun",
//             "phone": "2349036968118",
//             "amount": "200.00",
//             "charge": 0
//           }
//         },
//         "message": "Receiver successfully verified"
//       }