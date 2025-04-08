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
  int get businessId => throw _privateConstructorUsedError;
  int get walletId => throw _privateConstructorUsedError;
  String get businessName => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String? get middleName => throw _privateConstructorUsedError;
  String? get displayPicture => throw _privateConstructorUsedError;
  int? get staffId => throw _privateConstructorUsedError;
  bool get notificationStatus => throw _privateConstructorUsedError;
  bool get resetCredentialStatus => throw _privateConstructorUsedError;
  bool get autoWithdrawalEnabled => throw _privateConstructorUsedError;
  bool get businessProfileCompleted => throw _privateConstructorUsedError;
  bool get businessDetailsCompleted => throw _privateConstructorUsedError;
  bool get businessKycCompleted => throw _privateConstructorUsedError;
  bool get proofOfAddressVerified => throw _privateConstructorUsedError;
  String get kyc => throw _privateConstructorUsedError;

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
      int businessId,
      int walletId,
      String businessName,
      String firstName,
      String lastName,
      String phone,
      String? middleName,
      String? displayPicture,
      int? staffId,
      bool notificationStatus,
      bool resetCredentialStatus,
      bool autoWithdrawalEnabled,
      bool businessProfileCompleted,
      bool businessDetailsCompleted,
      bool businessKycCompleted,
      bool proofOfAddressVerified,
      String kyc});
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
    Object? businessId = null,
    Object? walletId = null,
    Object? businessName = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? phone = null,
    Object? middleName = freezed,
    Object? displayPicture = freezed,
    Object? staffId = freezed,
    Object? notificationStatus = null,
    Object? resetCredentialStatus = null,
    Object? autoWithdrawalEnabled = null,
    Object? businessProfileCompleted = null,
    Object? businessDetailsCompleted = null,
    Object? businessKycCompleted = null,
    Object? proofOfAddressVerified = null,
    Object? kyc = null,
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
      walletId: null == walletId
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as int,
      businessName: null == businessName
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String,
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
      displayPicture: freezed == displayPicture
          ? _value.displayPicture
          : displayPicture // ignore: cast_nullable_to_non_nullable
              as String?,
      staffId: freezed == staffId
          ? _value.staffId
          : staffId // ignore: cast_nullable_to_non_nullable
              as int?,
      notificationStatus: null == notificationStatus
          ? _value.notificationStatus
          : notificationStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      resetCredentialStatus: null == resetCredentialStatus
          ? _value.resetCredentialStatus
          : resetCredentialStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      autoWithdrawalEnabled: null == autoWithdrawalEnabled
          ? _value.autoWithdrawalEnabled
          : autoWithdrawalEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      businessProfileCompleted: null == businessProfileCompleted
          ? _value.businessProfileCompleted
          : businessProfileCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      businessDetailsCompleted: null == businessDetailsCompleted
          ? _value.businessDetailsCompleted
          : businessDetailsCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      businessKycCompleted: null == businessKycCompleted
          ? _value.businessKycCompleted
          : businessKycCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      proofOfAddressVerified: null == proofOfAddressVerified
          ? _value.proofOfAddressVerified
          : proofOfAddressVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      kyc: null == kyc
          ? _value.kyc
          : kyc // ignore: cast_nullable_to_non_nullable
              as String,
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
      int businessId,
      int walletId,
      String businessName,
      String firstName,
      String lastName,
      String phone,
      String? middleName,
      String? displayPicture,
      int? staffId,
      bool notificationStatus,
      bool resetCredentialStatus,
      bool autoWithdrawalEnabled,
      bool businessProfileCompleted,
      bool businessDetailsCompleted,
      bool businessKycCompleted,
      bool proofOfAddressVerified,
      String kyc});
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
    Object? businessId = null,
    Object? walletId = null,
    Object? businessName = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? phone = null,
    Object? middleName = freezed,
    Object? displayPicture = freezed,
    Object? staffId = freezed,
    Object? notificationStatus = null,
    Object? resetCredentialStatus = null,
    Object? autoWithdrawalEnabled = null,
    Object? businessProfileCompleted = null,
    Object? businessDetailsCompleted = null,
    Object? businessKycCompleted = null,
    Object? proofOfAddressVerified = null,
    Object? kyc = null,
  }) {
    return _then(_$GetProfileDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      businessId: null == businessId
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as int,
      walletId: null == walletId
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as int,
      businessName: null == businessName
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String,
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
      displayPicture: freezed == displayPicture
          ? _value.displayPicture
          : displayPicture // ignore: cast_nullable_to_non_nullable
              as String?,
      staffId: freezed == staffId
          ? _value.staffId
          : staffId // ignore: cast_nullable_to_non_nullable
              as int?,
      notificationStatus: null == notificationStatus
          ? _value.notificationStatus
          : notificationStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      resetCredentialStatus: null == resetCredentialStatus
          ? _value.resetCredentialStatus
          : resetCredentialStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      autoWithdrawalEnabled: null == autoWithdrawalEnabled
          ? _value.autoWithdrawalEnabled
          : autoWithdrawalEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      businessProfileCompleted: null == businessProfileCompleted
          ? _value.businessProfileCompleted
          : businessProfileCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      businessDetailsCompleted: null == businessDetailsCompleted
          ? _value.businessDetailsCompleted
          : businessDetailsCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      businessKycCompleted: null == businessKycCompleted
          ? _value.businessKycCompleted
          : businessKycCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      proofOfAddressVerified: null == proofOfAddressVerified
          ? _value.proofOfAddressVerified
          : proofOfAddressVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      kyc: null == kyc
          ? _value.kyc
          : kyc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetProfileDataImpl implements _GetProfileData {
  const _$GetProfileDataImpl(
      {required this.id,
      required this.businessId,
      required this.walletId,
      required this.businessName,
      required this.firstName,
      required this.lastName,
      required this.phone,
      this.middleName,
      this.displayPicture,
      this.staffId,
      this.notificationStatus = false,
      this.resetCredentialStatus = false,
      this.autoWithdrawalEnabled = false,
      this.businessProfileCompleted = false,
      this.businessDetailsCompleted = false,
      this.businessKycCompleted = false,
      this.proofOfAddressVerified = false,
      this.kyc = "pro"});

  factory _$GetProfileDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetProfileDataImplFromJson(json);

  @override
  final int id;
  @override
  final int businessId;
  @override
  final int walletId;
  @override
  final String businessName;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String phone;
  @override
  final String? middleName;
  @override
  final String? displayPicture;
  @override
  final int? staffId;
  @override
  @JsonKey()
  final bool notificationStatus;
  @override
  @JsonKey()
  final bool resetCredentialStatus;
  @override
  @JsonKey()
  final bool autoWithdrawalEnabled;
  @override
  @JsonKey()
  final bool businessProfileCompleted;
  @override
  @JsonKey()
  final bool businessDetailsCompleted;
  @override
  @JsonKey()
  final bool businessKycCompleted;
  @override
  @JsonKey()
  final bool proofOfAddressVerified;
  @override
  @JsonKey()
  final String kyc;

  @override
  String toString() {
    return 'GetProfileData(id: $id, businessId: $businessId, walletId: $walletId, businessName: $businessName, firstName: $firstName, lastName: $lastName, phone: $phone, middleName: $middleName, displayPicture: $displayPicture, staffId: $staffId, notificationStatus: $notificationStatus, resetCredentialStatus: $resetCredentialStatus, autoWithdrawalEnabled: $autoWithdrawalEnabled, businessProfileCompleted: $businessProfileCompleted, businessDetailsCompleted: $businessDetailsCompleted, businessKycCompleted: $businessKycCompleted, proofOfAddressVerified: $proofOfAddressVerified, kyc: $kyc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProfileDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.businessId, businessId) ||
                other.businessId == businessId) &&
            (identical(other.walletId, walletId) ||
                other.walletId == walletId) &&
            (identical(other.businessName, businessName) ||
                other.businessName == businessName) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName) &&
            (identical(other.displayPicture, displayPicture) ||
                other.displayPicture == displayPicture) &&
            (identical(other.staffId, staffId) || other.staffId == staffId) &&
            (identical(other.notificationStatus, notificationStatus) ||
                other.notificationStatus == notificationStatus) &&
            (identical(other.resetCredentialStatus, resetCredentialStatus) ||
                other.resetCredentialStatus == resetCredentialStatus) &&
            (identical(other.autoWithdrawalEnabled, autoWithdrawalEnabled) ||
                other.autoWithdrawalEnabled == autoWithdrawalEnabled) &&
            (identical(
                    other.businessProfileCompleted, businessProfileCompleted) ||
                other.businessProfileCompleted == businessProfileCompleted) &&
            (identical(
                    other.businessDetailsCompleted, businessDetailsCompleted) ||
                other.businessDetailsCompleted == businessDetailsCompleted) &&
            (identical(other.businessKycCompleted, businessKycCompleted) ||
                other.businessKycCompleted == businessKycCompleted) &&
            (identical(other.proofOfAddressVerified, proofOfAddressVerified) ||
                other.proofOfAddressVerified == proofOfAddressVerified) &&
            (identical(other.kyc, kyc) || other.kyc == kyc));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      businessId,
      walletId,
      businessName,
      firstName,
      lastName,
      phone,
      middleName,
      displayPicture,
      staffId,
      notificationStatus,
      resetCredentialStatus,
      autoWithdrawalEnabled,
      businessProfileCompleted,
      businessDetailsCompleted,
      businessKycCompleted,
      proofOfAddressVerified,
      kyc);

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
      required final int businessId,
      required final int walletId,
      required final String businessName,
      required final String firstName,
      required final String lastName,
      required final String phone,
      final String? middleName,
      final String? displayPicture,
      final int? staffId,
      final bool notificationStatus,
      final bool resetCredentialStatus,
      final bool autoWithdrawalEnabled,
      final bool businessProfileCompleted,
      final bool businessDetailsCompleted,
      final bool businessKycCompleted,
      final bool proofOfAddressVerified,
      final String kyc}) = _$GetProfileDataImpl;

  factory _GetProfileData.fromJson(Map<String, dynamic> json) =
      _$GetProfileDataImpl.fromJson;

  @override
  int get id;
  @override
  int get businessId;
  @override
  int get walletId;
  @override
  String get businessName;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get phone;
  @override
  String? get middleName;
  @override
  String? get displayPicture;
  @override
  int? get staffId;
  @override
  bool get notificationStatus;
  @override
  bool get resetCredentialStatus;
  @override
  bool get autoWithdrawalEnabled;
  @override
  bool get businessProfileCompleted;
  @override
  bool get businessDetailsCompleted;
  @override
  bool get businessKycCompleted;
  @override
  bool get proofOfAddressVerified;
  @override
  String get kyc;

  /// Create a copy of GetProfileData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetProfileDataImplCopyWith<_$GetProfileDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
