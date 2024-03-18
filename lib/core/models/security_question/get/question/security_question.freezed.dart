// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'security_question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SecurityQuestion _$SecurityQuestionFromJson(Map<String, dynamic> json) {
  return _SecurityQuestion.fromJson(json);
}

/// @nodoc
mixin _$SecurityQuestion {
  int get id => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SecurityQuestionCopyWith<SecurityQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecurityQuestionCopyWith<$Res> {
  factory $SecurityQuestionCopyWith(
          SecurityQuestion value, $Res Function(SecurityQuestion) then) =
      _$SecurityQuestionCopyWithImpl<$Res, SecurityQuestion>;
  @useResult
  $Res call({int id, String question});
}

/// @nodoc
class _$SecurityQuestionCopyWithImpl<$Res, $Val extends SecurityQuestion>
    implements $SecurityQuestionCopyWith<$Res> {
  _$SecurityQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SecurityQuestionImplCopyWith<$Res>
    implements $SecurityQuestionCopyWith<$Res> {
  factory _$$SecurityQuestionImplCopyWith(_$SecurityQuestionImpl value,
          $Res Function(_$SecurityQuestionImpl) then) =
      __$$SecurityQuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String question});
}

/// @nodoc
class __$$SecurityQuestionImplCopyWithImpl<$Res>
    extends _$SecurityQuestionCopyWithImpl<$Res, _$SecurityQuestionImpl>
    implements _$$SecurityQuestionImplCopyWith<$Res> {
  __$$SecurityQuestionImplCopyWithImpl(_$SecurityQuestionImpl _value,
      $Res Function(_$SecurityQuestionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
  }) {
    return _then(_$SecurityQuestionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SecurityQuestionImpl implements _SecurityQuestion {
  const _$SecurityQuestionImpl({required this.id, required this.question});

  factory _$SecurityQuestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SecurityQuestionImplFromJson(json);

  @override
  final int id;
  @override
  final String question;

  @override
  String toString() {
    return 'SecurityQuestion(id: $id, question: $question)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SecurityQuestionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, question);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SecurityQuestionImplCopyWith<_$SecurityQuestionImpl> get copyWith =>
      __$$SecurityQuestionImplCopyWithImpl<_$SecurityQuestionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SecurityQuestionImplToJson(
      this,
    );
  }
}

abstract class _SecurityQuestion implements SecurityQuestion {
  const factory _SecurityQuestion(
      {required final int id,
      required final String question}) = _$SecurityQuestionImpl;

  factory _SecurityQuestion.fromJson(Map<String, dynamic> json) =
      _$SecurityQuestionImpl.fromJson;

  @override
  int get id;
  @override
  String get question;
  @override
  @JsonKey(ignore: true)
  _$$SecurityQuestionImplCopyWith<_$SecurityQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
