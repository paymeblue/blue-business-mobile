// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_question_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetQuestionDataImpl _$$GetQuestionDataImplFromJson(
        Map<String, dynamic> json) =>
    _$GetQuestionDataImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      question: json['question'] as String,
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$$GetQuestionDataImplToJson(
        _$GetQuestionDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'question': instance.question,
      if (instance.createdAt case final value?) 'created_at': value,
    };
