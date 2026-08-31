// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_branch_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetBranchResponse _$GetBranchResponseFromJson(Map<String, dynamic> json) =>
    _GetBranchResponse(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Branch.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetBranchResponseToJson(_GetBranchResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': ?instance.message,
      'data': ?instance.data,
    };
