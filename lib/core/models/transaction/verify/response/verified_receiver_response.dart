import 'package:blue_business/core/models/transaction/verify/data/verified_receiver_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verified_receiver_response.freezed.dart';
part 'verified_receiver_response.g.dart';

@freezed
class VerifiedReceiverResponse with _$VerifiedReceiverResponse {
  const factory VerifiedReceiverResponse(
      {@Default(false) bool success,
      String? message,
      VerifiedReceiverData? data}) = _VerifiedReceiverResponse;

  factory VerifiedReceiverResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifiedReceiverResponseImpl.fromJson(json);
}
