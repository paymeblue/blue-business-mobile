import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_details.freezed.dart';
part 'data_details.g.dart';

@freezed
class DataDetails with _$DataDetails {
  const factory DataDetails({
    required int id,
    required String amount,
    required String receiver,
    required String transactionId,
    required String provider,
    required String package,
    required String paymentMode,
    required String createdAt,
    @Default("data") String service,
    @Default("successful") String status,
  }) = _DataDetails;

  factory DataDetails.fromJson(Map<String, dynamic> json) =>
      _$DataDetailsImpl.fromJson(json);
}
