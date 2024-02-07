// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_question_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateQuestionRequestImpl _$$CreateQuestionRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateQuestionRequestImpl(
      question: json['question'] as String,
      answer: json['answer'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$CreateQuestionRequestImplToJson(
        _$CreateQuestionRequestImpl instance) =>
    <String, dynamic>{
      'question': instance.question,
      'answer': instance.answer,
      'password': instance.password,
    };
