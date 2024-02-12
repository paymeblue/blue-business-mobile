// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topup_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopupAccountImpl _$$TopupAccountImplFromJson(Map<String, dynamic> json) =>
    _$TopupAccountImpl(
      id: json['id'] as int,
      accountName: json['accountName'] as String,
      bankName: json['bankName'] as String,
      accountNumber: json['accountNumber'] as String,
    );

Map<String, dynamic> _$$TopupAccountImplToJson(_$TopupAccountImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'accountName': instance.accountName,
      'bankName': instance.bankName,
      'accountNumber': instance.accountNumber,
    };
