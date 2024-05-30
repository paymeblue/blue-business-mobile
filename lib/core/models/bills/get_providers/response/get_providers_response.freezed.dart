// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_providers_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetProvidersResponse _$GetProvidersResponseFromJson(Map<String, dynamic> json) {
  return _GetProvidersResponse.fromJson(json);
}

/// @nodoc
mixin _$GetProvidersResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<BillProvider>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetProvidersResponseCopyWith<GetProvidersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProvidersResponseCopyWith<$Res> {
  factory $GetProvidersResponseCopyWith(GetProvidersResponse value,
          $Res Function(GetProvidersResponse) then) =
      _$GetProvidersResponseCopyWithImpl<$Res, GetProvidersResponse>;
  @useResult
  $Res call({String status, String? message, List<BillProvider>? data});
}

/// @nodoc
class _$GetProvidersResponseCopyWithImpl<$Res,
        $Val extends GetProvidersResponse>
    implements $GetProvidersResponseCopyWith<$Res> {
  _$GetProvidersResponseCopyWithImpl(this._value, this._then);

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
              as List<BillProvider>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetProvidersResponseImplCopyWith<$Res>
    implements $GetProvidersResponseCopyWith<$Res> {
  factory _$$GetProvidersResponseImplCopyWith(_$GetProvidersResponseImpl value,
          $Res Function(_$GetProvidersResponseImpl) then) =
      __$$GetProvidersResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message, List<BillProvider>? data});
}

/// @nodoc
class __$$GetProvidersResponseImplCopyWithImpl<$Res>
    extends _$GetProvidersResponseCopyWithImpl<$Res, _$GetProvidersResponseImpl>
    implements _$$GetProvidersResponseImplCopyWith<$Res> {
  __$$GetProvidersResponseImplCopyWithImpl(_$GetProvidersResponseImpl _value,
      $Res Function(_$GetProvidersResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetProvidersResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BillProvider>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetProvidersResponseImpl implements _GetProvidersResponse {
  const _$GetProvidersResponseImpl(
      {this.status = "fail", this.message, final List<BillProvider>? data})
      : _data = data;

  factory _$GetProvidersResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetProvidersResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;
  final List<BillProvider>? _data;
  @override
  List<BillProvider>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetProvidersResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProvidersResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProvidersResponseImplCopyWith<_$GetProvidersResponseImpl>
      get copyWith =>
          __$$GetProvidersResponseImplCopyWithImpl<_$GetProvidersResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetProvidersResponseImplToJson(
      this,
    );
  }
}

abstract class _GetProvidersResponse implements GetProvidersResponse {
  const factory _GetProvidersResponse(
      {final String status,
      final String? message,
      final List<BillProvider>? data}) = _$GetProvidersResponseImpl;

  factory _GetProvidersResponse.fromJson(Map<String, dynamic> json) =
      _$GetProvidersResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  List<BillProvider>? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetProvidersResponseImplCopyWith<_$GetProvidersResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
