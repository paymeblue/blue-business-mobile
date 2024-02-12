// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_profile_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignupProfileRequest _$SignupProfileRequestFromJson(Map<String, dynamic> json) {
  return _SignupProfileRequest.fromJson(json);
}

/// @nodoc
mixin _$SignupProfileRequest {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String? get middleName => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get passwordConfirmation => throw _privateConstructorUsedError;
  String get passcode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignupProfileRequestCopyWith<SignupProfileRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupProfileRequestCopyWith<$Res> {
  factory $SignupProfileRequestCopyWith(SignupProfileRequest value,
          $Res Function(SignupProfileRequest) then) =
      _$SignupProfileRequestCopyWithImpl<$Res, SignupProfileRequest>;
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String? middleName,
      String password,
      String passwordConfirmation,
      String passcode});
}

/// @nodoc
class _$SignupProfileRequestCopyWithImpl<$Res,
        $Val extends SignupProfileRequest>
    implements $SignupProfileRequestCopyWith<$Res> {
  _$SignupProfileRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? middleName = freezed,
    Object? password = null,
    Object? passwordConfirmation = null,
    Object? passcode = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirmation: null == passwordConfirmation
          ? _value.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as String,
      passcode: null == passcode
          ? _value.passcode
          : passcode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignupProfileRequestImplCopyWith<$Res>
    implements $SignupProfileRequestCopyWith<$Res> {
  factory _$$SignupProfileRequestImplCopyWith(_$SignupProfileRequestImpl value,
          $Res Function(_$SignupProfileRequestImpl) then) =
      __$$SignupProfileRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String? middleName,
      String password,
      String passwordConfirmation,
      String passcode});
}

/// @nodoc
class __$$SignupProfileRequestImplCopyWithImpl<$Res>
    extends _$SignupProfileRequestCopyWithImpl<$Res, _$SignupProfileRequestImpl>
    implements _$$SignupProfileRequestImplCopyWith<$Res> {
  __$$SignupProfileRequestImplCopyWithImpl(_$SignupProfileRequestImpl _value,
      $Res Function(_$SignupProfileRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? middleName = freezed,
    Object? password = null,
    Object? passwordConfirmation = null,
    Object? passcode = null,
  }) {
    return _then(_$SignupProfileRequestImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirmation: null == passwordConfirmation
          ? _value.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as String,
      passcode: null == passcode
          ? _value.passcode
          : passcode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignupProfileRequestImpl implements _SignupProfileRequest {
  const _$SignupProfileRequestImpl(
      {this.firstName = "",
      this.lastName = "",
      this.middleName,
      this.password = "",
      this.passwordConfirmation = "",
      this.passcode = ""});

  factory _$SignupProfileRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignupProfileRequestImplFromJson(json);

  @override
  @JsonKey()
  final String firstName;
  @override
  @JsonKey()
  final String lastName;
  @override
  final String? middleName;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String passwordConfirmation;
  @override
  @JsonKey()
  final String passcode;

  @override
  String toString() {
    return 'SignupProfileRequest(firstName: $firstName, lastName: $lastName, middleName: $middleName, password: $password, passwordConfirmation: $passwordConfirmation, passcode: $passcode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupProfileRequestImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordConfirmation, passwordConfirmation) ||
                other.passwordConfirmation == passwordConfirmation) &&
            (identical(other.passcode, passcode) ||
                other.passcode == passcode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, middleName,
      password, passwordConfirmation, passcode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupProfileRequestImplCopyWith<_$SignupProfileRequestImpl>
      get copyWith =>
          __$$SignupProfileRequestImplCopyWithImpl<_$SignupProfileRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignupProfileRequestImplToJson(
      this,
    );
  }
}

abstract class _SignupProfileRequest implements SignupProfileRequest {
  const factory _SignupProfileRequest(
      {final String firstName,
      final String lastName,
      final String? middleName,
      final String password,
      final String passwordConfirmation,
      final String passcode}) = _$SignupProfileRequestImpl;

  factory _SignupProfileRequest.fromJson(Map<String, dynamic> json) =
      _$SignupProfileRequestImpl.fromJson;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String? get middleName;
  @override
  String get password;
  @override
  String get passwordConfirmation;
  @override
  String get passcode;
  @override
  @JsonKey(ignore: true)
  _$$SignupProfileRequestImplCopyWith<_$SignupProfileRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
