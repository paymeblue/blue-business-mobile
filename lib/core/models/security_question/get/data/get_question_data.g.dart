// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_question_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetQuestionDataImpl _$$GetQuestionDataImplFromJson(
        Map<String, dynamic> json) =>
    _$GetQuestionDataImpl(
      question:
          SecurityQuestion.fromJson(json['question'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetQuestionDataImplToJson(
        _$GetQuestionDataImpl instance) =>
    <String, dynamic>{
      'question': instance.question,
    };
