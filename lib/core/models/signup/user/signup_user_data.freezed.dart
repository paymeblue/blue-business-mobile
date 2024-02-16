// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignupUserData _$SignupUserDataFromJson(Map<String, dynamic> json) {
  return _SignupUserData.fromJson(json);
}

/// @nodoc
mixin _$SignupUserData {
  int get id => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignupUserDataCopyWith<SignupUserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupUserDataCopyWith<$Res> {
  factory $SignupUserDataCopyWith(
          SignupUserData value, $Res Function(SignupUserData) then) =
      _$SignupUserDataCopyWithImpl<$Res, SignupUserData>;
  @useResult
  $Res call({int id, String phone, int level, String createdAt, String type});
}

/// @nodoc
class _$SignupUserDataCopyWithImpl<$Res, $Val extends SignupUserData>
    implements $SignupUserDataCopyWith<$Res> {
  _$SignupUserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? phone = null,
    Object? level = null,
    Object? createdAt = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignupUserDataImplCopyWith<$Res>
    implements $SignupUserDataCopyWith<$Res> {
  factory _$$SignupUserDataImplCopyWith(_$SignupUserDataImpl value,
          $Res Function(_$SignupUserDataImpl) then) =
      __$$SignupUserDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String phone, int level, String createdAt, String type});
}

/// @nodoc
class __$$SignupUserDataImplCopyWithImpl<$Res>
    extends _$SignupUserDataCopyWithImpl<$Res, _$SignupUserDataImpl>
    implements _$$SignupUserDataImplCopyWith<$Res> {
  __$$SignupUserDataImplCopyWithImpl(
      _$SignupUserDataImpl _value, $Res Function(_$SignupUserDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? phone = null,
    Object? level = null,
    Object? createdAt = null,
    Object? type = null,
  }) {
    return _then(_$SignupUserDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignupUserDataImpl implements _SignupUserData {
  const _$SignupUserDataImpl(
      {required this.id,
      required this.phone,
      required this.level,
      required this.createdAt,
      required this.type});

  factory _$SignupUserDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignupUserDataImplFromJson(json);

  @override
  final int id;
  @override
  final String phone;
  @override
  final int level;
  @override
  final String createdAt;
  @override
  final String type;

  @override
  String toString() {
    return 'SignupUserData(id: $id, phone: $phone, level: $level, createdAt: $createdAt, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupUserDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, phone, level, createdAt, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupUserDataImplCopyWith<_$SignupUserDataImpl> get copyWith =>
      __$$SignupUserDataImplCopyWithImpl<_$SignupUserDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignupUserDataImplToJson(
      this,
    );
  }
}

abstract class _SignupUserData implements SignupUserData {
  const factory _SignupUserData(
      {required final int id,
      required final String phone,
      required final int level,
      required final String createdAt,
      required final String type}) = _$SignupUserDataImpl;

  factory _SignupUserData.fromJson(Map<String, dynamic> json) =
      _$SignupUserDataImpl.fromJson;

  @override
  int get id;
  @override
  String get phone;
  @override
  int get level;
  @override
  String get createdAt;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$SignupUserDataImplCopyWith<_$SignupUserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
