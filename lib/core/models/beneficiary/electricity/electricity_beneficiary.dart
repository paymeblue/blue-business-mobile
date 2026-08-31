import 'package:freezed_annotation/freezed_annotation.dart';

part 'electricity_beneficiary.freezed.dart';
part 'electricity_beneficiary.g.dart';

@freezed
abstract class ElectricityBeneficiary with _$ElectricityBeneficiary {
  const factory ElectricityBeneficiary({
    int? id,
    required String receiver,
    required String meterType,
    required int providerId,
    required String customerName,
    required String customerInfo,
    required String provider,
    @Default("100") String serviceCharge,
    @Default("0.0") String minimumAmount,
    required String state,
    String? tag,
    @Default("false") String isOnline,
  }) = _ElectricityBeneficiary;

  factory ElectricityBeneficiary.fromJson(Map<String, dynamic> json) =>
      _$ElectricityBeneficiaryFromJson(json);
}
