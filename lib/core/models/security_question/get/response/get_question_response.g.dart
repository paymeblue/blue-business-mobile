// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_question_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetQuestionResponseImpl _$$GetQuestionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetQuestionResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : GetQuestionData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetQuestionResponseImplToJson(
    _$GetQuestionResponseImpl instance) {
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
