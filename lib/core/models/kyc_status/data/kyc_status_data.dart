import 'package:freezed_annotation/freezed_annotation.dart';

part 'kyc_status_data.freezed.dart';
part 'kyc_status_data.g.dart';

@freezed
abstract class KycStatusData with _$KycStatusData {
  const factory KycStatusData({String? type, required String kyc}) =
      _KycStatusData;

  factory KycStatusData.fromJson(Map<String, dynamic> json) =>
      _$KycStatusDataFromJson(json);
}
