// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_packages_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetPackagesResponse _$GetPackagesResponseFromJson(Map<String, dynamic> json) {
  return _GetPackagesResponse.fromJson(json);
}

/// @nodoc
mixin _$GetPackagesResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<BillPackage>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPackagesResponseCopyWith<GetPackagesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPackagesResponseCopyWith<$Res> {
  factory $GetPackagesResponseCopyWith(
          GetPackagesResponse value, $Res Function(GetPackagesResponse) then) =
      _$GetPackagesResponseCopyWithImpl<$Res, GetPackagesResponse>;
  @useResult
  $Res call({String status, String? message, List<BillPackage>? data});
}

/// @nodoc
class _$GetPackagesResponseCopyWithImpl<$Res, $Val extends GetPackagesResponse>
    implements $GetPackagesResponseCopyWith<$Res> {
  _$GetPackagesResponseCopyWithImpl(this._value, this._then);

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
              as List<BillPackage>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetPackagesResponseImplCopyWith<$Res>
    implements $GetPackagesResponseCopyWith<$Res> {
  factory _$$GetPackagesResponseImplCopyWith(_$GetPackagesResponseImpl value,
          $Res Function(_$GetPackagesResponseImpl) then) =
      __$$GetPackagesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message, List<BillPackage>? data});
}

/// @nodoc
class __$$GetPackagesResponseImplCopyWithImpl<$Res>
    extends _$GetPackagesResponseCopyWithImpl<$Res, _$GetPackagesResponseImpl>
    implements _$$GetPackagesResponseImplCopyWith<$Res> {
  __$$GetPackagesResponseImplCopyWithImpl(_$GetPackagesResponseImpl _value,
      $Res Function(_$GetPackagesResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetPackagesResponseImpl(
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
              as List<BillPackage>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetPackagesResponseImpl implements _GetPackagesResponse {
  const _$GetPackagesResponseImpl(
      {this.status = "fail", this.message, final List<BillPackage>? data})
      : _data = data;

  factory _$GetPackagesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetPackagesResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;
  final List<BillPackage>? _data;
  @override
  List<BillPackage>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetPackagesResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPackagesResponseImpl &&
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
  _$$GetPackagesResponseImplCopyWith<_$GetPackagesResponseImpl> get copyWith =>
      __$$GetPackagesResponseImplCopyWithImpl<_$GetPackagesResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetPackagesResponseImplToJson(
      this,
    );
  }
}

abstract class _GetPackagesResponse implements GetPackagesResponse {
  const factory _GetPackagesResponse(
      {final String status,
      final String? message,
      final List<BillPackage>? data}) = _$GetPackagesResponseImpl;

  factory _GetPackagesResponse.fromJson(Map<String, dynamic> json) =
      _$GetPackagesResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  List<BillPackage>? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetPackagesResponseImplCopyWith<_$GetPackagesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
