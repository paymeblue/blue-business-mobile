// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_providers_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetProvidersResponseImpl _$$GetProvidersResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetProvidersResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => BillProvider.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetProvidersResponseImplToJson(
    _$GetProvidersResponseImpl instance) {
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
