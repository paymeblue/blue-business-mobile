import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_beneficiary_response.freezed.dart';
part 'set_beneficiary_response.g.dart';

@freezed
class SetBeneficiaryResponse with _$SetBeneficiaryResponse {
  const factory SetBeneficiaryResponse({
    @Default("fail") String status,
    String? message,
  }) = _SetBeneficiaryResponse;

  factory SetBeneficiaryResponse.fromJson(Map<String, dynamic> json) =>
      _$SetBeneficiaryResponseImpl.fromJson(json);
}
