// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_beneficiary_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetBeneficiaryResponse _$GetBeneficiaryResponseFromJson(
    Map<String, dynamic> json) {
  return _GetBeneficiaryResponse.fromJson(json);
}

/// @nodoc
mixin _$GetBeneficiaryResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  GetBeneficiaryData? get data => throw _privateConstructorUsedError;

  /// Serializes this GetBeneficiaryResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetBeneficiaryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetBeneficiaryResponseCopyWith<GetBeneficiaryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetBeneficiaryResponseCopyWith<$Res> {
  factory $GetBeneficiaryResponseCopyWith(GetBeneficiaryResponse value,
          $Res Function(GetBeneficiaryResponse) then) =
      _$GetBeneficiaryResponseCopyWithImpl<$Res, GetBeneficiaryResponse>;
  @useResult
  $Res call({String status, String? message, GetBeneficiaryData? data});

  $GetBeneficiaryDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetBeneficiaryResponseCopyWithImpl<$Res,
        $Val extends GetBeneficiaryResponse>
    implements $GetBeneficiaryResponseCopyWith<$Res> {
  _$GetBeneficiaryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetBeneficiaryResponse
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
              as GetBeneficiaryData?,
    ) as $Val);
  }

  /// Create a copy of GetBeneficiaryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetBeneficiaryDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $GetBeneficiaryDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetBeneficiaryResponseImplCopyWith<$Res>
    implements $GetBeneficiaryResponseCopyWith<$Res> {
  factory _$$GetBeneficiaryResponseImplCopyWith(
          _$GetBeneficiaryResponseImpl value,
          $Res Function(_$GetBeneficiaryResponseImpl) then) =
      __$$GetBeneficiaryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message, GetBeneficiaryData? data});

  @override
  $GetBeneficiaryDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetBeneficiaryResponseImplCopyWithImpl<$Res>
    extends _$GetBeneficiaryResponseCopyWithImpl<$Res,
        _$GetBeneficiaryResponseImpl>
    implements _$$GetBeneficiaryResponseImplCopyWith<$Res> {
  __$$GetBeneficiaryResponseImplCopyWithImpl(
      _$GetBeneficiaryResponseImpl _value,
      $Res Function(_$GetBeneficiaryResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetBeneficiaryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetBeneficiaryResponseImpl(
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
              as GetBeneficiaryData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetBeneficiaryResponseImpl implements _GetBeneficiaryResponse {
  const _$GetBeneficiaryResponseImpl(
      {this.status = "fail", this.message, this.data});

  factory _$GetBeneficiaryResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetBeneficiaryResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;
  @override
  final GetBeneficiaryData? data;

  @override
  String toString() {
    return 'GetBeneficiaryResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBeneficiaryResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  /// Create a copy of GetBeneficiaryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBeneficiaryResponseImplCopyWith<_$GetBeneficiaryResponseImpl>
      get copyWith => __$$GetBeneficiaryResponseImplCopyWithImpl<
          _$GetBeneficiaryResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetBeneficiaryResponseImplToJson(
      this,
    );
  }
}

abstract class _GetBeneficiaryResponse implements GetBeneficiaryResponse {
  const factory _GetBeneficiaryResponse(
      {final String status,
      final String? message,
      final GetBeneficiaryData? data}) = _$GetBeneficiaryResponseImpl;

  factory _GetBeneficiaryResponse.fromJson(Map<String, dynamic> json) =
      _$GetBeneficiaryResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  GetBeneficiaryData? get data;

  /// Create a copy of GetBeneficiaryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetBeneficiaryResponseImplCopyWith<_$GetBeneficiaryResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
