// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vend_airtime_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VendAirtimeResponse _$VendAirtimeResponseFromJson(Map<String, dynamic> json) {
  return _VendAirtimeResponse.fromJson(json);
}

/// @nodoc
mixin _$VendAirtimeResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  VendAirtimeData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VendAirtimeResponseCopyWith<VendAirtimeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendAirtimeResponseCopyWith<$Res> {
  factory $VendAirtimeResponseCopyWith(
          VendAirtimeResponse value, $Res Function(VendAirtimeResponse) then) =
      _$VendAirtimeResponseCopyWithImpl<$Res, VendAirtimeResponse>;
  @useResult
  $Res call({String status, String? message, VendAirtimeData? data});

  $VendAirtimeDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$VendAirtimeResponseCopyWithImpl<$Res, $Val extends VendAirtimeResponse>
    implements $VendAirtimeResponseCopyWith<$Res> {
  _$VendAirtimeResponseCopyWithImpl(this._value, this._then);

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
              as VendAirtimeData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VendAirtimeDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $VendAirtimeDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VendAirtimeResponseImplCopyWith<$Res>
    implements $VendAirtimeResponseCopyWith<$Res> {
  factory _$$VendAirtimeResponseImplCopyWith(_$VendAirtimeResponseImpl value,
          $Res Function(_$VendAirtimeResponseImpl) then) =
      __$$VendAirtimeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message, VendAirtimeData? data});

  @override
  $VendAirtimeDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$VendAirtimeResponseImplCopyWithImpl<$Res>
    extends _$VendAirtimeResponseCopyWithImpl<$Res, _$VendAirtimeResponseImpl>
    implements _$$VendAirtimeResponseImplCopyWith<$Res> {
  __$$VendAirtimeResponseImplCopyWithImpl(_$VendAirtimeResponseImpl _value,
      $Res Function(_$VendAirtimeResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$VendAirtimeResponseImpl(
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
              as VendAirtimeData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendAirtimeResponseImpl implements _VendAirtimeResponse {
  const _$VendAirtimeResponseImpl(
      {this.status = "fail", this.message, this.data});

  factory _$VendAirtimeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendAirtimeResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;
  @override
  final VendAirtimeData? data;

  @override
  String toString() {
    return 'VendAirtimeResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendAirtimeResponseImpl &&
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
  _$$VendAirtimeResponseImplCopyWith<_$VendAirtimeResponseImpl> get copyWith =>
      __$$VendAirtimeResponseImplCopyWithImpl<_$VendAirtimeResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendAirtimeResponseImplToJson(
      this,
    );
  }
}

abstract class _VendAirtimeResponse implements VendAirtimeResponse {
  const factory _VendAirtimeResponse(
      {final String status,
      final String? message,
      final VendAirtimeData? data}) = _$VendAirtimeResponseImpl;

  factory _VendAirtimeResponse.fromJson(Map<String, dynamic> json) =
      _$VendAirtimeResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  VendAirtimeData? get data;
  @override
  @JsonKey(ignore: true)
  _$$VendAirtimeResponseImplCopyWith<_$VendAirtimeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
