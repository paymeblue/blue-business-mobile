// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_new_phone_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifyNewPhoneRequest _$VerifyNewPhoneRequestFromJson(
    Map<String, dynamic> json) {
  return _VerifyNewPhoneRequest.fromJson(json);
}

/// @nodoc
mixin _$VerifyNewPhoneRequest {
  String get otp => throw _privateConstructorUsedError;
  String get reference => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyNewPhoneRequestCopyWith<VerifyNewPhoneRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyNewPhoneRequestCopyWith<$Res> {
  factory $VerifyNewPhoneRequestCopyWith(VerifyNewPhoneRequest value,
          $Res Function(VerifyNewPhoneRequest) then) =
      _$VerifyNewPhoneRequestCopyWithImpl<$Res, VerifyNewPhoneRequest>;
  @useResult
  $Res call({String otp, String reference});
}

/// @nodoc
class _$VerifyNewPhoneRequestCopyWithImpl<$Res,
        $Val extends VerifyNewPhoneRequest>
    implements $VerifyNewPhoneRequestCopyWith<$Res> {
  _$VerifyNewPhoneRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
    Object? reference = null,
  }) {
    return _then(_value.copyWith(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyNewPhoneRequestImplCopyWith<$Res>
    implements $VerifyNewPhoneRequestCopyWith<$Res> {
  factory _$$VerifyNewPhoneRequestImplCopyWith(
          _$VerifyNewPhoneRequestImpl value,
          $Res Function(_$VerifyNewPhoneRequestImpl) then) =
      __$$VerifyNewPhoneRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String otp, String reference});
}

/// @nodoc
class __$$VerifyNewPhoneRequestImplCopyWithImpl<$Res>
    extends _$VerifyNewPhoneRequestCopyWithImpl<$Res,
        _$VerifyNewPhoneRequestImpl>
    implements _$$VerifyNewPhoneRequestImplCopyWith<$Res> {
  __$$VerifyNewPhoneRequestImplCopyWithImpl(_$VerifyNewPhoneRequestImpl _value,
      $Res Function(_$VerifyNewPhoneRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
    Object? reference = null,
  }) {
    return _then(_$VerifyNewPhoneRequestImpl(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyNewPhoneRequestImpl implements _VerifyNewPhoneRequest {
  const _$VerifyNewPhoneRequestImpl(
      {required this.otp, required this.reference});

  factory _$VerifyNewPhoneRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyNewPhoneRequestImplFromJson(json);

  @override
  final String otp;
  @override
  final String reference;

  @override
  String toString() {
    return 'VerifyNewPhoneRequest(otp: $otp, reference: $reference)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyNewPhoneRequestImpl &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.reference, reference) ||
                other.reference == reference));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, otp, reference);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyNewPhoneRequestImplCopyWith<_$VerifyNewPhoneRequestImpl>
      get copyWith => __$$VerifyNewPhoneRequestImplCopyWithImpl<
          _$VerifyNewPhoneRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyNewPhoneRequestImplToJson(
      this,
    );
  }
}

abstract class _VerifyNewPhoneRequest implements VerifyNewPhoneRequest {
  const factory _VerifyNewPhoneRequest(
      {required final String otp,
      required final String reference}) = _$VerifyNewPhoneRequestImpl;

  factory _VerifyNewPhoneRequest.fromJson(Map<String, dynamic> json) =
      _$VerifyNewPhoneRequestImpl.fromJson;

  @override
  String get otp;
  @override
  String get reference;
  @override
  @JsonKey(ignore: true)
  _$$VerifyNewPhoneRequestImplCopyWith<_$VerifyNewPhoneRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
