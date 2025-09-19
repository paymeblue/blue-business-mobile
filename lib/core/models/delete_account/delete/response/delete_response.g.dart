// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeleteResponse _$DeleteResponseFromJson(Map<String, dynamic> json) =>
    _DeleteResponse(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
    );

Map<String, dynamic> _$DeleteResponseToJson(_DeleteResponse instance) =>
    <String, dynamic>{'status': instance.status, 'message': ?instance.message};
