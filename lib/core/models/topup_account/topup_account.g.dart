// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topup_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopupAccountImpl _$$TopupAccountImplFromJson(Map<String, dynamic> json) =>
    _$TopupAccountImpl(
      id: json['id'] as int,
      accountName: json['account_name'] as String,
      bankName: json['bank_name'] as String,
      accountNumber: json['account_number'] as String,
    );

Map<String, dynamic> _$$TopupAccountImplToJson(_$TopupAccountImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'account_name': instance.accountName,
      'bank_name': instance.bankName,
      'account_number': instance.accountNumber,
    };
