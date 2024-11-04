import 'package:freezed_annotation/freezed_annotation.dart';

part 'blue_beneficiary.freezed.dart';
part 'blue_beneficiary.g.dart';

@freezed
class BlueBeneficiary with _$BlueBeneficiary {
  const factory BlueBeneficiary({
    required int id,
    @Default("") String identifier,
    @Default("") String name,
  }) = _BlueBeneficiary;

  factory BlueBeneficiary.fromJson(Map<String, dynamic> json) =>
      _$BlueBeneficiaryImpl.fromJson(json);
}
