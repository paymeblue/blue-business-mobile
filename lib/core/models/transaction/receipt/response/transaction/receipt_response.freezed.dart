// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'receipt_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReceiptResponse _$ReceiptResponseFromJson(Map<String, dynamic> json) {
  return _ReceiptResponse.fromJson(json);
}

/// @nodoc
mixin _$ReceiptResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  ReceiptData? get data => throw _privateConstructorUsedError;

  /// Serializes this ReceiptResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReceiptResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReceiptResponseCopyWith<ReceiptResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiptResponseCopyWith<$Res> {
  factory $ReceiptResponseCopyWith(
          ReceiptResponse value, $Res Function(ReceiptResponse) then) =
      _$ReceiptResponseCopyWithImpl<$Res, ReceiptResponse>;
  @useResult
  $Res call({String status, String? message, ReceiptData? data});

  $ReceiptDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ReceiptResponseCopyWithImpl<$Res, $Val extends ReceiptResponse>
    implements $ReceiptResponseCopyWith<$Res> {
  _$ReceiptResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReceiptResponse
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
              as ReceiptData?,
    ) as $Val);
  }

  /// Create a copy of ReceiptResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReceiptDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ReceiptDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReceiptResponseImplCopyWith<$Res>
    implements $ReceiptResponseCopyWith<$Res> {
  factory _$$ReceiptResponseImplCopyWith(_$ReceiptResponseImpl value,
          $Res Function(_$ReceiptResponseImpl) then) =
      __$$ReceiptResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message, ReceiptData? data});

  @override
  $ReceiptDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ReceiptResponseImplCopyWithImpl<$Res>
    extends _$ReceiptResponseCopyWithImpl<$Res, _$ReceiptResponseImpl>
    implements _$$ReceiptResponseImplCopyWith<$Res> {
  __$$ReceiptResponseImplCopyWithImpl(
      _$ReceiptResponseImpl _value, $Res Function(_$ReceiptResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReceiptResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ReceiptResponseImpl(
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
              as ReceiptData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReceiptResponseImpl implements _ReceiptResponse {
  const _$ReceiptResponseImpl({this.status = "fail", this.message, this.data});

  factory _$ReceiptResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReceiptResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;
  @override
  final ReceiptData? data;

  @override
  String toString() {
    return 'ReceiptResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiptResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  /// Create a copy of ReceiptResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceiptResponseImplCopyWith<_$ReceiptResponseImpl> get copyWith =>
      __$$ReceiptResponseImplCopyWithImpl<_$ReceiptResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReceiptResponseImplToJson(
      this,
    );
  }
}

abstract class _ReceiptResponse implements ReceiptResponse {
  const factory _ReceiptResponse(
      {final String status,
      final String? message,
      final ReceiptData? data}) = _$ReceiptResponseImpl;

  factory _ReceiptResponse.fromJson(Map<String, dynamic> json) =
      _$ReceiptResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  ReceiptData? get data;

  /// Create a copy of ReceiptResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReceiptResponseImplCopyWith<_$ReceiptResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
