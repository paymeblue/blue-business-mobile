// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_reason_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetReasonResponse _$GetReasonResponseFromJson(Map<String, dynamic> json) {
  return _GetReasonResponse.fromJson(json);
}

/// @nodoc
mixin _$GetReasonResponse {
  bool get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<Reason>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetReasonResponseCopyWith<GetReasonResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetReasonResponseCopyWith<$Res> {
  factory $GetReasonResponseCopyWith(
          GetReasonResponse value, $Res Function(GetReasonResponse) then) =
      _$GetReasonResponseCopyWithImpl<$Res, GetReasonResponse>;
  @useResult
  $Res call({bool success, String? message, List<Reason>? data});
}

/// @nodoc
class _$GetReasonResponseCopyWithImpl<$Res, $Val extends GetReasonResponse>
    implements $GetReasonResponseCopyWith<$Res> {
  _$GetReasonResponseCopyWithImpl(this._value, this._then);

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
              as List<Reason>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetReasonResponseImplCopyWith<$Res>
    implements $GetReasonResponseCopyWith<$Res> {
  factory _$$GetReasonResponseImplCopyWith(_$GetReasonResponseImpl value,
          $Res Function(_$GetReasonResponseImpl) then) =
      __$$GetReasonResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String? message, List<Reason>? data});
}

/// @nodoc
class __$$GetReasonResponseImplCopyWithImpl<$Res>
    extends _$GetReasonResponseCopyWithImpl<$Res, _$GetReasonResponseImpl>
    implements _$$GetReasonResponseImplCopyWith<$Res> {
  __$$GetReasonResponseImplCopyWithImpl(_$GetReasonResponseImpl _value,
      $Res Function(_$GetReasonResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetReasonResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Reason>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetReasonResponseImpl implements _GetReasonResponse {
  const _$GetReasonResponseImpl(
      {this.success = false, this.message, final List<Reason>? data})
      : _data = data;

  factory _$GetReasonResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetReasonResponseImplFromJson(json);

  @override
  @JsonKey()
  final bool success;
  @override
  final String? message;
  final List<Reason>? _data;
  @override
  List<Reason>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetReasonResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetReasonResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetReasonResponseImplCopyWith<_$GetReasonResponseImpl> get copyWith =>
      __$$GetReasonResponseImplCopyWithImpl<_$GetReasonResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetReasonResponseImplToJson(
      this,
    );
  }
}

abstract class _GetReasonResponse implements GetReasonResponse {
  const factory _GetReasonResponse(
      {final bool success,
      final String? message,
      final List<Reason>? data}) = _$GetReasonResponseImpl;

  factory _GetReasonResponse.fromJson(Map<String, dynamic> json) =
      _$GetReasonResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String? get message;
  @override
  List<Reason>? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetReasonResponseImplCopyWith<_$GetReasonResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
