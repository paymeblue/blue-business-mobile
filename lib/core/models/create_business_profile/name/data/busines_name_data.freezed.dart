// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'busines_name_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BusinessNameData _$BusinessNameDataFromJson(Map<String, dynamic> json) {
  return _BusinessNameData.fromJson(json);
}

/// @nodoc
mixin _$BusinessNameData {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BusinessNameDataCopyWith<BusinessNameData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessNameDataCopyWith<$Res> {
  factory $BusinessNameDataCopyWith(
          BusinessNameData value, $Res Function(BusinessNameData) then) =
      _$BusinessNameDataCopyWithImpl<$Res, BusinessNameData>;
  @useResult
  $Res call({int id, int userId, int level, String createdAt});
}

/// @nodoc
class _$BusinessNameDataCopyWithImpl<$Res, $Val extends BusinessNameData>
    implements $BusinessNameDataCopyWith<$Res> {
  _$BusinessNameDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? level = null,
    Object? createdAt = null,
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
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BusinessNameDataImplCopyWith<$Res>
    implements $BusinessNameDataCopyWith<$Res> {
  factory _$$BusinessNameDataImplCopyWith(_$BusinessNameDataImpl value,
          $Res Function(_$BusinessNameDataImpl) then) =
      __$$BusinessNameDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int userId, int level, String createdAt});
}

/// @nodoc
class __$$BusinessNameDataImplCopyWithImpl<$Res>
    extends _$BusinessNameDataCopyWithImpl<$Res, _$BusinessNameDataImpl>
    implements _$$BusinessNameDataImplCopyWith<$Res> {
  __$$BusinessNameDataImplCopyWithImpl(_$BusinessNameDataImpl _value,
      $Res Function(_$BusinessNameDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? level = null,
    Object? createdAt = null,
  }) {
    return _then(_$BusinessNameDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BusinessNameDataImpl implements _BusinessNameData {
  const _$BusinessNameDataImpl(
      {required this.id,
      required this.userId,
      required this.level,
      required this.createdAt});

  factory _$BusinessNameDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BusinessNameDataImplFromJson(json);

  @override
  final int id;
  @override
  final int userId;
  @override
  final int level;
  @override
  final String createdAt;

  @override
  String toString() {
    return 'BusinessNameData(id: $id, userId: $userId, level: $level, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessNameDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, level, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessNameDataImplCopyWith<_$BusinessNameDataImpl> get copyWith =>
      __$$BusinessNameDataImplCopyWithImpl<_$BusinessNameDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessNameDataImplToJson(
      this,
    );
  }
}

abstract class _BusinessNameData implements BusinessNameData {
  const factory _BusinessNameData(
      {required final int id,
      required final int userId,
      required final int level,
      required final String createdAt}) = _$BusinessNameDataImpl;

  factory _BusinessNameData.fromJson(Map<String, dynamic> json) =
      _$BusinessNameDataImpl.fromJson;

  @override
  int get id;
  @override
  int get userId;
  @override
  int get level;
  @override
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$BusinessNameDataImplCopyWith<_$BusinessNameDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
