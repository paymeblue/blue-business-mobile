// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_fees.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetBusinessFeesResponse _$GetBusinessFeesResponseFromJson(
    Map<String, dynamic> json) {
  return _GetBusinessFeesResponse.fromJson(json);
}

/// @nodoc
mixin _$GetBusinessFeesResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  GetBusinessFeesData? get data => throw _privateConstructorUsedError;

  /// Serializes this GetBusinessFeesResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetBusinessFeesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetBusinessFeesResponseCopyWith<GetBusinessFeesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetBusinessFeesResponseCopyWith<$Res> {
  factory $GetBusinessFeesResponseCopyWith(GetBusinessFeesResponse value,
          $Res Function(GetBusinessFeesResponse) then) =
      _$GetBusinessFeesResponseCopyWithImpl<$Res, GetBusinessFeesResponse>;
  @useResult
  $Res call({String status, String? message, GetBusinessFeesData? data});

  $GetBusinessFeesDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetBusinessFeesResponseCopyWithImpl<$Res,
        $Val extends GetBusinessFeesResponse>
    implements $GetBusinessFeesResponseCopyWith<$Res> {
  _$GetBusinessFeesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetBusinessFeesResponse
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
              as GetBusinessFeesData?,
    ) as $Val);
  }

  /// Create a copy of GetBusinessFeesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetBusinessFeesDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $GetBusinessFeesDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetBusinessFeesResponseImplCopyWith<$Res>
    implements $GetBusinessFeesResponseCopyWith<$Res> {
  factory _$$GetBusinessFeesResponseImplCopyWith(
          _$GetBusinessFeesResponseImpl value,
          $Res Function(_$GetBusinessFeesResponseImpl) then) =
      __$$GetBusinessFeesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message, GetBusinessFeesData? data});

  @override
  $GetBusinessFeesDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetBusinessFeesResponseImplCopyWithImpl<$Res>
    extends _$GetBusinessFeesResponseCopyWithImpl<$Res,
        _$GetBusinessFeesResponseImpl>
    implements _$$GetBusinessFeesResponseImplCopyWith<$Res> {
  __$$GetBusinessFeesResponseImplCopyWithImpl(
      _$GetBusinessFeesResponseImpl _value,
      $Res Function(_$GetBusinessFeesResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetBusinessFeesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetBusinessFeesResponseImpl(
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
              as GetBusinessFeesData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetBusinessFeesResponseImpl implements _GetBusinessFeesResponse {
  const _$GetBusinessFeesResponseImpl(
      {this.status = 'fail', this.message, this.data});

  factory _$GetBusinessFeesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetBusinessFeesResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;
  @override
  final GetBusinessFeesData? data;

  @override
  String toString() {
    return 'GetBusinessFeesResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBusinessFeesResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  /// Create a copy of GetBusinessFeesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBusinessFeesResponseImplCopyWith<_$GetBusinessFeesResponseImpl>
      get copyWith => __$$GetBusinessFeesResponseImplCopyWithImpl<
          _$GetBusinessFeesResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetBusinessFeesResponseImplToJson(
      this,
    );
  }
}

abstract class _GetBusinessFeesResponse implements GetBusinessFeesResponse {
  const factory _GetBusinessFeesResponse(
      {final String status,
      final String? message,
      final GetBusinessFeesData? data}) = _$GetBusinessFeesResponseImpl;

  factory _GetBusinessFeesResponse.fromJson(Map<String, dynamic> json) =
      _$GetBusinessFeesResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  GetBusinessFeesData? get data;

  /// Create a copy of GetBusinessFeesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetBusinessFeesResponseImplCopyWith<_$GetBusinessFeesResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetBusinessFeesData _$GetBusinessFeesDataFromJson(Map<String, dynamic> json) {
  return _GetBusinessFeesData.fromJson(json);
}

/// @nodoc
mixin _$GetBusinessFeesData {
  int get id => throw _privateConstructorUsedError;
  int get businessId => throw _privateConstructorUsedError;
  double get withdrawal => throw _privateConstructorUsedError;
  double get billPayment => throw _privateConstructorUsedError;
  double get transfers => throw _privateConstructorUsedError;
  double get blueToBlue => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this GetBusinessFeesData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetBusinessFeesData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetBusinessFeesDataCopyWith<GetBusinessFeesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetBusinessFeesDataCopyWith<$Res> {
  factory $GetBusinessFeesDataCopyWith(
          GetBusinessFeesData value, $Res Function(GetBusinessFeesData) then) =
      _$GetBusinessFeesDataCopyWithImpl<$Res, GetBusinessFeesData>;
  @useResult
  $Res call(
      {int id,
      int businessId,
      double withdrawal,
      double billPayment,
      double transfers,
      double blueToBlue,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$GetBusinessFeesDataCopyWithImpl<$Res, $Val extends GetBusinessFeesData>
    implements $GetBusinessFeesDataCopyWith<$Res> {
  _$GetBusinessFeesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetBusinessFeesData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? businessId = null,
    Object? withdrawal = null,
    Object? billPayment = null,
    Object? transfers = null,
    Object? blueToBlue = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      businessId: null == businessId
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as int,
      withdrawal: null == withdrawal
          ? _value.withdrawal
          : withdrawal // ignore: cast_nullable_to_non_nullable
              as double,
      billPayment: null == billPayment
          ? _value.billPayment
          : billPayment // ignore: cast_nullable_to_non_nullable
              as double,
      transfers: null == transfers
          ? _value.transfers
          : transfers // ignore: cast_nullable_to_non_nullable
              as double,
      blueToBlue: null == blueToBlue
          ? _value.blueToBlue
          : blueToBlue // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetBusinessFeesDataImplCopyWith<$Res>
    implements $GetBusinessFeesDataCopyWith<$Res> {
  factory _$$GetBusinessFeesDataImplCopyWith(_$GetBusinessFeesDataImpl value,
          $Res Function(_$GetBusinessFeesDataImpl) then) =
      __$$GetBusinessFeesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int businessId,
      double withdrawal,
      double billPayment,
      double transfers,
      double blueToBlue,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$GetBusinessFeesDataImplCopyWithImpl<$Res>
    extends _$GetBusinessFeesDataCopyWithImpl<$Res, _$GetBusinessFeesDataImpl>
    implements _$$GetBusinessFeesDataImplCopyWith<$Res> {
  __$$GetBusinessFeesDataImplCopyWithImpl(_$GetBusinessFeesDataImpl _value,
      $Res Function(_$GetBusinessFeesDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetBusinessFeesData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? businessId = null,
    Object? withdrawal = null,
    Object? billPayment = null,
    Object? transfers = null,
    Object? blueToBlue = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$GetBusinessFeesDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      businessId: null == businessId
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as int,
      withdrawal: null == withdrawal
          ? _value.withdrawal
          : withdrawal // ignore: cast_nullable_to_non_nullable
              as double,
      billPayment: null == billPayment
          ? _value.billPayment
          : billPayment // ignore: cast_nullable_to_non_nullable
              as double,
      transfers: null == transfers
          ? _value.transfers
          : transfers // ignore: cast_nullable_to_non_nullable
              as double,
      blueToBlue: null == blueToBlue
          ? _value.blueToBlue
          : blueToBlue // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetBusinessFeesDataImpl implements _GetBusinessFeesData {
  const _$GetBusinessFeesDataImpl(
      {required this.id,
      required this.businessId,
      this.withdrawal = 0,
      this.billPayment = 0,
      this.transfers = 0,
      this.blueToBlue = 0,
      this.createdAt,
      this.updatedAt});

  factory _$GetBusinessFeesDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetBusinessFeesDataImplFromJson(json);

  @override
  final int id;
  @override
  final int businessId;
  @override
  @JsonKey()
  final double withdrawal;
  @override
  @JsonKey()
  final double billPayment;
  @override
  @JsonKey()
  final double transfers;
  @override
  @JsonKey()
  final double blueToBlue;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'GetBusinessFeesData(id: $id, businessId: $businessId, withdrawal: $withdrawal, billPayment: $billPayment, transfers: $transfers, blueToBlue: $blueToBlue, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBusinessFeesDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.businessId, businessId) ||
                other.businessId == businessId) &&
            (identical(other.withdrawal, withdrawal) ||
                other.withdrawal == withdrawal) &&
            (identical(other.billPayment, billPayment) ||
                other.billPayment == billPayment) &&
            (identical(other.transfers, transfers) ||
                other.transfers == transfers) &&
            (identical(other.blueToBlue, blueToBlue) ||
                other.blueToBlue == blueToBlue) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, businessId, withdrawal,
      billPayment, transfers, blueToBlue, createdAt, updatedAt);

  /// Create a copy of GetBusinessFeesData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBusinessFeesDataImplCopyWith<_$GetBusinessFeesDataImpl> get copyWith =>
      __$$GetBusinessFeesDataImplCopyWithImpl<_$GetBusinessFeesDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetBusinessFeesDataImplToJson(
      this,
    );
  }
}

abstract class _GetBusinessFeesData implements GetBusinessFeesData {
  const factory _GetBusinessFeesData(
      {required final int id,
      required final int businessId,
      final double withdrawal,
      final double billPayment,
      final double transfers,
      final double blueToBlue,
      final String? createdAt,
      final String? updatedAt}) = _$GetBusinessFeesDataImpl;

  factory _GetBusinessFeesData.fromJson(Map<String, dynamic> json) =
      _$GetBusinessFeesDataImpl.fromJson;

  @override
  int get id;
  @override
  int get businessId;
  @override
  double get withdrawal;
  @override
  double get billPayment;
  @override
  double get transfers;
  @override
  double get blueToBlue;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;

  /// Create a copy of GetBusinessFeesData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetBusinessFeesDataImplCopyWith<_$GetBusinessFeesDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
