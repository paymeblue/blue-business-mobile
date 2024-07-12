// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_branches_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetBranchesResponseImpl _$$GetBranchesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetBranchesResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : GetBranchesData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetBranchesResponseImplToJson(
    _$GetBranchesResponseImpl instance) {
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
