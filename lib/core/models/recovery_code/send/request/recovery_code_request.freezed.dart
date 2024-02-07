// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recovery_code_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SendRecoveryCodeRequest _$SendRecoveryCodeRequestFromJson(
    Map<String, dynamic> json) {
  return _SendRecoveryCodeRequest.fromJson(json);
}

/// @nodoc
mixin _$SendRecoveryCodeRequest {
  String get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendRecoveryCodeRequestCopyWith<SendRecoveryCodeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendRecoveryCodeRequestCopyWith<$Res> {
  factory $SendRecoveryCodeRequestCopyWith(SendRecoveryCodeRequest value,
          $Res Function(SendRecoveryCodeRequest) then) =
      _$SendRecoveryCodeRequestCopyWithImpl<$Res, SendRecoveryCodeRequest>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class _$SendRecoveryCodeRequestCopyWithImpl<$Res,
        $Val extends SendRecoveryCodeRequest>
    implements $SendRecoveryCodeRequestCopyWith<$Res> {
  _$SendRecoveryCodeRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendRecoveryCodeRequestImplCopyWith<$Res>
    implements $SendRecoveryCodeRequestCopyWith<$Res> {
  factory _$$SendRecoveryCodeRequestImplCopyWith(
          _$SendRecoveryCodeRequestImpl value,
          $Res Function(_$SendRecoveryCodeRequestImpl) then) =
      __$$SendRecoveryCodeRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$SendRecoveryCodeRequestImplCopyWithImpl<$Res>
    extends _$SendRecoveryCodeRequestCopyWithImpl<$Res,
        _$SendRecoveryCodeRequestImpl>
    implements _$$SendRecoveryCodeRequestImplCopyWith<$Res> {
  __$$SendRecoveryCodeRequestImplCopyWithImpl(
      _$SendRecoveryCodeRequestImpl _value,
      $Res Function(_$SendRecoveryCodeRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$SendRecoveryCodeRequestImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendRecoveryCodeRequestImpl implements _SendRecoveryCodeRequest {
  const _$SendRecoveryCodeRequestImpl({required this.code});

  factory _$SendRecoveryCodeRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendRecoveryCodeRequestImplFromJson(json);

  @override
  final String code;

  @override
  String toString() {
    return 'SendRecoveryCodeRequest(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendRecoveryCodeRequestImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendRecoveryCodeRequestImplCopyWith<_$SendRecoveryCodeRequestImpl>
      get copyWith => __$$SendRecoveryCodeRequestImplCopyWithImpl<
          _$SendRecoveryCodeRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendRecoveryCodeRequestImplToJson(
      this,
    );
  }
}

abstract class _SendRecoveryCodeRequest implements SendRecoveryCodeRequest {
  const factory _SendRecoveryCodeRequest({required final String code}) =
      _$SendRecoveryCodeRequestImpl;

  factory _SendRecoveryCodeRequest.fromJson(Map<String, dynamic> json) =
      _$SendRecoveryCodeRequestImpl.fromJson;

  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$SendRecoveryCodeRequestImplCopyWith<_$SendRecoveryCodeRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
