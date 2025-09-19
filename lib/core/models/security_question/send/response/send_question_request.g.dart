// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_question_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SendQuestionResponse _$SendQuestionResponseFromJson(
  Map<String, dynamic> json,
) => _SendQuestionResponse(
  status: json['status'] as String? ?? "fail",
  message: json['message'] as String?,
);

Map<String, dynamic> _$SendQuestionResponseToJson(
  _SendQuestionResponse instance,
) => <String, dynamic>{'status': instance.status, 'message': ?instance.message};
