// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_packages_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetPackagesResponseImpl _$$GetPackagesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetPackagesResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => BillPackage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetPackagesResponseImplToJson(
    _$GetPackagesResponseImpl instance) {
  final val = <String, dynamic>{
    'status': instance.status,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  writeNotNull('data', instance.data);
  return val;
}
