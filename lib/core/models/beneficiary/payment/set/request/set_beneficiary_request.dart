import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_beneficiary_request.freezed.dart';
part 'set_beneficiary_request.g.dart';

@freezed
class SetBeneficiaryRequest with _$SetBeneficiaryRequest {
  const factory SetBeneficiaryRequest({
    required String identifier,
  }) = _SetBeneficiaryRequest;

  factory SetBeneficiaryRequest.fromJson(Map<String, dynamic> json) =>
      _$SetBeneficiaryRequestImpl.fromJson(json);
}
