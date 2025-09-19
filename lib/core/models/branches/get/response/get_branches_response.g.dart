// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_branches_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetBranchesResponse _$GetBranchesResponseFromJson(Map<String, dynamic> json) =>
    _GetBranchesResponse(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : GetBranchesData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetBranchesResponseToJson(
  _GetBranchesResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': ?instance.message,
  'data': ?instance.data,
};
