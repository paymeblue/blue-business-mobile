import 'package:blue_business/core/models/beneficiary/blue_beneficiary.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_beneficiary_data.freezed.dart';
part 'get_beneficiary_data.g.dart';

@freezed
class GetBeneficiaryData with _$GetBeneficiaryData {
  const factory GetBeneficiaryData({
    required String total,
    required String limit,
    required String page,
    @Default([]) List<BlueBeneficiary> data,
    @Default(false) bool loadMore,
  }) = _GetBeneficiaryData;

  factory GetBeneficiaryData.fromJson(Map<String, dynamic> json) =>
      _$GetBeneficiaryDataImpl.fromJson(json);
}
