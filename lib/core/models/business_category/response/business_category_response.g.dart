// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BusinessCategoryResponseImpl _$$BusinessCategoryResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BusinessCategoryResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => BusinessCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BusinessCategoryResponseImplToJson(
        _$BusinessCategoryResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      if (instance.message case final value?) 'message': value,
      if (instance.data case final value?) 'data': value,
    };
