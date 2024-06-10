// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignupData _$SignupDataFromJson(Map<String, dynamic> json) {
  return _SignupData.fromJson(json);
}

/// @nodoc
mixin _$SignupData {
  int get id => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  bool get businessProfileCompleted => throw _privateConstructorUsedError;
  bool get businessDetailsCompleted => throw _privateConstructorUsedError;
  bool get businessKycCompleted => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignupDataCopyWith<SignupData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupDataCopyWith<$Res> {
  factory $SignupDataCopyWith(
          SignupData value, $Res Function(SignupData) then) =
      _$SignupDataCopyWithImpl<$Res, SignupData>;
  @useResult
  $Res call(
      {int id,
      String phone,
      int level,
      bool businessProfileCompleted,
      bool businessDetailsCompleted,
      bool businessKycCompleted,
      String? createdAt});
}

/// @nodoc
class _$SignupDataCopyWithImpl<$Res, $Val extends SignupData>
    implements $SignupDataCopyWith<$Res> {
  _$SignupDataCopyWithImpl(this._value, this._then);

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
    Object? businessProfileCompleted = null,
    Object? businessDetailsCompleted = null,
    Object? businessKycCompleted = null,
    Object? createdAt = freezed,
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
      businessProfileCompleted: null == businessProfileCompleted
          ? _value.businessProfileCompleted
          : businessProfileCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      businessDetailsCompleted: null == businessDetailsCompleted
          ? _value.businessDetailsCompleted
          : businessDetailsCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      businessKycCompleted: null == businessKycCompleted
          ? _value.businessKycCompleted
          : businessKycCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignupDataImplCopyWith<$Res>
    implements $SignupDataCopyWith<$Res> {
  factory _$$SignupDataImplCopyWith(
          _$SignupDataImpl value, $Res Function(_$SignupDataImpl) then) =
      __$$SignupDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String phone,
      int level,
      bool businessProfileCompleted,
      bool businessDetailsCompleted,
      bool businessKycCompleted,
      String? createdAt});
}

/// @nodoc
class __$$SignupDataImplCopyWithImpl<$Res>
    extends _$SignupDataCopyWithImpl<$Res, _$SignupDataImpl>
    implements _$$SignupDataImplCopyWith<$Res> {
  __$$SignupDataImplCopyWithImpl(
      _$SignupDataImpl _value, $Res Function(_$SignupDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? phone = null,
    Object? level = null,
    Object? businessProfileCompleted = null,
    Object? businessDetailsCompleted = null,
    Object? businessKycCompleted = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$SignupDataImpl(
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
      businessProfileCompleted: null == businessProfileCompleted
          ? _value.businessProfileCompleted
          : businessProfileCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      businessDetailsCompleted: null == businessDetailsCompleted
          ? _value.businessDetailsCompleted
          : businessDetailsCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      businessKycCompleted: null == businessKycCompleted
          ? _value.businessKycCompleted
          : businessKycCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignupDataImpl implements _SignupData {
  const _$SignupDataImpl(
      {required this.id,
      required this.phone,
      required this.level,
      this.businessProfileCompleted = false,
      this.businessDetailsCompleted = false,
      this.businessKycCompleted = false,
      this.createdAt});

  factory _$SignupDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignupDataImplFromJson(json);

  @override
  final int id;
  @override
  final String phone;
  @override
  final int level;
  @override
  @JsonKey()
  final bool businessProfileCompleted;
  @override
  @JsonKey()
  final bool businessDetailsCompleted;
  @override
  @JsonKey()
  final bool businessKycCompleted;
  @override
  final String? createdAt;

  @override
  String toString() {
    return 'SignupData(id: $id, phone: $phone, level: $level, businessProfileCompleted: $businessProfileCompleted, businessDetailsCompleted: $businessDetailsCompleted, businessKycCompleted: $businessKycCompleted, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(
                    other.businessProfileCompleted, businessProfileCompleted) ||
                other.businessProfileCompleted == businessProfileCompleted) &&
            (identical(
                    other.businessDetailsCompleted, businessDetailsCompleted) ||
                other.businessDetailsCompleted == businessDetailsCompleted) &&
            (identical(other.businessKycCompleted, businessKycCompleted) ||
                other.businessKycCompleted == businessKycCompleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      phone,
      level,
      businessProfileCompleted,
      businessDetailsCompleted,
      businessKycCompleted,
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupDataImplCopyWith<_$SignupDataImpl> get copyWith =>
      __$$SignupDataImplCopyWithImpl<_$SignupDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignupDataImplToJson(
      this,
    );
  }
}

abstract class _SignupData implements SignupData {
  const factory _SignupData(
      {required final int id,
      required final String phone,
      required final int level,
      final bool businessProfileCompleted,
      final bool businessDetailsCompleted,
      final bool businessKycCompleted,
      final String? createdAt}) = _$SignupDataImpl;

  factory _SignupData.fromJson(Map<String, dynamic> json) =
      _$SignupDataImpl.fromJson;

  @override
  int get id;
  @override
  String get phone;
  @override
  int get level;
  @override
  bool get businessProfileCompleted;
  @override
  bool get businessDetailsCompleted;
  @override
  bool get businessKycCompleted;
  @override
  String? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$SignupDataImplCopyWith<_$SignupDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
