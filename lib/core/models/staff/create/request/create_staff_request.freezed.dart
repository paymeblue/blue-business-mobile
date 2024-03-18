// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_staff_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateStaffRequest _$CreateStaffRequestFromJson(Map<String, dynamic> json) {
  return _CreateStaffRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateStaffRequest {
  String get name => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateStaffRequestCopyWith<CreateStaffRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateStaffRequestCopyWith<$Res> {
  factory $CreateStaffRequestCopyWith(
          CreateStaffRequest value, $Res Function(CreateStaffRequest) then) =
      _$CreateStaffRequestCopyWithImpl<$Res, CreateStaffRequest>;
  @useResult
  $Res call({String name, String phone, String password});
}

/// @nodoc
class _$CreateStaffRequestCopyWithImpl<$Res, $Val extends CreateStaffRequest>
    implements $CreateStaffRequestCopyWith<$Res> {
  _$CreateStaffRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phone = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateStaffRequestImplCopyWith<$Res>
    implements $CreateStaffRequestCopyWith<$Res> {
  factory _$$CreateStaffRequestImplCopyWith(_$CreateStaffRequestImpl value,
          $Res Function(_$CreateStaffRequestImpl) then) =
      __$$CreateStaffRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String phone, String password});
}

/// @nodoc
class __$$CreateStaffRequestImplCopyWithImpl<$Res>
    extends _$CreateStaffRequestCopyWithImpl<$Res, _$CreateStaffRequestImpl>
    implements _$$CreateStaffRequestImplCopyWith<$Res> {
  __$$CreateStaffRequestImplCopyWithImpl(_$CreateStaffRequestImpl _value,
      $Res Function(_$CreateStaffRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phone = null,
    Object? password = null,
  }) {
    return _then(_$CreateStaffRequestImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateStaffRequestImpl implements _CreateStaffRequest {
  const _$CreateStaffRequestImpl(
      {required this.name, required this.phone, required this.password});

  factory _$CreateStaffRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateStaffRequestImplFromJson(json);

  @override
  final String name;
  @override
  final String phone;
  @override
  final String password;

  @override
  String toString() {
    return 'CreateStaffRequest(name: $name, phone: $phone, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateStaffRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, phone, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateStaffRequestImplCopyWith<_$CreateStaffRequestImpl> get copyWith =>
      __$$CreateStaffRequestImplCopyWithImpl<_$CreateStaffRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateStaffRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateStaffRequest implements CreateStaffRequest {
  const factory _CreateStaffRequest(
      {required final String name,
      required final String phone,
      required final String password}) = _$CreateStaffRequestImpl;

  factory _CreateStaffRequest.fromJson(Map<String, dynamic> json) =
      _$CreateStaffRequestImpl.fromJson;

  @override
  String get name;
  @override
  String get phone;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$CreateStaffRequestImplCopyWith<_$CreateStaffRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
