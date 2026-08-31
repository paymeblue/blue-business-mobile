// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_branch_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateBranchRequest _$CreateBranchRequestFromJson(Map<String, dynamic> json) =>
    _CreateBranchRequest(
      name: json['name'] as String,
      staffSize: json['staff_size'] as String,
      location: json['location'] as String,
    );

Map<String, dynamic> _$CreateBranchRequestToJson(
  _CreateBranchRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'staff_size': instance.staffSize,
  'location': instance.location,
};
