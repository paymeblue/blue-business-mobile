// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetProfileResponse {

 String get status; String? get message; GetProfileData? get data;
/// Create a copy of GetProfileResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetProfileResponseCopyWith<GetProfileResponse> get copyWith => _$GetProfileResponseCopyWithImpl<GetProfileResponse>(this as GetProfileResponse, _$identity);

  /// Serializes this GetProfileResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProfileResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,data);

@override
String toString() {
  return 'GetProfileResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $GetProfileResponseCopyWith<$Res>  {
  factory $GetProfileResponseCopyWith(GetProfileResponse value, $Res Function(GetProfileResponse) _then) = _$GetProfileResponseCopyWithImpl;
@useResult
$Res call({
 String status, String? message, GetProfileData? data
});


$GetProfileDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$GetProfileResponseCopyWithImpl<$Res>
    implements $GetProfileResponseCopyWith<$Res> {
  _$GetProfileResponseCopyWithImpl(this._self, this._then);

  final GetProfileResponse _self;
  final $Res Function(GetProfileResponse) _then;

/// Create a copy of GetProfileResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as GetProfileData?,
  ));
}
/// Create a copy of GetProfileResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GetProfileDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $GetProfileDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [GetProfileResponse].
extension GetProfileResponsePatterns on GetProfileResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetProfileResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetProfileResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetProfileResponse value)  $default,){
final _that = this;
switch (_that) {
case _GetProfileResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetProfileResponse value)?  $default,){
final _that = this;
switch (_that) {
case _GetProfileResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  String? message,  GetProfileData? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetProfileResponse() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  String? message,  GetProfileData? data)  $default,) {final _that = this;
switch (_that) {
case _GetProfileResponse():
return $default(_that.status,_that.message,_that.data);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  String? message,  GetProfileData? data)?  $default,) {final _that = this;
switch (_that) {
case _GetProfileResponse() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetProfileResponse implements GetProfileResponse {
  const _GetProfileResponse({this.status = "fail", this.message, this.data});
  factory _GetProfileResponse.fromJson(Map<String, dynamic> json) => _$GetProfileResponseFromJson(json);

@override@JsonKey() final  String status;
@override final  String? message;
@override final  GetProfileData? data;

/// Create a copy of GetProfileResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetProfileResponseCopyWith<_GetProfileResponse> get copyWith => __$GetProfileResponseCopyWithImpl<_GetProfileResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetProfileResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetProfileResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,data);

@override
String toString() {
  return 'GetProfileResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$GetProfileResponseCopyWith<$Res> implements $GetProfileResponseCopyWith<$Res> {
  factory _$GetProfileResponseCopyWith(_GetProfileResponse value, $Res Function(_GetProfileResponse) _then) = __$GetProfileResponseCopyWithImpl;
@override @useResult
$Res call({
 String status, String? message, GetProfileData? data
});


@override $GetProfileDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$GetProfileResponseCopyWithImpl<$Res>
    implements _$GetProfileResponseCopyWith<$Res> {
  __$GetProfileResponseCopyWithImpl(this._self, this._then);

  final _GetProfileResponse _self;
  final $Res Function(_GetProfileResponse) _then;

/// Create a copy of GetProfileResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = freezed,Object? data = freezed,}) {
  return _then(_GetProfileResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as GetProfileData?,
  ));
}

/// Create a copy of GetProfileResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GetProfileDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $GetProfileDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$GetProfileData {

 int get id; int get businessId; int get walletId; String get businessName; String get phone; String? get displayPicture; int? get staffId; bool get notificationStatus; bool get resetCredentialStatus; bool get autoWithdrawalEnabled; bool get businessProfileCompleted; bool get businessDetailsCompleted; bool get businessKycCompleted; bool get proofOfAddressVerified; String get kyc;
/// Create a copy of GetProfileData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetProfileDataCopyWith<GetProfileData> get copyWith => _$GetProfileDataCopyWithImpl<GetProfileData>(this as GetProfileData, _$identity);

  /// Serializes this GetProfileData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProfileData&&(identical(other.id, id) || other.id == id)&&(identical(other.businessId, businessId) || other.businessId == businessId)&&(identical(other.walletId, walletId) || other.walletId == walletId)&&(identical(other.businessName, businessName) || other.businessName == businessName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.displayPicture, displayPicture) || other.displayPicture == displayPicture)&&(identical(other.staffId, staffId) || other.staffId == staffId)&&(identical(other.notificationStatus, notificationStatus) || other.notificationStatus == notificationStatus)&&(identical(other.resetCredentialStatus, resetCredentialStatus) || other.resetCredentialStatus == resetCredentialStatus)&&(identical(other.autoWithdrawalEnabled, autoWithdrawalEnabled) || other.autoWithdrawalEnabled == autoWithdrawalEnabled)&&(identical(other.businessProfileCompleted, businessProfileCompleted) || other.businessProfileCompleted == businessProfileCompleted)&&(identical(other.businessDetailsCompleted, businessDetailsCompleted) || other.businessDetailsCompleted == businessDetailsCompleted)&&(identical(other.businessKycCompleted, businessKycCompleted) || other.businessKycCompleted == businessKycCompleted)&&(identical(other.proofOfAddressVerified, proofOfAddressVerified) || other.proofOfAddressVerified == proofOfAddressVerified)&&(identical(other.kyc, kyc) || other.kyc == kyc));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,businessId,walletId,businessName,phone,displayPicture,staffId,notificationStatus,resetCredentialStatus,autoWithdrawalEnabled,businessProfileCompleted,businessDetailsCompleted,businessKycCompleted,proofOfAddressVerified,kyc);

@override
String toString() {
  return 'GetProfileData(id: $id, businessId: $businessId, walletId: $walletId, businessName: $businessName, phone: $phone, displayPicture: $displayPicture, staffId: $staffId, notificationStatus: $notificationStatus, resetCredentialStatus: $resetCredentialStatus, autoWithdrawalEnabled: $autoWithdrawalEnabled, businessProfileCompleted: $businessProfileCompleted, businessDetailsCompleted: $businessDetailsCompleted, businessKycCompleted: $businessKycCompleted, proofOfAddressVerified: $proofOfAddressVerified, kyc: $kyc)';
}


}

/// @nodoc
abstract mixin class $GetProfileDataCopyWith<$Res>  {
  factory $GetProfileDataCopyWith(GetProfileData value, $Res Function(GetProfileData) _then) = _$GetProfileDataCopyWithImpl;
@useResult
$Res call({
 int id, int businessId, int walletId, String businessName, String phone, String? displayPicture, int? staffId, bool notificationStatus, bool resetCredentialStatus, bool autoWithdrawalEnabled, bool businessProfileCompleted, bool businessDetailsCompleted, bool businessKycCompleted, bool proofOfAddressVerified, String kyc
});




}
/// @nodoc
class _$GetProfileDataCopyWithImpl<$Res>
    implements $GetProfileDataCopyWith<$Res> {
  _$GetProfileDataCopyWithImpl(this._self, this._then);

  final GetProfileData _self;
  final $Res Function(GetProfileData) _then;

/// Create a copy of GetProfileData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? businessId = null,Object? walletId = null,Object? businessName = null,Object? phone = null,Object? displayPicture = freezed,Object? staffId = freezed,Object? notificationStatus = null,Object? resetCredentialStatus = null,Object? autoWithdrawalEnabled = null,Object? businessProfileCompleted = null,Object? businessDetailsCompleted = null,Object? businessKycCompleted = null,Object? proofOfAddressVerified = null,Object? kyc = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,businessId: null == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as int,walletId: null == walletId ? _self.walletId : walletId // ignore: cast_nullable_to_non_nullable
as int,businessName: null == businessName ? _self.businessName : businessName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,displayPicture: freezed == displayPicture ? _self.displayPicture : displayPicture // ignore: cast_nullable_to_non_nullable
as String?,staffId: freezed == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as int?,notificationStatus: null == notificationStatus ? _self.notificationStatus : notificationStatus // ignore: cast_nullable_to_non_nullable
as bool,resetCredentialStatus: null == resetCredentialStatus ? _self.resetCredentialStatus : resetCredentialStatus // ignore: cast_nullable_to_non_nullable
as bool,autoWithdrawalEnabled: null == autoWithdrawalEnabled ? _self.autoWithdrawalEnabled : autoWithdrawalEnabled // ignore: cast_nullable_to_non_nullable
as bool,businessProfileCompleted: null == businessProfileCompleted ? _self.businessProfileCompleted : businessProfileCompleted // ignore: cast_nullable_to_non_nullable
as bool,businessDetailsCompleted: null == businessDetailsCompleted ? _self.businessDetailsCompleted : businessDetailsCompleted // ignore: cast_nullable_to_non_nullable
as bool,businessKycCompleted: null == businessKycCompleted ? _self.businessKycCompleted : businessKycCompleted // ignore: cast_nullable_to_non_nullable
as bool,proofOfAddressVerified: null == proofOfAddressVerified ? _self.proofOfAddressVerified : proofOfAddressVerified // ignore: cast_nullable_to_non_nullable
as bool,kyc: null == kyc ? _self.kyc : kyc // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GetProfileData].
extension GetProfileDataPatterns on GetProfileData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetProfileData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetProfileData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetProfileData value)  $default,){
final _that = this;
switch (_that) {
case _GetProfileData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetProfileData value)?  $default,){
final _that = this;
switch (_that) {
case _GetProfileData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int businessId,  int walletId,  String businessName,  String phone,  String? displayPicture,  int? staffId,  bool notificationStatus,  bool resetCredentialStatus,  bool autoWithdrawalEnabled,  bool businessProfileCompleted,  bool businessDetailsCompleted,  bool businessKycCompleted,  bool proofOfAddressVerified,  String kyc)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetProfileData() when $default != null:
return $default(_that.id,_that.businessId,_that.walletId,_that.businessName,_that.phone,_that.displayPicture,_that.staffId,_that.notificationStatus,_that.resetCredentialStatus,_that.autoWithdrawalEnabled,_that.businessProfileCompleted,_that.businessDetailsCompleted,_that.businessKycCompleted,_that.proofOfAddressVerified,_that.kyc);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int businessId,  int walletId,  String businessName,  String phone,  String? displayPicture,  int? staffId,  bool notificationStatus,  bool resetCredentialStatus,  bool autoWithdrawalEnabled,  bool businessProfileCompleted,  bool businessDetailsCompleted,  bool businessKycCompleted,  bool proofOfAddressVerified,  String kyc)  $default,) {final _that = this;
switch (_that) {
case _GetProfileData():
return $default(_that.id,_that.businessId,_that.walletId,_that.businessName,_that.phone,_that.displayPicture,_that.staffId,_that.notificationStatus,_that.resetCredentialStatus,_that.autoWithdrawalEnabled,_that.businessProfileCompleted,_that.businessDetailsCompleted,_that.businessKycCompleted,_that.proofOfAddressVerified,_that.kyc);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int businessId,  int walletId,  String businessName,  String phone,  String? displayPicture,  int? staffId,  bool notificationStatus,  bool resetCredentialStatus,  bool autoWithdrawalEnabled,  bool businessProfileCompleted,  bool businessDetailsCompleted,  bool businessKycCompleted,  bool proofOfAddressVerified,  String kyc)?  $default,) {final _that = this;
switch (_that) {
case _GetProfileData() when $default != null:
return $default(_that.id,_that.businessId,_that.walletId,_that.businessName,_that.phone,_that.displayPicture,_that.staffId,_that.notificationStatus,_that.resetCredentialStatus,_that.autoWithdrawalEnabled,_that.businessProfileCompleted,_that.businessDetailsCompleted,_that.businessKycCompleted,_that.proofOfAddressVerified,_that.kyc);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetProfileData implements GetProfileData {
  const _GetProfileData({required this.id, required this.businessId, required this.walletId, required this.businessName, required this.phone, this.displayPicture, this.staffId, this.notificationStatus = false, this.resetCredentialStatus = false, this.autoWithdrawalEnabled = false, this.businessProfileCompleted = false, this.businessDetailsCompleted = false, this.businessKycCompleted = false, this.proofOfAddressVerified = false, this.kyc = "pro"});
  factory _GetProfileData.fromJson(Map<String, dynamic> json) => _$GetProfileDataFromJson(json);

@override final  int id;
@override final  int businessId;
@override final  int walletId;
@override final  String businessName;
@override final  String phone;
@override final  String? displayPicture;
@override final  int? staffId;
@override@JsonKey() final  bool notificationStatus;
@override@JsonKey() final  bool resetCredentialStatus;
@override@JsonKey() final  bool autoWithdrawalEnabled;
@override@JsonKey() final  bool businessProfileCompleted;
@override@JsonKey() final  bool businessDetailsCompleted;
@override@JsonKey() final  bool businessKycCompleted;
@override@JsonKey() final  bool proofOfAddressVerified;
@override@JsonKey() final  String kyc;

/// Create a copy of GetProfileData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetProfileDataCopyWith<_GetProfileData> get copyWith => __$GetProfileDataCopyWithImpl<_GetProfileData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetProfileDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetProfileData&&(identical(other.id, id) || other.id == id)&&(identical(other.businessId, businessId) || other.businessId == businessId)&&(identical(other.walletId, walletId) || other.walletId == walletId)&&(identical(other.businessName, businessName) || other.businessName == businessName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.displayPicture, displayPicture) || other.displayPicture == displayPicture)&&(identical(other.staffId, staffId) || other.staffId == staffId)&&(identical(other.notificationStatus, notificationStatus) || other.notificationStatus == notificationStatus)&&(identical(other.resetCredentialStatus, resetCredentialStatus) || other.resetCredentialStatus == resetCredentialStatus)&&(identical(other.autoWithdrawalEnabled, autoWithdrawalEnabled) || other.autoWithdrawalEnabled == autoWithdrawalEnabled)&&(identical(other.businessProfileCompleted, businessProfileCompleted) || other.businessProfileCompleted == businessProfileCompleted)&&(identical(other.businessDetailsCompleted, businessDetailsCompleted) || other.businessDetailsCompleted == businessDetailsCompleted)&&(identical(other.businessKycCompleted, businessKycCompleted) || other.businessKycCompleted == businessKycCompleted)&&(identical(other.proofOfAddressVerified, proofOfAddressVerified) || other.proofOfAddressVerified == proofOfAddressVerified)&&(identical(other.kyc, kyc) || other.kyc == kyc));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,businessId,walletId,businessName,phone,displayPicture,staffId,notificationStatus,resetCredentialStatus,autoWithdrawalEnabled,businessProfileCompleted,businessDetailsCompleted,businessKycCompleted,proofOfAddressVerified,kyc);

@override
String toString() {
  return 'GetProfileData(id: $id, businessId: $businessId, walletId: $walletId, businessName: $businessName, phone: $phone, displayPicture: $displayPicture, staffId: $staffId, notificationStatus: $notificationStatus, resetCredentialStatus: $resetCredentialStatus, autoWithdrawalEnabled: $autoWithdrawalEnabled, businessProfileCompleted: $businessProfileCompleted, businessDetailsCompleted: $businessDetailsCompleted, businessKycCompleted: $businessKycCompleted, proofOfAddressVerified: $proofOfAddressVerified, kyc: $kyc)';
}


}

/// @nodoc
abstract mixin class _$GetProfileDataCopyWith<$Res> implements $GetProfileDataCopyWith<$Res> {
  factory _$GetProfileDataCopyWith(_GetProfileData value, $Res Function(_GetProfileData) _then) = __$GetProfileDataCopyWithImpl;
@override @useResult
$Res call({
 int id, int businessId, int walletId, String businessName, String phone, String? displayPicture, int? staffId, bool notificationStatus, bool resetCredentialStatus, bool autoWithdrawalEnabled, bool businessProfileCompleted, bool businessDetailsCompleted, bool businessKycCompleted, bool proofOfAddressVerified, String kyc
});




}
/// @nodoc
class __$GetProfileDataCopyWithImpl<$Res>
    implements _$GetProfileDataCopyWith<$Res> {
  __$GetProfileDataCopyWithImpl(this._self, this._then);

  final _GetProfileData _self;
  final $Res Function(_GetProfileData) _then;

/// Create a copy of GetProfileData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? businessId = null,Object? walletId = null,Object? businessName = null,Object? phone = null,Object? displayPicture = freezed,Object? staffId = freezed,Object? notificationStatus = null,Object? resetCredentialStatus = null,Object? autoWithdrawalEnabled = null,Object? businessProfileCompleted = null,Object? businessDetailsCompleted = null,Object? businessKycCompleted = null,Object? proofOfAddressVerified = null,Object? kyc = null,}) {
  return _then(_GetProfileData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,businessId: null == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as int,walletId: null == walletId ? _self.walletId : walletId // ignore: cast_nullable_to_non_nullable
as int,businessName: null == businessName ? _self.businessName : businessName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,displayPicture: freezed == displayPicture ? _self.displayPicture : displayPicture // ignore: cast_nullable_to_non_nullable
as String?,staffId: freezed == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as int?,notificationStatus: null == notificationStatus ? _self.notificationStatus : notificationStatus // ignore: cast_nullable_to_non_nullable
as bool,resetCredentialStatus: null == resetCredentialStatus ? _self.resetCredentialStatus : resetCredentialStatus // ignore: cast_nullable_to_non_nullable
as bool,autoWithdrawalEnabled: null == autoWithdrawalEnabled ? _self.autoWithdrawalEnabled : autoWithdrawalEnabled // ignore: cast_nullable_to_non_nullable
as bool,businessProfileCompleted: null == businessProfileCompleted ? _self.businessProfileCompleted : businessProfileCompleted // ignore: cast_nullable_to_non_nullable
as bool,businessDetailsCompleted: null == businessDetailsCompleted ? _self.businessDetailsCompleted : businessDetailsCompleted // ignore: cast_nullable_to_non_nullable
as bool,businessKycCompleted: null == businessKycCompleted ? _self.businessKycCompleted : businessKycCompleted // ignore: cast_nullable_to_non_nullable
as bool,proofOfAddressVerified: null == proofOfAddressVerified ? _self.proofOfAddressVerified : proofOfAddressVerified // ignore: cast_nullable_to_non_nullable
as bool,kyc: null == kyc ? _self.kyc : kyc // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
