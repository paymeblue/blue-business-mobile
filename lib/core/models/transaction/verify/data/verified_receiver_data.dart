import 'package:blue_business/core/models/transaction/verify/receiver/verified_receiver.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verified_receiver_data.freezed.dart';
part 'verified_receiver_data.g.dart';

@freezed
abstract class VerifiedReceiverData with _$VerifiedReceiverData {
  const factory VerifiedReceiverData({required VerifiedReceiver receiver}) =
      _VerifiedReceiverData;

  factory VerifiedReceiverData.fromJson(Map<String, dynamic> json) =>
      _$VerifiedReceiverDataFromJson(json);
}
