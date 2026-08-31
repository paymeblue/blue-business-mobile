// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_question_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetQuestionData _$GetQuestionDataFromJson(Map<String, dynamic> json) =>
    _GetQuestionData(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      question: json['question'] as String,
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$GetQuestionDataToJson(_GetQuestionData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'question': instance.question,
      'created_at': ?instance.createdAt,
    };
