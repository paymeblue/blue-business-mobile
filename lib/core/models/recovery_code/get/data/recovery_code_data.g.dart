// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recovery_code_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetRecoveryCodeDataImpl _$$GetRecoveryCodeDataImplFromJson(
        Map<String, dynamic> json) =>
    _$GetRecoveryCodeDataImpl(
      businessId: (json['business_id'] as num).toInt(),
      recoveryCode: json['recovery_code'] as String,
    );

Map<String, dynamic> _$$GetRecoveryCodeDataImplToJson(
        _$GetRecoveryCodeDataImpl instance) =>
    <String, dynamic>{
      'business_id': instance.businessId,
      'recovery_code': instance.recoveryCode,
    };
