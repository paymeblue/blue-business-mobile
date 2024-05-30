import 'package:freezed_annotation/freezed_annotation.dart';

part 'airtime_details.freezed.dart';
part 'airtime_details.g.dart';

@freezed
class AirtimeDetails with _$AirtimeDetails {
  const factory AirtimeDetails({
    required int id,
    required String amount,
    required String receiver,
    required String transactionId,
    required String provider,
    required String createdAt,
    @Default("airtime") String service,
    @Default("successful") String status,
  }) = _AirtimeDetails;

  factory AirtimeDetails.fromJson(Map<String, dynamic> json) =>
      _$AirtimeDetailsImpl.fromJson(json);
}
