// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginData {

 int get id; String get phone; BusinessData get business; DashboardData get dashboardData; String get kyc; Token get token; String? get createdAt; String? get displayPicture; bool get proofOfAddressVerified;
/// Create a copy of LoginData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginDataCopyWith<LoginData> get copyWith => _$LoginDataCopyWithImpl<LoginData>(this as LoginData, _$identity);

  /// Serializes this LoginData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginData&&(identical(other.id, id) || other.id == id)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.business, business) || other.business == business)&&(identical(other.dashboardData, dashboardData) || other.dashboardData == dashboardData)&&(identical(other.kyc, kyc) || other.kyc == kyc)&&(identical(other.token, token) || other.token == token)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.displayPicture, displayPicture) || other.displayPicture == displayPicture)&&(identical(other.proofOfAddressVerified, proofOfAddressVerified) || other.proofOfAddressVerified == proofOfAddressVerified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,phone,business,dashboardData,kyc,token,createdAt,displayPicture,proofOfAddressVerified);

@override
String toString() {
  return 'LoginData(id: $id, phone: $phone, business: $business, dashboardData: $dashboardData, kyc: $kyc, token: $token, createdAt: $createdAt, displayPicture: $displayPicture, proofOfAddressVerified: $proofOfAddressVerified)';
}


}

/// @nodoc
abstract mixin class $LoginDataCopyWith<$Res>  {
  factory $LoginDataCopyWith(LoginData value, $Res Function(LoginData) _then) = _$LoginDataCopyWithImpl;
@useResult
$Res call({
 int id, String phone, BusinessData business, DashboardData dashboardData, String kyc, Token token, String? createdAt, String? displayPicture, bool proofOfAddressVerified
});


$BusinessDataCopyWith<$Res> get business;$DashboardDataCopyWith<$Res> get dashboardData;$TokenCopyWith<$Res> get token;

}
/// @nodoc
class _$LoginDataCopyWithImpl<$Res>
    implements $LoginDataCopyWith<$Res> {
  _$LoginDataCopyWithImpl(this._self, this._then);

  final LoginData _self;
  final $Res Function(LoginData) _then;

/// Create a copy of LoginData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? phone = null,Object? business = null,Object? dashboardData = null,Object? kyc = null,Object? token = null,Object? createdAt = freezed,Object? displayPicture = freezed,Object? proofOfAddressVerified = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,business: null == business ? _self.business : business // ignore: cast_nullable_to_non_nullable
as BusinessData,dashboardData: null == dashboardData ? _self.dashboardData : dashboardData // ignore: cast_nullable_to_non_nullable
as DashboardData,kyc: null == kyc ? _self.kyc : kyc // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as Token,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,displayPicture: freezed == displayPicture ? _self.displayPicture : displayPicture // ignore: cast_nullable_to_non_nullable
as String?,proofOfAddressVerified: null == proofOfAddressVerified ? _self.proofOfAddressVerified : proofOfAddressVerified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of LoginData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BusinessDataCopyWith<$Res> get business {
  
  return $BusinessDataCopyWith<$Res>(_self.business, (value) {
    return _then(_self.copyWith(business: value));
  });
}/// Create a copy of LoginData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DashboardDataCopyWith<$Res> get dashboardData {
  
  return $DashboardDataCopyWith<$Res>(_self.dashboardData, (value) {
    return _then(_self.copyWith(dashboardData: value));
  });
}/// Create a copy of LoginData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TokenCopyWith<$Res> get token {
  
  return $TokenCopyWith<$Res>(_self.token, (value) {
    return _then(_self.copyWith(token: value));
  });
}
}


