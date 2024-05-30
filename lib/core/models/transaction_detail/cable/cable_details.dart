import 'package:freezed_annotation/freezed_annotation.dart';

part 'cable_details.freezed.dart';
part 'cable_details.g.dart';

@freezed
class CableDetails with _$CableDetails {
  const factory CableDetails({
    required int id,
    required String amount,
    required String serviceCharge,
    required String receiver,
    required String transactionId,
    required String provider,
    required String package,
    required String paymentMode,
    required String createdAt,
    @Default("data") String service,
    @Default("successful") String status,
  }) = _CableDetails;

  factory CableDetails.fromJson(Map<String, dynamic> json) =>
      _$CableDetailsImpl.fromJson(json);
}
