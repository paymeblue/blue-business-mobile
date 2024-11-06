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
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this GetQuestionData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetQuestionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetQuestionDataCopyWith<GetQuestionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetQuestionDataCopyWith<$Res> {
  factory $GetQuestionDataCopyWith(
          GetQuestionData value, $Res Function(GetQuestionData) then) =
      _$GetQuestionDataCopyWithImpl<$Res, GetQuestionData>;
  @useResult
  $Res call({int id, int userId, String question, String? createdAt});
}

/// @nodoc
class _$GetQuestionDataCopyWithImpl<$Res, $Val extends GetQuestionData>
    implements $GetQuestionDataCopyWith<$Res> {
  _$GetQuestionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetQuestionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? question = null,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
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
  $Res call({int id, int userId, String question, String? createdAt});
}

/// @nodoc
class __$$GetQuestionDataImplCopyWithImpl<$Res>
    extends _$GetQuestionDataCopyWithImpl<$Res, _$GetQuestionDataImpl>
    implements _$$GetQuestionDataImplCopyWith<$Res> {
  __$$GetQuestionDataImplCopyWithImpl(
      _$GetQuestionDataImpl _value, $Res Function(_$GetQuestionDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetQuestionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? question = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$GetQuestionDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetQuestionDataImpl implements _GetQuestionData {
  const _$GetQuestionDataImpl(
      {required this.id,
      required this.userId,
      required this.question,
      this.createdAt});

  factory _$GetQuestionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetQuestionDataImplFromJson(json);

  @override
  final int id;
  @override
  final int userId;
  @override
  final String question;
  @override
  final String? createdAt;

  @override
  String toString() {
    return 'GetQuestionData(id: $id, userId: $userId, question: $question, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetQuestionDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, question, createdAt);

  /// Create a copy of GetQuestionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
  const factory _GetQuestionData(
      {required final int id,
      required final int userId,
      required final String question,
      final String? createdAt}) = _$GetQuestionDataImpl;

  factory _GetQuestionData.fromJson(Map<String, dynamic> json) =
      _$GetQuestionDataImpl.fromJson;

  @override
  int get id;
  @override
  int get userId;
  @override
  String get question;
  @override
  String? get createdAt;

  /// Create a copy of GetQuestionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetQuestionDataImplCopyWith<_$GetQuestionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
