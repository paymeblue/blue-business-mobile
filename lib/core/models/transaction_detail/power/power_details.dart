import 'package:freezed_annotation/freezed_annotation.dart';

part 'power_details.freezed.dart';
part 'power_details.g.dart';

@freezed
class PowerDetails with _$PowerDetails {
  const factory PowerDetails({
    required int id,
    required String amount,
    required String serviceCharge,
    required String transactionId,
    required String provider,
    required String createdAt,
    required String receiver,
    @Default("power") String service,
    @Default("successful") String status,
    String? token,
  }) = _PowerDetails;

  factory PowerDetails.fromJson(Map<String, dynamic> json) =>
      _$PowerDetailsImpl.fromJson(json);
}
