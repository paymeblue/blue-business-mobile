// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'electricity_beneficiary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ElectricityBeneficiary {

 int? get id; String get receiver; String get meterType; int get providerId; String get customerName; String get customerInfo; String get provider; String get serviceCharge; String get minimumAmount; String get state; String? get tag; String get isOnline;
/// Create a copy of ElectricityBeneficiary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ElectricityBeneficiaryCopyWith<ElectricityBeneficiary> get copyWith => _$ElectricityBeneficiaryCopyWithImpl<ElectricityBeneficiary>(this as ElectricityBeneficiary, _$identity);

  /// Serializes this ElectricityBeneficiary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ElectricityBeneficiary&&(identical(other.id, id) || other.id == id)&&(identical(other.receiver, receiver) || other.receiver == receiver)&&(identical(other.meterType, meterType) || other.meterType == meterType)&&(identical(other.providerId, providerId) || other.providerId == providerId)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerInfo, customerInfo) || other.customerInfo == customerInfo)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.serviceCharge, serviceCharge) || other.serviceCharge == serviceCharge)&&(identical(other.minimumAmount, minimumAmount) || other.minimumAmount == minimumAmount)&&(identical(other.state, state) || other.state == state)&&(identical(other.tag, tag) || other.tag == tag)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,receiver,meterType,providerId,customerName,customerInfo,provider,serviceCharge,minimumAmount,state,tag,isOnline);

@override
String toString() {
  return 'ElectricityBeneficiary(id: $id, receiver: $receiver, meterType: $meterType, providerId: $providerId, customerName: $customerName, customerInfo: $customerInfo, provider: $provider, serviceCharge: $serviceCharge, minimumAmount: $minimumAmount, state: $state, tag: $tag, isOnline: $isOnline)';
}


}

