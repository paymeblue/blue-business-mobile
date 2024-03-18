// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_question_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateQuestionRequest _$CreateQuestionRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateQuestionRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateQuestionRequest {
  String get question => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateQuestionRequestCopyWith<CreateQuestionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateQuestionRequestCopyWith<$Res> {
  factory $CreateQuestionRequestCopyWith(CreateQuestionRequest value,
          $Res Function(CreateQuestionRequest) then) =
      _$CreateQuestionRequestCopyWithImpl<$Res, CreateQuestionRequest>;
  @useResult
  $Res call({String question, String answer, String password});
}

/// @nodoc
class _$CreateQuestionRequestCopyWithImpl<$Res,
        $Val extends CreateQuestionRequest>
    implements $CreateQuestionRequestCopyWith<$Res> {
  _$CreateQuestionRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? answer = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateQuestionRequestImplCopyWith<$Res>
    implements $CreateQuestionRequestCopyWith<$Res> {
  factory _$$CreateQuestionRequestImplCopyWith(
          _$CreateQuestionRequestImpl value,
          $Res Function(_$CreateQuestionRequestImpl) then) =
      __$$CreateQuestionRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String question, String answer, String password});
}

/// @nodoc
class __$$CreateQuestionRequestImplCopyWithImpl<$Res>
    extends _$CreateQuestionRequestCopyWithImpl<$Res,
        _$CreateQuestionRequestImpl>
    implements _$$CreateQuestionRequestImplCopyWith<$Res> {
  __$$CreateQuestionRequestImplCopyWithImpl(_$CreateQuestionRequestImpl _value,
      $Res Function(_$CreateQuestionRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? answer = null,
    Object? password = null,
  }) {
    return _then(_$CreateQuestionRequestImpl(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateQuestionRequestImpl implements _CreateQuestionRequest {
  const _$CreateQuestionRequestImpl(
      {required this.question, required this.answer, required this.password});

  factory _$CreateQuestionRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateQuestionRequestImplFromJson(json);

  @override
  final String question;
  @override
  final String answer;
  @override
  final String password;

  @override
  String toString() {
    return 'CreateQuestionRequest(question: $question, answer: $answer, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateQuestionRequestImpl &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, question, answer, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateQuestionRequestImplCopyWith<_$CreateQuestionRequestImpl>
      get copyWith => __$$CreateQuestionRequestImplCopyWithImpl<
          _$CreateQuestionRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateQuestionRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateQuestionRequest implements CreateQuestionRequest {
  const factory _CreateQuestionRequest(
      {required final String question,
      required final String answer,
      required final String password}) = _$CreateQuestionRequestImpl;

  factory _CreateQuestionRequest.fromJson(Map<String, dynamic> json) =
      _$CreateQuestionRequestImpl.fromJson;

  @override
  String get question;
  @override
  String get answer;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$CreateQuestionRequestImplCopyWith<_$CreateQuestionRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
