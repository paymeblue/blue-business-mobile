// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_packages_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetPackagesResponse _$GetPackagesResponseFromJson(Map<String, dynamic> json) =>
    _GetPackagesResponse(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => BillPackage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetPackagesResponseToJson(
  _GetPackagesResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': ?instance.message,
  'data': ?instance.data,
};
