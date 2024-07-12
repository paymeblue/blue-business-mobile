// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'staff_role.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StaffRole _$StaffRoleFromJson(Map<String, dynamic> json) {
  return _StaffRole.fromJson(json);
}

/// @nodoc
mixin _$StaffRole {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StaffRoleCopyWith<StaffRole> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffRoleCopyWith<$Res> {
  factory $StaffRoleCopyWith(StaffRole value, $Res Function(StaffRole) then) =
      _$StaffRoleCopyWithImpl<$Res, StaffRole>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$StaffRoleCopyWithImpl<$Res, $Val extends StaffRole>
    implements $StaffRoleCopyWith<$Res> {
  _$StaffRoleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StaffRoleImplCopyWith<$Res>
    implements $StaffRoleCopyWith<$Res> {
  factory _$$StaffRoleImplCopyWith(
          _$StaffRoleImpl value, $Res Function(_$StaffRoleImpl) then) =
      __$$StaffRoleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$StaffRoleImplCopyWithImpl<$Res>
    extends _$StaffRoleCopyWithImpl<$Res, _$StaffRoleImpl>
    implements _$$StaffRoleImplCopyWith<$Res> {
  __$$StaffRoleImplCopyWithImpl(
      _$StaffRoleImpl _value, $Res Function(_$StaffRoleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$StaffRoleImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StaffRoleImpl implements _StaffRole {
  const _$StaffRoleImpl({required this.id, required this.name});

  factory _$StaffRoleImpl.fromJson(Map<String, dynamic> json) =>
      _$$StaffRoleImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'StaffRole(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaffRoleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StaffRoleImplCopyWith<_$StaffRoleImpl> get copyWith =>
      __$$StaffRoleImplCopyWithImpl<_$StaffRoleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StaffRoleImplToJson(
      this,
    );
  }
}

abstract class _StaffRole implements StaffRole {
  const factory _StaffRole(
      {required final int id, required final String name}) = _$StaffRoleImpl;

  factory _StaffRole.fromJson(Map<String, dynamic> json) =
      _$StaffRoleImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$StaffRoleImplCopyWith<_$StaffRoleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
