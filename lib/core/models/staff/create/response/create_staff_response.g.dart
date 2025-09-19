// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_staff_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateStaffResponse _$CreateStaffResponseFromJson(Map<String, dynamic> json) =>
    _CreateStaffResponse(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String? ?? "",
    );

Map<String, dynamic> _$CreateStaffResponseToJson(
  _CreateStaffResponse instance,
) => <String, dynamic>{'status': instance.status, 'message': instance.message};
