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

SendPhoneRecoverPinRequest _$SendPhoneRecoverPinRequestFromJson(
    Map<String, dynamic> json) {
  return _SendPhoneRecoverPinRequest.fromJson(json);
}

/// @nodoc
mixin _$SendPhoneRecoverPinRequest {
  String get phone => throw _privateConstructorUsedError;
  String get validationMode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendPhoneRecoverPinRequestCopyWith<SendPhoneRecoverPinRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendPhoneRecoverPinRequestCopyWith<$Res> {
  factory $SendPhoneRecoverPinRequestCopyWith(SendPhoneRecoverPinRequest value,
          $Res Function(SendPhoneRecoverPinRequest) then) =
      _$SendPhoneRecoverPinRequestCopyWithImpl<$Res,
          SendPhoneRecoverPinRequest>;
  @useResult
  $Res call({String phone, String validationMode});
}

/// @nodoc
class _$SendPhoneRecoverPinRequestCopyWithImpl<$Res,
        $Val extends SendPhoneRecoverPinRequest>
    implements $SendPhoneRecoverPinRequestCopyWith<$Res> {
  _$SendPhoneRecoverPinRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? validationMode = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendPhoneRecoverPinRequestImplCopyWith<$Res>
    implements $SendPhoneRecoverPinRequestCopyWith<$Res> {
  factory _$$SendPhoneRecoverPinRequestImplCopyWith(
          _$SendPhoneRecoverPinRequestImpl value,
          $Res Function(_$SendPhoneRecoverPinRequestImpl) then) =
      __$$SendPhoneRecoverPinRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phone, String validationMode});
}

/// @nodoc
class __$$SendPhoneRecoverPinRequestImplCopyWithImpl<$Res>
    extends _$SendPhoneRecoverPinRequestCopyWithImpl<$Res,
        _$SendPhoneRecoverPinRequestImpl>
    implements _$$SendPhoneRecoverPinRequestImplCopyWith<$Res> {
  __$$SendPhoneRecoverPinRequestImplCopyWithImpl(
      _$SendPhoneRecoverPinRequestImpl _value,
      $Res Function(_$SendPhoneRecoverPinRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? validationMode = null,
  }) {
    return _then(_$SendPhoneRecoverPinRequestImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      validationMode: null == validationMode
          ? _value.validationMode
          : validationMode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendPhoneRecoverPinRequestImpl implements _SendPhoneRecoverPinRequest {
  const _$SendPhoneRecoverPinRequestImpl(
      {required this.phone, this.validationMode = "recovery-phone"});

  factory _$SendPhoneRecoverPinRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SendPhoneRecoverPinRequestImplFromJson(json);

  @override
  final String phone;
  @override
  @JsonKey()
  final String validationMode;

  @override
  String toString() {
    return 'SendPhoneRecoverPinRequest(phone: $phone, validationMode: $validationMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendPhoneRecoverPinRequestImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.validationMode, validationMode) ||
                other.validationMode == validationMode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, phone, validationMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendPhoneRecoverPinRequestImplCopyWith<_$SendPhoneRecoverPinRequestImpl>
      get copyWith => __$$SendPhoneRecoverPinRequestImplCopyWithImpl<
          _$SendPhoneRecoverPinRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendPhoneRecoverPinRequestImplToJson(
      this,
    );
  }
}

abstract class _SendPhoneRecoverPinRequest
    implements SendPhoneRecoverPinRequest {
  const factory _SendPhoneRecoverPinRequest(
      {required final String phone,
      final String validationMode}) = _$SendPhoneRecoverPinRequestImpl;

  factory _SendPhoneRecoverPinRequest.fromJson(Map<String, dynamic> json) =
      _$SendPhoneRecoverPinRequestImpl.fromJson;

  @override
  String get phone;
  @override
  String get validationMode;
  @override
  @JsonKey(ignore: true)
  _$$SendPhoneRecoverPinRequestImplCopyWith<_$SendPhoneRecoverPinRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
