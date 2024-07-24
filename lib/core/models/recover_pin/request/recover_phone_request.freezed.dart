// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recover_phone_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SendRecoverPinRequest _$SendRecoverPinRequestFromJson(
    Map<String, dynamic> json) {
  return _SendRecoverPinRequest.fromJson(json);
}

/// @nodoc
mixin _$SendRecoverPinRequest {
  String get phone => throw _privateConstructorUsedError;
  String get validationMode => throw _privateConstructorUsedError;
  String? get securityAnswer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendRecoverPinRequestCopyWith<SendRecoverPinRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendRecoverPinRequestCopyWith<$Res> {
  factory $SendRecoverPinRequestCopyWith(SendRecoverPinRequest value,
          $Res Function(SendRecoverPinRequest) then) =
      _$SendRecoverPinRequestCopyWithImpl<$Res, SendRecoverPinRequest>;
  @useResult
  $Res call({String phone, String validationMode, String? securityAnswer});
}

/// @nodoc
class _$SendRecoverPinRequestCopyWithImpl<$Res,
        $Val extends SendRecoverPinRequest>
    implements $SendRecoverPinRequestCopyWith<$Res> {
  _$SendRecoverPinRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? validationMode = null,
    Object? securityAnswer = freezed,
  }) {
    return _then(_value.copyWith(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      validationMode: null == validationMode
          ? _value.validationMode
          : validationMode // ignore: cast_nullable_to_non_nullable
              as String,
      securityAnswer: freezed == securityAnswer
          ? _value.securityAnswer
          : securityAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendRecoverPinRequestImplCopyWith<$Res>
    implements $SendRecoverPinRequestCopyWith<$Res> {
  factory _$$SendRecoverPinRequestImplCopyWith(
          _$SendRecoverPinRequestImpl value,
          $Res Function(_$SendRecoverPinRequestImpl) then) =
      __$$SendRecoverPinRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phone, String validationMode, String? securityAnswer});
}

/// @nodoc
class __$$SendRecoverPinRequestImplCopyWithImpl<$Res>
    extends _$SendRecoverPinRequestCopyWithImpl<$Res,
        _$SendRecoverPinRequestImpl>
    implements _$$SendRecoverPinRequestImplCopyWith<$Res> {
  __$$SendRecoverPinRequestImplCopyWithImpl(_$SendRecoverPinRequestImpl _value,
      $Res Function(_$SendRecoverPinRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? validationMode = null,
    Object? securityAnswer = freezed,
  }) {
    return _then(_$SendRecoverPinRequestImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      validationMode: null == validationMode
          ? _value.validationMode
          : validationMode // ignore: cast_nullable_to_non_nullable
              as String,
      securityAnswer: freezed == securityAnswer
          ? _value.securityAnswer
          : securityAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendRecoverPinRequestImpl implements _SendRecoverPinRequest {
  const _$SendRecoverPinRequestImpl(
      {required this.phone,
      this.validationMode = "recovery-phone",
      this.securityAnswer});

  factory _$SendRecoverPinRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendRecoverPinRequestImplFromJson(json);

  @override
  final String phone;
  @override
  @JsonKey()
  final String validationMode;
  @override
  final String? securityAnswer;

  @override
  String toString() {
    return 'SendRecoverPinRequest(phone: $phone, validationMode: $validationMode, securityAnswer: $securityAnswer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendRecoverPinRequestImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.validationMode, validationMode) ||
                other.validationMode == validationMode) &&
            (identical(other.securityAnswer, securityAnswer) ||
                other.securityAnswer == securityAnswer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, phone, validationMode, securityAnswer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendRecoverPinRequestImplCopyWith<_$SendRecoverPinRequestImpl>
      get copyWith => __$$SendRecoverPinRequestImplCopyWithImpl<
          _$SendRecoverPinRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendRecoverPinRequestImplToJson(
      this,
    );
  }
}

abstract class _SendRecoverPinRequest implements SendRecoverPinRequest {
  const factory _SendRecoverPinRequest(
      {required final String phone,
      final String validationMode,
      final String? securityAnswer}) = _$SendRecoverPinRequestImpl;

  factory _SendRecoverPinRequest.fromJson(Map<String, dynamic> json) =
      _$SendRecoverPinRequestImpl.fromJson;

  @override
  String get phone;
  @override
  String get validationMode;
  @override
  String? get securityAnswer;
  @override
  @JsonKey(ignore: true)
  _$$SendRecoverPinRequestImplCopyWith<_$SendRecoverPinRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
