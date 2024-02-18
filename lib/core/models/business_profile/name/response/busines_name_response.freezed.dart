// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'busines_name_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BusinessNameResponse _$BusinessNameResponseFromJson(Map<String, dynamic> json) {
  return _BusinessNameResponse.fromJson(json);
}

/// @nodoc
mixin _$BusinessNameResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  BusinessNameData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BusinessNameResponseCopyWith<BusinessNameResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessNameResponseCopyWith<$Res> {
  factory $BusinessNameResponseCopyWith(BusinessNameResponse value,
          $Res Function(BusinessNameResponse) then) =
      _$BusinessNameResponseCopyWithImpl<$Res, BusinessNameResponse>;
  @useResult
  $Res call({String status, String? message, BusinessNameData? data});

  $BusinessNameDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$BusinessNameResponseCopyWithImpl<$Res,
        $Val extends BusinessNameResponse>
    implements $BusinessNameResponseCopyWith<$Res> {
  _$BusinessNameResponseCopyWithImpl(this._value, this._then);

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
              as BusinessNameData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BusinessNameDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $BusinessNameDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BusinessNameResponseImplCopyWith<$Res>
    implements $BusinessNameResponseCopyWith<$Res> {
  factory _$$BusinessNameResponseImplCopyWith(_$BusinessNameResponseImpl value,
          $Res Function(_$BusinessNameResponseImpl) then) =
      __$$BusinessNameResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message, BusinessNameData? data});

  @override
  $BusinessNameDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BusinessNameResponseImplCopyWithImpl<$Res>
    extends _$BusinessNameResponseCopyWithImpl<$Res, _$BusinessNameResponseImpl>
    implements _$$BusinessNameResponseImplCopyWith<$Res> {
  __$$BusinessNameResponseImplCopyWithImpl(_$BusinessNameResponseImpl _value,
      $Res Function(_$BusinessNameResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BusinessNameResponseImpl(
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
              as BusinessNameData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BusinessNameResponseImpl implements _BusinessNameResponse {
  const _$BusinessNameResponseImpl(
      {this.status = "fail", this.message, this.data});

  factory _$BusinessNameResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BusinessNameResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;
  @override
  final BusinessNameData? data;

  @override
  String toString() {
    return 'BusinessNameResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessNameResponseImpl &&
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
  _$$BusinessNameResponseImplCopyWith<_$BusinessNameResponseImpl>
      get copyWith =>
          __$$BusinessNameResponseImplCopyWithImpl<_$BusinessNameResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessNameResponseImplToJson(
      this,
    );
  }
}

abstract class _BusinessNameResponse implements BusinessNameResponse {
  const factory _BusinessNameResponse(
      {final String status,
      final String? message,
      final BusinessNameData? data}) = _$BusinessNameResponseImpl;

  factory _BusinessNameResponse.fromJson(Map<String, dynamic> json) =
      _$BusinessNameResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  BusinessNameData? get data;
  @override
  @JsonKey(ignore: true)
  _$$BusinessNameResponseImplCopyWith<_$BusinessNameResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
