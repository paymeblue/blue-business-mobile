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

PaymentLinkReceiptResponse _$PaymentLinkReceiptResponseFromJson(
    Map<String, dynamic> json) {
  return _PaymentLinkReceiptResponse.fromJson(json);
}

/// @nodoc
mixin _$PaymentLinkReceiptResponse {
  bool get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  PaymentLinkReceiptRecord? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentLinkReceiptResponseCopyWith<PaymentLinkReceiptResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentLinkReceiptResponseCopyWith<$Res> {
  factory $PaymentLinkReceiptResponseCopyWith(PaymentLinkReceiptResponse value,
          $Res Function(PaymentLinkReceiptResponse) then) =
      _$PaymentLinkReceiptResponseCopyWithImpl<$Res,
          PaymentLinkReceiptResponse>;
  @useResult
  $Res call({bool success, String? message, PaymentLinkReceiptRecord? data});

  $PaymentLinkReceiptRecordCopyWith<$Res>? get data;
}

/// @nodoc
class _$PaymentLinkReceiptResponseCopyWithImpl<$Res,
        $Val extends PaymentLinkReceiptResponse>
    implements $PaymentLinkReceiptResponseCopyWith<$Res> {
  _$PaymentLinkReceiptResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaymentLinkReceiptRecord?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentLinkReceiptRecordCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $PaymentLinkReceiptRecordCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentLinkReceiptResponseImplCopyWith<$Res>
    implements $PaymentLinkReceiptResponseCopyWith<$Res> {
  factory _$$PaymentLinkReceiptResponseImplCopyWith(
          _$PaymentLinkReceiptResponseImpl value,
          $Res Function(_$PaymentLinkReceiptResponseImpl) then) =
      __$$PaymentLinkReceiptResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String? message, PaymentLinkReceiptRecord? data});

  @override
  $PaymentLinkReceiptRecordCopyWith<$Res>? get data;
}

/// @nodoc
class __$$PaymentLinkReceiptResponseImplCopyWithImpl<$Res>
    extends _$PaymentLinkReceiptResponseCopyWithImpl<$Res,
        _$PaymentLinkReceiptResponseImpl>
    implements _$$PaymentLinkReceiptResponseImplCopyWith<$Res> {
  __$$PaymentLinkReceiptResponseImplCopyWithImpl(
      _$PaymentLinkReceiptResponseImpl _value,
      $Res Function(_$PaymentLinkReceiptResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$PaymentLinkReceiptResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaymentLinkReceiptRecord?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentLinkReceiptResponseImpl implements _PaymentLinkReceiptResponse {
  const _$PaymentLinkReceiptResponseImpl(
      {this.success = false, this.message, this.data});

  factory _$PaymentLinkReceiptResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PaymentLinkReceiptResponseImplFromJson(json);

  @override
  @JsonKey()
  final bool success;
  @override
  final String? message;
  @override
  final PaymentLinkReceiptRecord? data;

  @override
  String toString() {
    return 'PaymentLinkReceiptResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentLinkReceiptResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentLinkReceiptResponseImplCopyWith<_$PaymentLinkReceiptResponseImpl>
      get copyWith => __$$PaymentLinkReceiptResponseImplCopyWithImpl<
          _$PaymentLinkReceiptResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentLinkReceiptResponseImplToJson(
      this,
    );
  }
}

abstract class _PaymentLinkReceiptResponse
    implements PaymentLinkReceiptResponse {
  const factory _PaymentLinkReceiptResponse(
      {final bool success,
      final String? message,
      final PaymentLinkReceiptRecord? data}) = _$PaymentLinkReceiptResponseImpl;

  factory _PaymentLinkReceiptResponse.fromJson(Map<String, dynamic> json) =
      _$PaymentLinkReceiptResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String? get message;
  @override
  PaymentLinkReceiptRecord? get data;
  @override
  @JsonKey(ignore: true)
  _$$PaymentLinkReceiptResponseImplCopyWith<_$PaymentLinkReceiptResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
