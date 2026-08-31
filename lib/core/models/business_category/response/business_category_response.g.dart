// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BusinessCategoryResponse _$BusinessCategoryResponseFromJson(
  Map<String, dynamic> json,
) => _BusinessCategoryResponse(
  status: json['status'] as String? ?? "fail",
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => BusinessCategory.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$BusinessCategoryResponseToJson(
  _BusinessCategoryResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': ?instance.message,
  'data': ?instance.data,
};
