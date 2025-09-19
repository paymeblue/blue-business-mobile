// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auto_withdrawal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AutoWithdrawalRequest _$AutoWithdrawalRequestFromJson(
  Map<String, dynamic> json,
) => _AutoWithdrawalRequest(
  autoWithdrawalEnabled: json['auto_withdrawal_enabled'] as bool,
);

Map<String, dynamic> _$AutoWithdrawalRequestToJson(
  _AutoWithdrawalRequest instance,
) => <String, dynamic>{
  'auto_withdrawal_enabled': instance.autoWithdrawalEnabled,
};

_AutoWithdrawalResponse _$AutoWithdrawalResponseFromJson(
  Map<String, dynamic> json,
) => _AutoWithdrawalResponse(
  status: json['status'] as String? ?? 'fail',
  message: json['message'] as String?,
);

Map<String, dynamic> _$AutoWithdrawalResponseToJson(
  _AutoWithdrawalResponse instance,
) => <String, dynamic>{'status': instance.status, 'message': ?instance.message};
