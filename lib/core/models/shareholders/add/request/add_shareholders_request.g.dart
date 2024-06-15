// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_shareholders_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddShareholdersRequestImpl _$$AddShareholdersRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AddShareholdersRequestImpl(
      bvn: json['bvn'] as String,
      shareholderId: json['shareholder_id'] as int,
      userId: json['user_id'] as int,
    );

Map<String, dynamic> _$$AddShareholdersRequestImplToJson(
        _$AddShareholdersRequestImpl instance) =>
    <String, dynamic>{
      'bvn': instance.bvn,
      'shareholder_id': instance.shareholderId,
      'user_id': instance.userId,
    };
