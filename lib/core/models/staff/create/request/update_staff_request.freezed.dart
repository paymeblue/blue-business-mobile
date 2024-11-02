// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_staff_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateStaffRequest _$UpdateStaffRequestFromJson(Map<String, dynamic> json) {
  return _UpdateStaffRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateStaffRequest {
  String? get name => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  int? get branchId => throw _privateConstructorUsedError;

  /// Serializes this UpdateStaffRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateStaffRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateStaffRequestCopyWith<UpdateStaffRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateStaffRequestCopyWith<$Res> {
  factory $UpdateStaffRequestCopyWith(
          UpdateStaffRequest value, $Res Function(UpdateStaffRequest) then) =
      _$UpdateStaffRequestCopyWithImpl<$Res, UpdateStaffRequest>;
  @useResult
  $Res call(
      {String? name,
      String? phone,
      String? password,
      String? role,
      int? branchId});
}

/// @nodoc
class _$UpdateStaffRequestCopyWithImpl<$Res, $Val extends UpdateStaffRequest>
    implements $UpdateStaffRequestCopyWith<$Res> {
  _$UpdateStaffRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateStaffRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? role = freezed,
    Object? branchId = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      branchId: freezed == branchId
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateStaffRequestImplCopyWith<$Res>
    implements $UpdateStaffRequestCopyWith<$Res> {
  factory _$$UpdateStaffRequestImplCopyWith(_$UpdateStaffRequestImpl value,
          $Res Function(_$UpdateStaffRequestImpl) then) =
      __$$UpdateStaffRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? phone,
      String? password,
      String? role,
      int? branchId});
}

/// @nodoc
class __$$UpdateStaffRequestImplCopyWithImpl<$Res>
    extends _$UpdateStaffRequestCopyWithImpl<$Res, _$UpdateStaffRequestImpl>
    implements _$$UpdateStaffRequestImplCopyWith<$Res> {
  __$$UpdateStaffRequestImplCopyWithImpl(_$UpdateStaffRequestImpl _value,
      $Res Function(_$UpdateStaffRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateStaffRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? role = freezed,
    Object? branchId = freezed,
  }) {
    return _then(_$UpdateStaffRequestImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      branchId: freezed == branchId
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateStaffRequestImpl implements _UpdateStaffRequest {
  const _$UpdateStaffRequestImpl(
      {this.name, this.phone, this.password, this.role, this.branchId});

  factory _$UpdateStaffRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateStaffRequestImplFromJson(json);

  @override
  final String? name;
  @override
  final String? phone;
  @override
  final String? password;
  @override
  final String? role;
  @override
  final int? branchId;

  @override
  String toString() {
    return 'UpdateStaffRequest(name: $name, phone: $phone, password: $password, role: $role, branchId: $branchId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStaffRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.branchId, branchId) ||
                other.branchId == branchId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, phone, password, role, branchId);

  /// Create a copy of UpdateStaffRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateStaffRequestImplCopyWith<_$UpdateStaffRequestImpl> get copyWith =>
      __$$UpdateStaffRequestImplCopyWithImpl<_$UpdateStaffRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateStaffRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateStaffRequest implements UpdateStaffRequest {
  const factory _UpdateStaffRequest(
      {final String? name,
      final String? phone,
      final String? password,
      final String? role,
      final int? branchId}) = _$UpdateStaffRequestImpl;

  factory _UpdateStaffRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateStaffRequestImpl.fromJson;

  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get password;
  @override
  String? get role;
  @override
  int? get branchId;

  /// Create a copy of UpdateStaffRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateStaffRequestImplCopyWith<_$UpdateStaffRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
