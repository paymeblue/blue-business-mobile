// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_branch_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetBranchResponseImpl _$$GetBranchResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetBranchResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Branch.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetBranchResponseImplToJson(
        _$GetBranchResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      if (instance.message case final value?) 'message': value,
      if (instance.data case final value?) 'data': value,
    };
