import 'package:freezed_annotation/freezed_annotation.dart';

part 'verified_receiver_request.freezed.dart';
part 'verified_receiver_request.g.dart';

@freezed
class VerifiedReceiverRequest with _$VerifiedReceiverRequest {
  const factory VerifiedReceiverRequest({
    required String transactionId,
    required String receiver,
    String? receiverName,
    String? branchId,
  }) = _VerifiedReceiverRequest;

  factory VerifiedReceiverRequest.fromJson(Map<String, dynamic> json) =>
      _$VerifiedReceiverRequestImpl.fromJson(json);
}
