import 'package:blue_business/core/models/beneficiary/payment/blue_beneficiary.dart';
import 'package:blue_business/core/models/beneficiary/payment/get/data/get_beneficiary_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_beneficiary_response.freezed.dart';
part 'get_beneficiary_response.g.dart';

@freezed
abstract class GetBeneficiaryResponse with _$GetBeneficiaryResponse {
  const factory GetBeneficiaryResponse({
    @Default("fail") String status,
    String? message,
    @Default([]) List<BlueBeneficiary> data,
    GetBeneficiaryData? paginationInfo,
  }) = _GetBeneficiaryResponse;

  factory GetBeneficiaryResponse.fromJson(Map<String, dynamic> json) =>
      _$GetBeneficiaryResponseFromJson(json);
}
