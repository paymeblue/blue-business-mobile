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
        _$GetQuestionResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
