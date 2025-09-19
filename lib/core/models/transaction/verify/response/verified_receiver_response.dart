import 'package:blue_business/core/models/transaction/verify/receiver/verified_receiver.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verified_receiver_response.freezed.dart';
part 'verified_receiver_response.g.dart';

@freezed
abstract class VerifiedReceiverResponse with _$VerifiedReceiverResponse {
  const factory VerifiedReceiverResponse({
    @Default("fail") String status,
    String? message,
    VerifiedReceiver? data,
  }) = _VerifiedReceiverResponse;

  factory VerifiedReceiverResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifiedReceiverResponseFromJson(json);
}