/// Adds pattern-matching-related methods to [LoginData].
extension LoginDataPatterns on LoginData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginData value)  $default,){
final _that = this;
switch (_that) {
case _LoginData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginData value)?  $default,){
final _that = this;
switch (_that) {
case _LoginData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String phone,  BusinessData business,  DashboardData dashboardData,  String kyc,  Token token,  String? createdAt,  String? displayPicture,  bool proofOfAddressVerified)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginData() when $default != null:
return $default(_that.id,_that.phone,_that.business,_that.dashboardData,_that.kyc,_that.token,_that.createdAt,_that.displayPicture,_that.proofOfAddressVerified);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String phone,  BusinessData business,  DashboardData dashboardData,  String kyc,  Token token,  String? createdAt,  String? displayPicture,  bool proofOfAddressVerified)  $default,) {final _that = this;
switch (_that) {
case _LoginData():
return $default(_that.id,_that.phone,_that.business,_that.dashboardData,_that.kyc,_that.token,_that.createdAt,_that.displayPicture,_that.proofOfAddressVerified);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String phone,  BusinessData business,  DashboardData dashboardData,  String kyc,  Token token,  String? createdAt,  String? displayPicture,  bool proofOfAddressVerified)?  $default,) {final _that = this;
switch (_that) {
case _LoginData() when $default != null:
return $default(_that.id,_that.phone,_that.business,_that.dashboardData,_that.kyc,_that.token,_that.createdAt,_that.displayPicture,_that.proofOfAddressVerified);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginData implements LoginData {
  const _LoginData({required this.id, required this.phone, required this.business, required this.dashboardData, this.kyc = "basic", required this.token, this.createdAt, this.displayPicture, this.proofOfAddressVerified = false});
  factory _LoginData.fromJson(Map<String, dynamic> json) => _$LoginDataFromJson(json);

@override final  int id;
@override final  String phone;
@override final  BusinessData business;
@override final  DashboardData dashboardData;
@override@JsonKey() final  String kyc;
@override final  Token token;
@override final  String? createdAt;
@override final  String? displayPicture;
@override@JsonKey() final  bool proofOfAddressVerified;

/// Create a copy of LoginData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginDataCopyWith<_LoginData> get copyWith => __$LoginDataCopyWithImpl<_LoginData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginData&&(identical(other.id, id) || other.id == id)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.business, business) || other.business == business)&&(identical(other.dashboardData, dashboardData) || other.dashboardData == dashboardData)&&(identical(other.kyc, kyc) || other.kyc == kyc)&&(identical(other.token, token) || other.token == token)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.displayPicture, displayPicture) || other.displayPicture == displayPicture)&&(identical(other.proofOfAddressVerified, proofOfAddressVerified) || other.proofOfAddressVerified == proofOfAddressVerified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,phone,business,dashboardData,kyc,token,createdAt,displayPicture,proofOfAddressVerified);

@override
String toString() {
  return 'LoginData(id: $id, phone: $phone, business: $business, dashboardData: $dashboardData, kyc: $kyc, token: $token, createdAt: $createdAt, displayPicture: $displayPicture, proofOfAddressVerified: $proofOfAddressVerified)';
}


}

/// @nodoc
abstract mixin class _$LoginDataCopyWith<$Res> implements $LoginDataCopyWith<$Res> {
  factory _$LoginDataCopyWith(_LoginData value, $Res Function(_LoginData) _then) = __$LoginDataCopyWithImpl;
@override @useResult
$Res call({
 int id, String phone, BusinessData business, DashboardData dashboardData, String kyc, Token token, String? createdAt, String? displayPicture, bool proofOfAddressVerified
});


@override $BusinessDataCopyWith<$Res> get business;@override $DashboardDataCopyWith<$Res> get dashboardData;@override $TokenCopyWith<$Res> get token;

}
/// @nodoc
class __$LoginDataCopyWithImpl<$Res>
    implements _$LoginDataCopyWith<$Res> {
  __$LoginDataCopyWithImpl(this._self, this._then);

  final _LoginData _self;
  final $Res Function(_LoginData) _then;

/// Create a copy of LoginData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? phone = null,Object? business = null,Object? dashboardData = null,Object? kyc = null,Object? token = null,Object? createdAt = freezed,Object? displayPicture = freezed,Object? proofOfAddressVerified = null,}) {
  return _then(_LoginData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,business: null == business ? _self.business : business // ignore: cast_nullable_to_non_nullable
as BusinessData,dashboardData: null == dashboardData ? _self.dashboardData : dashboardData // ignore: cast_nullable_to_non_nullable
as DashboardData,kyc: null == kyc ? _self.kyc : kyc // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as Token,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,displayPicture: freezed == displayPicture ? _self.displayPicture : displayPicture // ignore: cast_nullable_to_non_nullable
as String?,proofOfAddressVerified: null == proofOfAddressVerified ? _self.proofOfAddressVerified : proofOfAddressVerified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of LoginData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BusinessDataCopyWith<$Res> get business {
  
  return $BusinessDataCopyWith<$Res>(_self.business, (value) {
    return _then(_self.copyWith(business: value));
  });
}/// Create a copy of LoginData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DashboardDataCopyWith<$Res> get dashboardData {
  
  return $DashboardDataCopyWith<$Res>(_self.dashboardData, (value) {
    return _then(_self.copyWith(dashboardData: value));
  });
}/// Create a copy of LoginData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TokenCopyWith<$Res> get token {
  
  return $TokenCopyWith<$Res>(_self.token, (value) {
    return _then(_self.copyWith(token: value));
  });
}
}

// dart format on
