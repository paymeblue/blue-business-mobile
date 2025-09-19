// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recovery_code_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetRecoveryCodeData _$GetRecoveryCodeDataFromJson(Map<String, dynamic> json) =>
    _GetRecoveryCodeData(
      businessId: (json['business_id'] as num).toInt(),
      recoveryCode: json['recovery_code'] as String,
    );

Map<String, dynamic> _$GetRecoveryCodeDataToJson(
  _GetRecoveryCodeData instance,
) => <String, dynamic>{
  'business_id': instance.businessId,
  'recovery_code': instance.recoveryCode,
};
