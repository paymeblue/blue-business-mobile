// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_branch_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateBranchResponse _$CreateBranchResponseFromJson(
  Map<String, dynamic> json,
) => _CreateBranchResponse(
  status: json['status'] as String? ?? "fail",
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : Branch.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CreateBranchResponseToJson(
  _CreateBranchResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': ?instance.message,
  'data': ?instance.data,
};
