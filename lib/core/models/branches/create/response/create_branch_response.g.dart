// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_branch_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateBranchResponseImpl _$$CreateBranchResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateBranchResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Branch.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateBranchResponseImplToJson(
        _$CreateBranchResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      if (instance.message case final value?) 'message': value,
      if (instance.data case final value?) 'data': value,
    };
