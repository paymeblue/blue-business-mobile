// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_question_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetQuestionDataImpl _$$GetQuestionDataImplFromJson(
        Map<String, dynamic> json) =>
    _$GetQuestionDataImpl(
      id: json['id'] as int,
      userId: json['user_id'] as int,
      question: json['question'] as String,
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$$GetQuestionDataImplToJson(
    _$GetQuestionDataImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'user_id': instance.userId,
    'question': instance.question,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('created_at', instance.createdAt);
  return val;
}
