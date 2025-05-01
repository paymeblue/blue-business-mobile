// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_question_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendQuestionResponseImpl _$$SendQuestionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SendQuestionResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$SendQuestionResponseImplToJson(
        _$SendQuestionResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      if (instance.message case final value?) 'message': value,
    };
