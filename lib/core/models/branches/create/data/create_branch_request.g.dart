// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_branch_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateBranchRequestImpl _$$CreateBranchRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateBranchRequestImpl(
      name: json['name'] as String,
      staffSize: json['staff_size'] as String,
      location: json['location'] as String,
    );

Map<String, dynamic> _$$CreateBranchRequestImplToJson(
        _$CreateBranchRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'staff_size': instance.staffSize,
      'location': instance.location,
    };
