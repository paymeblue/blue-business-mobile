// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_shareholders_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateShareholdersData _$CreateShareholdersDataFromJson(
    Map<String, dynamic> json) {
  return _CreateShareholdersData.fromJson(json);
}

/// @nodoc
mixin _$CreateShareholdersData {
  String get name => throw _privateConstructorUsedError;
  String get bvn => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  bool get verified => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateShareholdersDataCopyWith<CreateShareholdersData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateShareholdersDataCopyWith<$Res> {
  factory $CreateShareholdersDataCopyWith(CreateShareholdersData value,
          $Res Function(CreateShareholdersData) then) =
      _$CreateShareholdersDataCopyWithImpl<$Res, CreateShareholdersData>;
  @useResult
  $Res call(
      {String name, String bvn, int id, bool verified, String? createdAt});
}

/// @nodoc
class _$CreateShareholdersDataCopyWithImpl<$Res,
        $Val extends CreateShareholdersData>
    implements $CreateShareholdersDataCopyWith<$Res> {
  _$CreateShareholdersDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? bvn = null,
    Object? id = null,
    Object? verified = null,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      bvn: null == bvn
          ? _value.bvn
          : bvn // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateShareholdersDataImplCopyWith<$Res>
    implements $CreateShareholdersDataCopyWith<$Res> {
  factory _$$CreateShareholdersDataImplCopyWith(
          _$CreateShareholdersDataImpl value,
          $Res Function(_$CreateShareholdersDataImpl) then) =
      __$$CreateShareholdersDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, String bvn, int id, bool verified, String? createdAt});
}

/// @nodoc
class __$$CreateShareholdersDataImplCopyWithImpl<$Res>
    extends _$CreateShareholdersDataCopyWithImpl<$Res,
        _$CreateShareholdersDataImpl>
    implements _$$CreateShareholdersDataImplCopyWith<$Res> {
  __$$CreateShareholdersDataImplCopyWithImpl(
      _$CreateShareholdersDataImpl _value,
      $Res Function(_$CreateShareholdersDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? bvn = null,
    Object? id = null,
    Object? verified = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$CreateShareholdersDataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      bvn: null == bvn
          ? _value.bvn
          : bvn // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
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
class _$CreateShareholdersDataImpl implements _CreateShareholdersData {
  const _$CreateShareholdersDataImpl(
      {required this.name,
      required this.bvn,
      required this.id,
      this.verified = false,
      this.createdAt});

  factory _$CreateShareholdersDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateShareholdersDataImplFromJson(json);

  @override
  final String name;
  @override
  final String bvn;
  @override
  final int id;
  @override
  @JsonKey()
  final bool verified;
  @override
  final String? createdAt;

  @override
  String toString() {
    return 'CreateShareholdersData(name: $name, bvn: $bvn, id: $id, verified: $verified, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateShareholdersDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.bvn, bvn) || other.bvn == bvn) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.verified, verified) ||
                other.verified == verified) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, bvn, id, verified, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateShareholdersDataImplCopyWith<_$CreateShareholdersDataImpl>
      get copyWith => __$$CreateShareholdersDataImplCopyWithImpl<
          _$CreateShareholdersDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateShareholdersDataImplToJson(
      this,
    );
  }
}

abstract class _CreateShareholdersData implements CreateShareholdersData {
  const factory _CreateShareholdersData(
      {required final String name,
      required final String bvn,
      required final int id,
      final bool verified,
      final String? createdAt}) = _$CreateShareholdersDataImpl;

  factory _CreateShareholdersData.fromJson(Map<String, dynamic> json) =
      _$CreateShareholdersDataImpl.fromJson;

  @override
  String get name;
  @override
  String get bvn;
  @override
  int get id;
  @override
  bool get verified;
  @override
  String? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$CreateShareholdersDataImplCopyWith<_$CreateShareholdersDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
