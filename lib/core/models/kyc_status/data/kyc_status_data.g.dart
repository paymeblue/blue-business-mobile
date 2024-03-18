// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kyc_status_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KycStatusDataImpl _$$KycStatusDataImplFromJson(Map<String, dynamic> json) =>
    _$KycStatusDataImpl(
      type: json['type'] as String?,
      kyc: json['kyc'] as String,
    );

Map<String, dynamic> _$$KycStatusDataImplToJson(_$KycStatusDataImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  val['kyc'] = instance.kyc;
  return val;
}
