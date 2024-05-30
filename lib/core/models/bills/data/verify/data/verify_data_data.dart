import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_data_data.freezed.dart';
part 'verify_data_data.g.dart';

@freezed
class VerifyDataData with _$VerifyDataData {
  const factory VerifyDataData({
    required String transactionId,
    required String receiver,
    required String provider,
    required String package,
    @Default("0.0") String amount,
    @Default("pending") String status,
    String? createdAt,
  }) = _VerifyDataData;

  factory VerifyDataData.fromJson(Map<String, dynamic> json) =>
      _$VerifyDataDataImpl.fromJson(json);
}
