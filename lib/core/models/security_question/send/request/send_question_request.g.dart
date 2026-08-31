// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_question_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SendQuestionRequest _$SendQuestionRequestFromJson(Map<String, dynamic> json) =>
    _SendQuestionRequest(
      phone: json['phone'] as String,
      answer: json['answer'] as String,
    );

Map<String, dynamic> _$SendQuestionRequestToJson(
  _SendQuestionRequest instance,
) => <String, dynamic>{'phone': instance.phone, 'answer': instance.answer};
