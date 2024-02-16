// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_question_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendQuestionResponseImpl _$$SendQuestionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SendQuestionResponseImpl(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$SendQuestionResponseImplToJson(
    _$SendQuestionResponseImpl instance) {
  final val = <String, dynamic>{
    'success': instance.success,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  return val;
}
