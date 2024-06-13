// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_shareholders_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetShareholdersResponse _$GetShareholdersResponseFromJson(
    Map<String, dynamic> json) {
  return _GetShareholdersResponse.fromJson(json);
}

/// @nodoc
mixin _$GetShareholdersResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<Shareholders>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetShareholdersResponseCopyWith<GetShareholdersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetShareholdersResponseCopyWith<$Res> {
  factory $GetShareholdersResponseCopyWith(GetShareholdersResponse value,
          $Res Function(GetShareholdersResponse) then) =
      _$GetShareholdersResponseCopyWithImpl<$Res, GetShareholdersResponse>;
  @useResult
  $Res call({String status, String? message, List<Shareholders>? data});
}

/// @nodoc
class _$GetShareholdersResponseCopyWithImpl<$Res,
        $Val extends GetShareholdersResponse>
    implements $GetShareholdersResponseCopyWith<$Res> {
  _$GetShareholdersResponseCopyWithImpl(this._value, this._then);

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
              as List<Shareholders>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetShareholdersResponseImplCopyWith<$Res>
    implements $GetShareholdersResponseCopyWith<$Res> {
  factory _$$GetShareholdersResponseImplCopyWith(
          _$GetShareholdersResponseImpl value,
          $Res Function(_$GetShareholdersResponseImpl) then) =
      __$$GetShareholdersResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message, List<Shareholders>? data});
}

/// @nodoc
class __$$GetShareholdersResponseImplCopyWithImpl<$Res>
    extends _$GetShareholdersResponseCopyWithImpl<$Res,
        _$GetShareholdersResponseImpl>
    implements _$$GetShareholdersResponseImplCopyWith<$Res> {
  __$$GetShareholdersResponseImplCopyWithImpl(
      _$GetShareholdersResponseImpl _value,
      $Res Function(_$GetShareholdersResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetShareholdersResponseImpl(
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
              as List<Shareholders>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetShareholdersResponseImpl implements _GetShareholdersResponse {
  const _$GetShareholdersResponseImpl(
      {this.status = "fail", this.message, final List<Shareholders>? data})
      : _data = data;

  factory _$GetShareholdersResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetShareholdersResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;
  final List<Shareholders>? _data;
  @override
  List<Shareholders>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetShareholdersResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetShareholdersResponseImpl &&
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
  _$$GetShareholdersResponseImplCopyWith<_$GetShareholdersResponseImpl>
      get copyWith => __$$GetShareholdersResponseImplCopyWithImpl<
          _$GetShareholdersResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetShareholdersResponseImplToJson(
      this,
    );
  }
}

abstract class _GetShareholdersResponse implements GetShareholdersResponse {
  const factory _GetShareholdersResponse(
      {final String status,
      final String? message,
      final List<Shareholders>? data}) = _$GetShareholdersResponseImpl;

  factory _GetShareholdersResponse.fromJson(Map<String, dynamic> json) =
      _$GetShareholdersResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  List<Shareholders>? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetShareholdersResponseImplCopyWith<_$GetShareholdersResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