/// @nodoc
abstract mixin class $ElectricityBeneficiaryCopyWith<$Res>  {
  factory $ElectricityBeneficiaryCopyWith(ElectricityBeneficiary value, $Res Function(ElectricityBeneficiary) _then) = _$ElectricityBeneficiaryCopyWithImpl;
@useResult
$Res call({
 int? id, String receiver, String meterType, int providerId, String customerName, String customerInfo, String provider, String serviceCharge, String minimumAmount, String state, String? tag, String isOnline
});




}
/// @nodoc
class _$ElectricityBeneficiaryCopyWithImpl<$Res>
    implements $ElectricityBeneficiaryCopyWith<$Res> {
  _$ElectricityBeneficiaryCopyWithImpl(this._self, this._then);

  final ElectricityBeneficiary _self;
  final $Res Function(ElectricityBeneficiary) _then;

/// Create a copy of ElectricityBeneficiary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? receiver = null,Object? meterType = null,Object? providerId = null,Object? customerName = null,Object? customerInfo = null,Object? provider = null,Object? serviceCharge = null,Object? minimumAmount = null,Object? state = null,Object? tag = freezed,Object? isOnline = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,receiver: null == receiver ? _self.receiver : receiver // ignore: cast_nullable_to_non_nullable
as String,meterType: null == meterType ? _self.meterType : meterType // ignore: cast_nullable_to_non_nullable
as String,providerId: null == providerId ? _self.providerId : providerId // ignore: cast_nullable_to_non_nullable
as int,customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,customerInfo: null == customerInfo ? _self.customerInfo : customerInfo // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,serviceCharge: null == serviceCharge ? _self.serviceCharge : serviceCharge // ignore: cast_nullable_to_non_nullable
as String,minimumAmount: null == minimumAmount ? _self.minimumAmount : minimumAmount // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,tag: freezed == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String?,isOnline: null == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ElectricityBeneficiary].
extension ElectricityBeneficiaryPatterns on ElectricityBeneficiary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ElectricityBeneficiary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ElectricityBeneficiary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ElectricityBeneficiary value)  $default,){
final _that = this;
switch (_that) {
case _ElectricityBeneficiary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ElectricityBeneficiary value)?  $default,){
final _that = this;
switch (_that) {
case _ElectricityBeneficiary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String receiver,  String meterType,  int providerId,  String customerName,  String customerInfo,  String provider,  String serviceCharge,  String minimumAmount,  String state,  String? tag,  String isOnline)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ElectricityBeneficiary() when $default != null:
return $default(_that.id,_that.receiver,_that.meterType,_that.providerId,_that.customerName,_that.customerInfo,_that.provider,_that.serviceCharge,_that.minimumAmount,_that.state,_that.tag,_that.isOnline);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String receiver,  String meterType,  int providerId,  String customerName,  String customerInfo,  String provider,  String serviceCharge,  String minimumAmount,  String state,  String? tag,  String isOnline)  $default,) {final _that = this;
switch (_that) {
case _ElectricityBeneficiary():
return $default(_that.id,_that.receiver,_that.meterType,_that.providerId,_that.customerName,_that.customerInfo,_that.provider,_that.serviceCharge,_that.minimumAmount,_that.state,_that.tag,_that.isOnline);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String receiver,  String meterType,  int providerId,  String customerName,  String customerInfo,  String provider,  String serviceCharge,  String minimumAmount,  String state,  String? tag,  String isOnline)?  $default,) {final _that = this;
switch (_that) {
case _ElectricityBeneficiary() when $default != null:
return $default(_that.id,_that.receiver,_that.meterType,_that.providerId,_that.customerName,_that.customerInfo,_that.provider,_that.serviceCharge,_that.minimumAmount,_that.state,_that.tag,_that.isOnline);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ElectricityBeneficiary implements ElectricityBeneficiary {
  const _ElectricityBeneficiary({this.id, required this.receiver, required this.meterType, required this.providerId, required this.customerName, required this.customerInfo, required this.provider, this.serviceCharge = "100", this.minimumAmount = "0.0", required this.state, this.tag, this.isOnline = "false"});
  factory _ElectricityBeneficiary.fromJson(Map<String, dynamic> json) => _$ElectricityBeneficiaryFromJson(json);

@override final  int? id;
@override final  String receiver;
@override final  String meterType;
@override final  int providerId;
@override final  String customerName;
@override final  String customerInfo;
@override final  String provider;
@override@JsonKey() final  String serviceCharge;
@override@JsonKey() final  String minimumAmount;
@override final  String state;
@override final  String? tag;
@override@JsonKey() final  String isOnline;

/// Create a copy of ElectricityBeneficiary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ElectricityBeneficiaryCopyWith<_ElectricityBeneficiary> get copyWith => __$ElectricityBeneficiaryCopyWithImpl<_ElectricityBeneficiary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ElectricityBeneficiaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ElectricityBeneficiary&&(identical(other.id, id) || other.id == id)&&(identical(other.receiver, receiver) || other.receiver == receiver)&&(identical(other.meterType, meterType) || other.meterType == meterType)&&(identical(other.providerId, providerId) || other.providerId == providerId)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerInfo, customerInfo) || other.customerInfo == customerInfo)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.serviceCharge, serviceCharge) || other.serviceCharge == serviceCharge)&&(identical(other.minimumAmount, minimumAmount) || other.minimumAmount == minimumAmount)&&(identical(other.state, state) || other.state == state)&&(identical(other.tag, tag) || other.tag == tag)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,receiver,meterType,providerId,customerName,customerInfo,provider,serviceCharge,minimumAmount,state,tag,isOnline);

@override
String toString() {
  return 'ElectricityBeneficiary(id: $id, receiver: $receiver, meterType: $meterType, providerId: $providerId, customerName: $customerName, customerInfo: $customerInfo, provider: $provider, serviceCharge: $serviceCharge, minimumAmount: $minimumAmount, state: $state, tag: $tag, isOnline: $isOnline)';
}


}

/// @nodoc
abstract mixin class _$ElectricityBeneficiaryCopyWith<$Res> implements $ElectricityBeneficiaryCopyWith<$Res> {
  factory _$ElectricityBeneficiaryCopyWith(_ElectricityBeneficiary value, $Res Function(_ElectricityBeneficiary) _then) = __$ElectricityBeneficiaryCopyWithImpl;
@override @useResult
$Res call({
 int? id, String receiver, String meterType, int providerId, String customerName, String customerInfo, String provider, String serviceCharge, String minimumAmount, String state, String? tag, String isOnline
});




}
/// @nodoc
class __$ElectricityBeneficiaryCopyWithImpl<$Res>
    implements _$ElectricityBeneficiaryCopyWith<$Res> {
  __$ElectricityBeneficiaryCopyWithImpl(this._self, this._then);

  final _ElectricityBeneficiary _self;
  final $Res Function(_ElectricityBeneficiary) _then;

/// Create a copy of ElectricityBeneficiary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? receiver = null,Object? meterType = null,Object? providerId = null,Object? customerName = null,Object? customerInfo = null,Object? provider = null,Object? serviceCharge = null,Object? minimumAmount = null,Object? state = null,Object? tag = freezed,Object? isOnline = null,}) {
  return _then(_ElectricityBeneficiary(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,receiver: null == receiver ? _self.receiver : receiver // ignore: cast_nullable_to_non_nullable
as String,meterType: null == meterType ? _self.meterType : meterType // ignore: cast_nullable_to_non_nullable
as String,providerId: null == providerId ? _self.providerId : providerId // ignore: cast_nullable_to_non_nullable
as int,customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,customerInfo: null == customerInfo ? _self.customerInfo : customerInfo // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,serviceCharge: null == serviceCharge ? _self.serviceCharge : serviceCharge // ignore: cast_nullable_to_non_nullable
as String,minimumAmount: null == minimumAmount ? _self.minimumAmount : minimumAmount // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,tag: freezed == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String?,isOnline: null == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
