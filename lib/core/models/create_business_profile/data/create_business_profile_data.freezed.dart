// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_business_profile_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateBusinessProfileData _$CreateBusinessProfileDataFromJson(
    Map<String, dynamic> json) {
  return _CreateBusinessProfileData.fromJson(json);
}

/// @nodoc
mixin _$CreateBusinessProfileData {
  int get id => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  bool get businessProfileCompleted => throw _privateConstructorUsedError;
  bool get businessDetailsCompleted => throw _privateConstructorUsedError;
  bool get businessKycCompleted => throw _privateConstructorUsedError;
  List<Shareholders> get shareholders => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateBusinessProfileDataCopyWith<CreateBusinessProfileData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateBusinessProfileDataCopyWith<$Res> {
  factory $CreateBusinessProfileDataCopyWith(CreateBusinessProfileData value,
          $Res Function(CreateBusinessProfileData) then) =
      _$CreateBusinessProfileDataCopyWithImpl<$Res, CreateBusinessProfileData>;
  @useResult
  $Res call(
      {int id,
      String phone,
      int level,
      bool businessProfileCompleted,
      bool businessDetailsCompleted,
      bool businessKycCompleted,
      List<Shareholders> shareholders,
      String? createdAt});
}

/// @nodoc
class _$CreateBusinessProfileDataCopyWithImpl<$Res,
        $Val extends CreateBusinessProfileData>
    implements $CreateBusinessProfileDataCopyWith<$Res> {
  _$CreateBusinessProfileDataCopyWithImpl(this._value, this._then);

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
    Object? shareholders = null,
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
      shareholders: null == shareholders
          ? _value.shareholders
          : shareholders // ignore: cast_nullable_to_non_nullable
              as List<Shareholders>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateBusinessProfileDataImplCopyWith<$Res>
    implements $CreateBusinessProfileDataCopyWith<$Res> {
  factory _$$CreateBusinessProfileDataImplCopyWith(
          _$CreateBusinessProfileDataImpl value,
          $Res Function(_$CreateBusinessProfileDataImpl) then) =
      __$$CreateBusinessProfileDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String phone,
      int level,
      bool businessProfileCompleted,
      bool businessDetailsCompleted,
      bool businessKycCompleted,
      List<Shareholders> shareholders,
      String? createdAt});
}

/// @nodoc
class __$$CreateBusinessProfileDataImplCopyWithImpl<$Res>
    extends _$CreateBusinessProfileDataCopyWithImpl<$Res,
        _$CreateBusinessProfileDataImpl>
    implements _$$CreateBusinessProfileDataImplCopyWith<$Res> {
  __$$CreateBusinessProfileDataImplCopyWithImpl(
      _$CreateBusinessProfileDataImpl _value,
      $Res Function(_$CreateBusinessProfileDataImpl) _then)
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
    Object? shareholders = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$CreateBusinessProfileDataImpl(
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
      shareholders: null == shareholders
          ? _value._shareholders
          : shareholders // ignore: cast_nullable_to_non_nullable
              as List<Shareholders>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateBusinessProfileDataImpl implements _CreateBusinessProfileData {
  const _$CreateBusinessProfileDataImpl(
      {required this.id,
      required this.phone,
      required this.level,
      this.businessProfileCompleted = false,
      this.businessDetailsCompleted = false,
      this.businessKycCompleted = false,
      final List<Shareholders> shareholders = const [],
      this.createdAt})
      : _shareholders = shareholders;

  factory _$CreateBusinessProfileDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateBusinessProfileDataImplFromJson(json);

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
  final List<Shareholders> _shareholders;
  @override
  @JsonKey()
  List<Shareholders> get shareholders {
    if (_shareholders is EqualUnmodifiableListView) return _shareholders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shareholders);
  }

  @override
  final String? createdAt;

  @override
  String toString() {
    return 'CreateBusinessProfileData(id: $id, phone: $phone, level: $level, businessProfileCompleted: $businessProfileCompleted, businessDetailsCompleted: $businessDetailsCompleted, businessKycCompleted: $businessKycCompleted, shareholders: $shareholders, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateBusinessProfileDataImpl &&
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
            const DeepCollectionEquality()
                .equals(other._shareholders, _shareholders) &&
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
      const DeepCollectionEquality().hash(_shareholders),
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateBusinessProfileDataImplCopyWith<_$CreateBusinessProfileDataImpl>
      get copyWith => __$$CreateBusinessProfileDataImplCopyWithImpl<
          _$CreateBusinessProfileDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateBusinessProfileDataImplToJson(
      this,
    );
  }
}

abstract class _CreateBusinessProfileData implements CreateBusinessProfileData {
  const factory _CreateBusinessProfileData(
      {required final int id,
      required final String phone,
      required final int level,
      final bool businessProfileCompleted,
      final bool businessDetailsCompleted,
      final bool businessKycCompleted,
      final List<Shareholders> shareholders,
      final String? createdAt}) = _$CreateBusinessProfileDataImpl;

  factory _CreateBusinessProfileData.fromJson(Map<String, dynamic> json) =
      _$CreateBusinessProfileDataImpl.fromJson;

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
  List<Shareholders> get shareholders;
  @override
  String? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$CreateBusinessProfileDataImplCopyWith<_$CreateBusinessProfileDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
