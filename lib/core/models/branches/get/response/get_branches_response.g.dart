// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_branches_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetBranchesResponseImpl _$$GetBranchesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetBranchesResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : GetBranchesData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetBranchesResponseImplToJson(
        _$GetBranchesResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      if (instance.message case final value?) 'message': value,
      if (instance.data case final value?) 'data': value,
    };
