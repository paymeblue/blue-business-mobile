// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetProfileResponse _$GetProfileResponseFromJson(Map<String, dynamic> json) {
  return _GetProfileResponse.fromJson(json);
}

/// @nodoc
mixin _$GetProfileResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  GetProfileData? get data => throw _privateConstructorUsedError;

  /// Serializes this GetProfileResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetProfileResponseCopyWith<GetProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProfileResponseCopyWith<$Res> {
  factory $GetProfileResponseCopyWith(
          GetProfileResponse value, $Res Function(GetProfileResponse) then) =
      _$GetProfileResponseCopyWithImpl<$Res, GetProfileResponse>;
  @useResult
  $Res call({String status, String? message, GetProfileData? data});

  $GetProfileDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetProfileResponseCopyWithImpl<$Res, $Val extends GetProfileResponse>
    implements $GetProfileResponseCopyWith<$Res> {
  _$GetProfileResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetProfileResponse
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
              as GetProfileData?,
    ) as $Val);
  }

  /// Create a copy of GetProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetProfileDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $GetProfileDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetProfileResponseImplCopyWith<$Res>
    implements $GetProfileResponseCopyWith<$Res> {
  factory _$$GetProfileResponseImplCopyWith(_$GetProfileResponseImpl value,
          $Res Function(_$GetProfileResponseImpl) then) =
      __$$GetProfileResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message, GetProfileData? data});

  @override
  $GetProfileDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetProfileResponseImplCopyWithImpl<$Res>
    extends _$GetProfileResponseCopyWithImpl<$Res, _$GetProfileResponseImpl>
    implements _$$GetProfileResponseImplCopyWith<$Res> {
  __$$GetProfileResponseImplCopyWithImpl(_$GetProfileResponseImpl _value,
      $Res Function(_$GetProfileResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetProfileResponseImpl(
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
              as GetProfileData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetProfileResponseImpl implements _GetProfileResponse {
  const _$GetProfileResponseImpl(
      {this.status = "fail", this.message, this.data});

  factory _$GetProfileResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetProfileResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;
  @override
  final GetProfileData? data;

  @override
  String toString() {
    return 'GetProfileResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProfileResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  /// Create a copy of GetProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProfileResponseImplCopyWith<_$GetProfileResponseImpl> get copyWith =>
      __$$GetProfileResponseImplCopyWithImpl<_$GetProfileResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetProfileResponseImplToJson(
      this,
    );
  }
}

abstract class _GetProfileResponse implements GetProfileResponse {
  const factory _GetProfileResponse(
      {final String status,
      final String? message,
      final GetProfileData? data}) = _$GetProfileResponseImpl;

  factory _GetProfileResponse.fromJson(Map<String, dynamic> json) =
      _$GetProfileResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  GetProfileData? get data;

  /// Create a copy of GetProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetProfileResponseImplCopyWith<_$GetProfileResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GetProfileData _$GetProfileDataFromJson(Map<String, dynamic> json) {
  return _GetProfileData.fromJson(json);
}

/// @nodoc
mixin _$GetProfileData {
  int get id => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String? get middleName => throw _privateConstructorUsedError;
  String? get displayPic => throw _privateConstructorUsedError;

  /// Serializes this GetProfileData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetProfileData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetProfileDataCopyWith<GetProfileData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProfileDataCopyWith<$Res> {
  factory $GetProfileDataCopyWith(
          GetProfileData value, $Res Function(GetProfileData) then) =
      _$GetProfileDataCopyWithImpl<$Res, GetProfileData>;
  @useResult
  $Res call(
      {int id,
      String firstName,
      String lastName,
      String phone,
      String? middleName,
      String? displayPic});
}

/// @nodoc
class _$GetProfileDataCopyWithImpl<$Res, $Val extends GetProfileData>
    implements $GetProfileDataCopyWith<$Res> {
  _$GetProfileDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetProfileData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? phone = null,
    Object? middleName = freezed,
    Object? displayPic = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      displayPic: freezed == displayPic
          ? _value.displayPic
          : displayPic // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetProfileDataImplCopyWith<$Res>
    implements $GetProfileDataCopyWith<$Res> {
  factory _$$GetProfileDataImplCopyWith(_$GetProfileDataImpl value,
          $Res Function(_$GetProfileDataImpl) then) =
      __$$GetProfileDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String firstName,
      String lastName,
      String phone,
      String? middleName,
      String? displayPic});
}

/// @nodoc
class __$$GetProfileDataImplCopyWithImpl<$Res>
    extends _$GetProfileDataCopyWithImpl<$Res, _$GetProfileDataImpl>
    implements _$$GetProfileDataImplCopyWith<$Res> {
  __$$GetProfileDataImplCopyWithImpl(
      _$GetProfileDataImpl _value, $Res Function(_$GetProfileDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetProfileData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? phone = null,
    Object? middleName = freezed,
    Object? displayPic = freezed,
  }) {
    return _then(_$GetProfileDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      displayPic: freezed == displayPic
          ? _value.displayPic
          : displayPic // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetProfileDataImpl implements _GetProfileData {
  const _$GetProfileDataImpl(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.phone,
      this.middleName,
      this.displayPic});

  factory _$GetProfileDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetProfileDataImplFromJson(json);

  @override
  final int id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String phone;
  @override
  final String? middleName;
  @override
  final String? displayPic;

  @override
  String toString() {
    return 'GetProfileData(id: $id, firstName: $firstName, lastName: $lastName, phone: $phone, middleName: $middleName, displayPic: $displayPic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProfileDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName) &&
            (identical(other.displayPic, displayPic) ||
                other.displayPic == displayPic));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, firstName, lastName, phone, middleName, displayPic);

  /// Create a copy of GetProfileData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProfileDataImplCopyWith<_$GetProfileDataImpl> get copyWith =>
      __$$GetProfileDataImplCopyWithImpl<_$GetProfileDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetProfileDataImplToJson(
      this,
    );
  }
}

abstract class _GetProfileData implements GetProfileData {
  const factory _GetProfileData(
      {required final int id,
      required final String firstName,
      required final String lastName,
      required final String phone,
      final String? middleName,
      final String? displayPic}) = _$GetProfileDataImpl;

  factory _GetProfileData.fromJson(Map<String, dynamic> json) =
      _$GetProfileDataImpl.fromJson;

  @override
  int get id;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get phone;
  @override
  String? get middleName;
  @override
  String? get displayPic;

  /// Create a copy of GetProfileData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetProfileDataImplCopyWith<_$GetProfileDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
