// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recovery_phone_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SetRecoveryPhoneRequest _$SetRecoveryPhoneRequestFromJson(
    Map<String, dynamic> json) {
  return _SetRecoveryPhoneRequest.fromJson(json);
}

/// @nodoc
mixin _$SetRecoveryPhoneRequest {
  String get phone => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetRecoveryPhoneRequestCopyWith<SetRecoveryPhoneRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetRecoveryPhoneRequestCopyWith<$Res> {
  factory $SetRecoveryPhoneRequestCopyWith(SetRecoveryPhoneRequest value,
          $Res Function(SetRecoveryPhoneRequest) then) =
      _$SetRecoveryPhoneRequestCopyWithImpl<$Res, SetRecoveryPhoneRequest>;
  @useResult
  $Res call({String phone, String password});
}

/// @nodoc
class _$SetRecoveryPhoneRequestCopyWithImpl<$Res,
        $Val extends SetRecoveryPhoneRequest>
    implements $SetRecoveryPhoneRequestCopyWith<$Res> {
  _$SetRecoveryPhoneRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$SetRecoveryPhoneRequestImplCopyWith<$Res>
    implements $SetRecoveryPhoneRequestCopyWith<$Res> {
  factory _$$SetRecoveryPhoneRequestImplCopyWith(
          _$SetRecoveryPhoneRequestImpl value,
          $Res Function(_$SetRecoveryPhoneRequestImpl) then) =
      __$$SetRecoveryPhoneRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phone, String password});
}

/// @nodoc
class __$$SetRecoveryPhoneRequestImplCopyWithImpl<$Res>
    extends _$SetRecoveryPhoneRequestCopyWithImpl<$Res,
        _$SetRecoveryPhoneRequestImpl>
    implements _$$SetRecoveryPhoneRequestImplCopyWith<$Res> {
  __$$SetRecoveryPhoneRequestImplCopyWithImpl(
      _$SetRecoveryPhoneRequestImpl _value,
      $Res Function(_$SetRecoveryPhoneRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? password = null,
  }) {
    return _then(_$SetRecoveryPhoneRequestImpl(
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
class _$SetRecoveryPhoneRequestImpl implements _SetRecoveryPhoneRequest {
  const _$SetRecoveryPhoneRequestImpl(
      {required this.phone, required this.password});

  factory _$SetRecoveryPhoneRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetRecoveryPhoneRequestImplFromJson(json);

  @override
  final String phone;
  @override
  final String password;

  @override
  String toString() {
    return 'SetRecoveryPhoneRequest(phone: $phone, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetRecoveryPhoneRequestImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, phone, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetRecoveryPhoneRequestImplCopyWith<_$SetRecoveryPhoneRequestImpl>
      get copyWith => __$$SetRecoveryPhoneRequestImplCopyWithImpl<
          _$SetRecoveryPhoneRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetRecoveryPhoneRequestImplToJson(
      this,
    );
  }
}

abstract class _SetRecoveryPhoneRequest implements SetRecoveryPhoneRequest {
  const factory _SetRecoveryPhoneRequest(
      {required final String phone,
      required final String password}) = _$SetRecoveryPhoneRequestImpl;

  factory _SetRecoveryPhoneRequest.fromJson(Map<String, dynamic> json) =
      _$SetRecoveryPhoneRequestImpl.fromJson;

  @override
  String get phone;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$SetRecoveryPhoneRequestImplCopyWith<_$SetRecoveryPhoneRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
