// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shareholders.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Shareholders _$ShareholdersFromJson(Map<String, dynamic> json) {
  return _Shareholders.fromJson(json);
}

/// @nodoc
mixin _$Shareholders {
  int get id => throw _privateConstructorUsedError;
  int get businessId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get verified => throw _privateConstructorUsedError;
  String get designation => throw _privateConstructorUsedError;
  String? get bvn => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShareholdersCopyWith<Shareholders> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShareholdersCopyWith<$Res> {
  factory $ShareholdersCopyWith(
          Shareholders value, $Res Function(Shareholders) then) =
      _$ShareholdersCopyWithImpl<$Res, Shareholders>;
  @useResult
  $Res call(
      {int id,
      int businessId,
      String name,
      bool verified,
      String designation,
      String? bvn,
      String? phone,
      String? createdAt,
      String? address});
}

/// @nodoc
class _$ShareholdersCopyWithImpl<$Res, $Val extends Shareholders>
    implements $ShareholdersCopyWith<$Res> {
  _$ShareholdersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? businessId = null,
    Object? name = null,
    Object? verified = null,
    Object? designation = null,
    Object? bvn = freezed,
    Object? phone = freezed,
    Object? createdAt = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      businessId: null == businessId
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
      designation: null == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String,
      bvn: freezed == bvn
          ? _value.bvn
          : bvn // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShareholdersImplCopyWith<$Res>
    implements $ShareholdersCopyWith<$Res> {
  factory _$$ShareholdersImplCopyWith(
          _$ShareholdersImpl value, $Res Function(_$ShareholdersImpl) then) =
      __$$ShareholdersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int businessId,
      String name,
      bool verified,
      String designation,
      String? bvn,
      String? phone,
      String? createdAt,
      String? address});
}

/// @nodoc
class __$$ShareholdersImplCopyWithImpl<$Res>
    extends _$ShareholdersCopyWithImpl<$Res, _$ShareholdersImpl>
    implements _$$ShareholdersImplCopyWith<$Res> {
  __$$ShareholdersImplCopyWithImpl(
      _$ShareholdersImpl _value, $Res Function(_$ShareholdersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? businessId = null,
    Object? name = null,
    Object? verified = null,
    Object? designation = null,
    Object? bvn = freezed,
    Object? phone = freezed,
    Object? createdAt = freezed,
    Object? address = freezed,
  }) {
    return _then(_$ShareholdersImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      businessId: null == businessId
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
      designation: null == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String,
      bvn: freezed == bvn
          ? _value.bvn
          : bvn // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShareholdersImpl implements _Shareholders {
  const _$ShareholdersImpl(
      {required this.id,
      required this.businessId,
      required this.name,
      this.verified = false,
      this.designation = "WITNESS",
      this.bvn,
      this.phone,
      this.createdAt,
      this.address});

  factory _$ShareholdersImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShareholdersImplFromJson(json);

  @override
  final int id;
  @override
  final int businessId;
  @override
  final String name;
  @override
  @JsonKey()
  final bool verified;
  @override
  @JsonKey()
  final String designation;
  @override
  final String? bvn;
  @override
  final String? phone;
  @override
  final String? createdAt;
  @override
  final String? address;

  @override
  String toString() {
    return 'Shareholders(id: $id, businessId: $businessId, name: $name, verified: $verified, designation: $designation, bvn: $bvn, phone: $phone, createdAt: $createdAt, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShareholdersImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.businessId, businessId) ||
                other.businessId == businessId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.verified, verified) ||
                other.verified == verified) &&
            (identical(other.designation, designation) ||
                other.designation == designation) &&
            (identical(other.bvn, bvn) || other.bvn == bvn) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, businessId, name, verified,
      designation, bvn, phone, createdAt, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShareholdersImplCopyWith<_$ShareholdersImpl> get copyWith =>
      __$$ShareholdersImplCopyWithImpl<_$ShareholdersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShareholdersImplToJson(
      this,
    );
  }
}

abstract class _Shareholders implements Shareholders {
  const factory _Shareholders(
      {required final int id,
      required final int businessId,
      required final String name,
      final bool verified,
      final String designation,
      final String? bvn,
      final String? phone,
      final String? createdAt,
      final String? address}) = _$ShareholdersImpl;

  factory _Shareholders.fromJson(Map<String, dynamic> json) =
      _$ShareholdersImpl.fromJson;

  @override
  int get id;
  @override
  int get businessId;
  @override
  String get name;
  @override
  bool get verified;
  @override
  String get designation;
  @override
  String? get bvn;
  @override
  String? get phone;
  @override
  String? get createdAt;
  @override
  String? get address;
  @override
  @JsonKey(ignore: true)
  _$$ShareholdersImplCopyWith<_$ShareholdersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
