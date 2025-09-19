// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_question_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateQuestionRequest _$CreateQuestionRequestFromJson(
  Map<String, dynamic> json,
) => _CreateQuestionRequest(
  question: json['question'] as String,
  answer: json['answer'] as String,
  password: json['password'] as String,
);

Map<String, dynamic> _$CreateQuestionRequestToJson(
  _CreateQuestionRequest instance,
) => <String, dynamic>{
  'question': instance.question,
  'answer': instance.answer,
  'password': instance.password,
};
