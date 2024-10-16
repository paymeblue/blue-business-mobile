// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'initiate_transaction_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InitiateTransactionResponse _$InitiateTransactionResponseFromJson(
    Map<String, dynamic> json) {
  return _InitiateTransactionResponse.fromJson(json);
}

/// @nodoc
mixin _$InitiateTransactionResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  InitiateTransactionData? get data => throw _privateConstructorUsedError;

  /// Serializes this InitiateTransactionResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InitiateTransactionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InitiateTransactionResponseCopyWith<InitiateTransactionResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitiateTransactionResponseCopyWith<$Res> {
  factory $InitiateTransactionResponseCopyWith(
          InitiateTransactionResponse value,
          $Res Function(InitiateTransactionResponse) then) =
      _$InitiateTransactionResponseCopyWithImpl<$Res,
          InitiateTransactionResponse>;
  @useResult
  $Res call({String status, String? message, InitiateTransactionData? data});

  $InitiateTransactionDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$InitiateTransactionResponseCopyWithImpl<$Res,
        $Val extends InitiateTransactionResponse>
    implements $InitiateTransactionResponseCopyWith<$Res> {
  _$InitiateTransactionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InitiateTransactionResponse
  /// with the given fields replaced by the non-null parameter values.
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
              as InitiateTransactionData?,
    ) as $Val);
  }

  /// Create a copy of InitiateTransactionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InitiateTransactionDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $InitiateTransactionDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitiateTransactionResponseImplCopyWith<$Res>
    implements $InitiateTransactionResponseCopyWith<$Res> {
  factory _$$InitiateTransactionResponseImplCopyWith(
          _$InitiateTransactionResponseImpl value,
          $Res Function(_$InitiateTransactionResponseImpl) then) =
      __$$InitiateTransactionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message, InitiateTransactionData? data});

  @override
  $InitiateTransactionDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitiateTransactionResponseImplCopyWithImpl<$Res>
    extends _$InitiateTransactionResponseCopyWithImpl<$Res,
        _$InitiateTransactionResponseImpl>
    implements _$$InitiateTransactionResponseImplCopyWith<$Res> {
  __$$InitiateTransactionResponseImplCopyWithImpl(
      _$InitiateTransactionResponseImpl _value,
      $Res Function(_$InitiateTransactionResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of InitiateTransactionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$InitiateTransactionResponseImpl(
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
              as InitiateTransactionData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InitiateTransactionResponseImpl
    implements _InitiateTransactionResponse {
  const _$InitiateTransactionResponseImpl(
      {this.status = "fail", this.message, this.data});

  factory _$InitiateTransactionResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$InitiateTransactionResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;
  @override
  final InitiateTransactionData? data;

  @override
  String toString() {
    return 'InitiateTransactionResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitiateTransactionResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  /// Create a copy of InitiateTransactionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitiateTransactionResponseImplCopyWith<_$InitiateTransactionResponseImpl>
      get copyWith => __$$InitiateTransactionResponseImplCopyWithImpl<
          _$InitiateTransactionResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InitiateTransactionResponseImplToJson(
      this,
    );
  }
}

abstract class _InitiateTransactionResponse
    implements InitiateTransactionResponse {
  const factory _InitiateTransactionResponse(
      {final String status,
      final String? message,
      final InitiateTransactionData? data}) = _$InitiateTransactionResponseImpl;

  factory _InitiateTransactionResponse.fromJson(Map<String, dynamic> json) =
      _$InitiateTransactionResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  InitiateTransactionData? get data;

  /// Create a copy of InitiateTransactionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitiateTransactionResponseImplCopyWith<_$InitiateTransactionResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
