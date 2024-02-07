// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'withdrawal_account_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WithdrawalAccountResponse _$WithdrawalAccountResponseFromJson(
    Map<String, dynamic> json) {
  return _WithdrawalAccountResponse.fromJson(json);
}

/// @nodoc
mixin _$WithdrawalAccountResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  WithdrawalAccount? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WithdrawalAccountResponseCopyWith<WithdrawalAccountResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WithdrawalAccountResponseCopyWith<$Res> {
  factory $WithdrawalAccountResponseCopyWith(WithdrawalAccountResponse value,
          $Res Function(WithdrawalAccountResponse) then) =
      _$WithdrawalAccountResponseCopyWithImpl<$Res, WithdrawalAccountResponse>;
  @useResult
  $Res call({String status, String? message, WithdrawalAccount? data});

  $WithdrawalAccountCopyWith<$Res>? get data;
}

/// @nodoc
class _$WithdrawalAccountResponseCopyWithImpl<$Res,
        $Val extends WithdrawalAccountResponse>
    implements $WithdrawalAccountResponseCopyWith<$Res> {
  _$WithdrawalAccountResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as WithdrawalAccount?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WithdrawalAccountCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $WithdrawalAccountCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WithdrawalAccountResponseImplCopyWith<$Res>
    implements $WithdrawalAccountResponseCopyWith<$Res> {
  factory _$$WithdrawalAccountResponseImplCopyWith(
          _$WithdrawalAccountResponseImpl value,
          $Res Function(_$WithdrawalAccountResponseImpl) then) =
      __$$WithdrawalAccountResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message, WithdrawalAccount? data});

  @override
  $WithdrawalAccountCopyWith<$Res>? get data;
}

/// @nodoc
class __$$WithdrawalAccountResponseImplCopyWithImpl<$Res>
    extends _$WithdrawalAccountResponseCopyWithImpl<$Res,
        _$WithdrawalAccountResponseImpl>
    implements _$$WithdrawalAccountResponseImplCopyWith<$Res> {
  __$$WithdrawalAccountResponseImplCopyWithImpl(
      _$WithdrawalAccountResponseImpl _value,
      $Res Function(_$WithdrawalAccountResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$WithdrawalAccountResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as WithdrawalAccount?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WithdrawalAccountResponseImpl implements _WithdrawalAccountResponse {
  const _$WithdrawalAccountResponseImpl(
      {this.status = "fail", this.message, this.data});

  factory _$WithdrawalAccountResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WithdrawalAccountResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;
  @override
  final WithdrawalAccount? data;

  @override
  String toString() {
    return 'WithdrawalAccountResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WithdrawalAccountResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WithdrawalAccountResponseImplCopyWith<_$WithdrawalAccountResponseImpl>
      get copyWith => __$$WithdrawalAccountResponseImplCopyWithImpl<
          _$WithdrawalAccountResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WithdrawalAccountResponseImplToJson(
      this,
    );
  }
}

abstract class _WithdrawalAccountResponse implements WithdrawalAccountResponse {
  const factory _WithdrawalAccountResponse(
      {final String status,
      final String? message,
      final WithdrawalAccount? data}) = _$WithdrawalAccountResponseImpl;

  factory _WithdrawalAccountResponse.fromJson(Map<String, dynamic> json) =
      _$WithdrawalAccountResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  WithdrawalAccount? get data;
  @override
  @JsonKey(ignore: true)
  _$$WithdrawalAccountResponseImplCopyWith<_$WithdrawalAccountResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
