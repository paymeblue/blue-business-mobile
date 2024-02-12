// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_question_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetQuestionData _$GetQuestionDataFromJson(Map<String, dynamic> json) {
  return _GetQuestionData.fromJson(json);
}

/// @nodoc
mixin _$GetQuestionData {
  SecurityQuestion get question => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetQuestionDataCopyWith<GetQuestionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetQuestionDataCopyWith<$Res> {
  factory $GetQuestionDataCopyWith(
          GetQuestionData value, $Res Function(GetQuestionData) then) =
      _$GetQuestionDataCopyWithImpl<$Res, GetQuestionData>;
  @useResult
  $Res call({SecurityQuestion question});

  $SecurityQuestionCopyWith<$Res> get question;
}

/// @nodoc
class _$GetQuestionDataCopyWithImpl<$Res, $Val extends GetQuestionData>
    implements $GetQuestionDataCopyWith<$Res> {
  _$GetQuestionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
  }) {
    return _then(_value.copyWith(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as SecurityQuestion,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SecurityQuestionCopyWith<$Res> get question {
    return $SecurityQuestionCopyWith<$Res>(_value.question, (value) {
      return _then(_value.copyWith(question: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetQuestionDataImplCopyWith<$Res>
    implements $GetQuestionDataCopyWith<$Res> {
  factory _$$GetQuestionDataImplCopyWith(_$GetQuestionDataImpl value,
          $Res Function(_$GetQuestionDataImpl) then) =
      __$$GetQuestionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SecurityQuestion question});

  @override
  $SecurityQuestionCopyWith<$Res> get question;
}

/// @nodoc
class __$$GetQuestionDataImplCopyWithImpl<$Res>
    extends _$GetQuestionDataCopyWithImpl<$Res, _$GetQuestionDataImpl>
    implements _$$GetQuestionDataImplCopyWith<$Res> {
  __$$GetQuestionDataImplCopyWithImpl(
      _$GetQuestionDataImpl _value, $Res Function(_$GetQuestionDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
  }) {
    return _then(_$GetQuestionDataImpl(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as SecurityQuestion,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetQuestionDataImpl implements _GetQuestionData {
  const _$GetQuestionDataImpl({required this.question});

  factory _$GetQuestionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetQuestionDataImplFromJson(json);

  @override
  final SecurityQuestion question;

  @override
  String toString() {
    return 'GetQuestionData(question: $question)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetQuestionDataImpl &&
            (identical(other.question, question) ||
                other.question == question));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, question);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetQuestionDataImplCopyWith<_$GetQuestionDataImpl> get copyWith =>
      __$$GetQuestionDataImplCopyWithImpl<_$GetQuestionDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetQuestionDataImplToJson(
      this,
    );
  }
}

abstract class _GetQuestionData implements GetQuestionData {
  const factory _GetQuestionData({required final SecurityQuestion question}) =
      _$GetQuestionDataImpl;

  factory _GetQuestionData.fromJson(Map<String, dynamic> json) =
      _$GetQuestionDataImpl.fromJson;

  @override
  SecurityQuestion get question;
  @override
  @JsonKey(ignore: true)
  _$$GetQuestionDataImplCopyWith<_$GetQuestionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
