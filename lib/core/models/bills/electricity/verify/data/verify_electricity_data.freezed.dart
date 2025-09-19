// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_electricity_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerifyElectricityData {

 String get transactionId; String get customerName; String get customerInfo; String get receiver; String get provider; String get meterType; String get serviceCharge; String get minimumAmount; String get status; String? get createdAt;
/// Create a copy of VerifyElectricityData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyElectricityDataCopyWith<VerifyElectricityData> get copyWith => _$VerifyElectricityDataCopyWithImpl<VerifyElectricityData>(this as VerifyElectricityData, _$identity);

  /// Serializes this VerifyElectricityData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyElectricityData&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerInfo, customerInfo) || other.customerInfo == customerInfo)&&(identical(other.receiver, receiver) || other.receiver == receiver)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.meterType, meterType) || other.meterType == meterType)&&(identical(other.serviceCharge, serviceCharge) || other.serviceCharge == serviceCharge)&&(identical(other.minimumAmount, minimumAmount) || other.minimumAmount == minimumAmount)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,customerName,customerInfo,receiver,provider,meterType,serviceCharge,minimumAmount,status,createdAt);

@override
String toString() {
  return 'VerifyElectricityData(transactionId: $transactionId, customerName: $customerName, customerInfo: $customerInfo, receiver: $receiver, provider: $provider, meterType: $meterType, serviceCharge: $serviceCharge, minimumAmount: $minimumAmount, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $VerifyElectricityDataCopyWith<$Res>  {
  factory $VerifyElectricityDataCopyWith(VerifyElectricityData value, $Res Function(VerifyElectricityData) _then) = _$VerifyElectricityDataCopyWithImpl;
@useResult
$Res call({
 String transactionId, String customerName, String customerInfo, String receiver, String provider, String meterType, String serviceCharge, String minimumAmount, String status, String? createdAt
});




}
/// @nodoc
class _$VerifyElectricityDataCopyWithImpl<$Res>
    implements $VerifyElectricityDataCopyWith<$Res> {
  _$VerifyElectricityDataCopyWithImpl(this._self, this._then);

  final VerifyElectricityData _self;
  final $Res Function(VerifyElectricityData) _then;

/// Create a copy of VerifyElectricityData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionId = null,Object? customerName = null,Object? customerInfo = null,Object? receiver = null,Object? provider = null,Object? meterType = null,Object? serviceCharge = null,Object? minimumAmount = null,Object? status = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,customerInfo: null == customerInfo ? _self.customerInfo : customerInfo // ignore: cast_nullable_to_non_nullable
as String,receiver: null == receiver ? _self.receiver : receiver // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,meterType: null == meterType ? _self.meterType : meterType // ignore: cast_nullable_to_non_nullable
as String,serviceCharge: null == serviceCharge ? _self.serviceCharge : serviceCharge // ignore: cast_nullable_to_non_nullable
as String,minimumAmount: null == minimumAmount ? _self.minimumAmount : minimumAmount // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [VerifyElectricityData].
extension VerifyElectricityDataPatterns on VerifyElectricityData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifyElectricityData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyElectricityData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifyElectricityData value)  $default,){
final _that = this;
switch (_that) {
case _VerifyElectricityData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifyElectricityData value)?  $default,){
final _that = this;
switch (_that) {
case _VerifyElectricityData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String transactionId,  String customerName,  String customerInfo,  String receiver,  String provider,  String meterType,  String serviceCharge,  String minimumAmount,  String status,  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifyElectricityData() when $default != null:
return $default(_that.transactionId,_that.customerName,_that.customerInfo,_that.receiver,_that.provider,_that.meterType,_that.serviceCharge,_that.minimumAmount,_that.status,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String transactionId,  String customerName,  String customerInfo,  String receiver,  String provider,  String meterType,  String serviceCharge,  String minimumAmount,  String status,  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _VerifyElectricityData():
return $default(_that.transactionId,_that.customerName,_that.customerInfo,_that.receiver,_that.provider,_that.meterType,_that.serviceCharge,_that.minimumAmount,_that.status,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String transactionId,  String customerName,  String customerInfo,  String receiver,  String provider,  String meterType,  String serviceCharge,  String minimumAmount,  String status,  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _VerifyElectricityData() when $default != null:
return $default(_that.transactionId,_that.customerName,_that.customerInfo,_that.receiver,_that.provider,_that.meterType,_that.serviceCharge,_that.minimumAmount,_that.status,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VerifyElectricityData implements VerifyElectricityData {
  const _VerifyElectricityData({required this.transactionId, required this.customerName, required this.customerInfo, required this.receiver, required this.provider, required this.meterType, this.serviceCharge = "100.00", this.minimumAmount = "0.0", this.status = "pending", this.createdAt});
  factory _VerifyElectricityData.fromJson(Map<String, dynamic> json) => _$VerifyElectricityDataFromJson(json);

@override final  String transactionId;
@override final  String customerName;
@override final  String customerInfo;
@override final  String receiver;
@override final  String provider;
@override final  String meterType;
@override@JsonKey() final  String serviceCharge;
@override@JsonKey() final  String minimumAmount;
@override@JsonKey() final  String status;
@override final  String? createdAt;

/// Create a copy of VerifyElectricityData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyElectricityDataCopyWith<_VerifyElectricityData> get copyWith => __$VerifyElectricityDataCopyWithImpl<_VerifyElectricityData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VerifyElectricityDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyElectricityData&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerInfo, customerInfo) || other.customerInfo == customerInfo)&&(identical(other.receiver, receiver) || other.receiver == receiver)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.meterType, meterType) || other.meterType == meterType)&&(identical(other.serviceCharge, serviceCharge) || other.serviceCharge == serviceCharge)&&(identical(other.minimumAmount, minimumAmount) || other.minimumAmount == minimumAmount)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,customerName,customerInfo,receiver,provider,meterType,serviceCharge,minimumAmount,status,createdAt);

@override
String toString() {
  return 'VerifyElectricityData(transactionId: $transactionId, customerName: $customerName, customerInfo: $customerInfo, receiver: $receiver, provider: $provider, meterType: $meterType, serviceCharge: $serviceCharge, minimumAmount: $minimumAmount, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$VerifyElectricityDataCopyWith<$Res> implements $VerifyElectricityDataCopyWith<$Res> {
  factory _$VerifyElectricityDataCopyWith(_VerifyElectricityData value, $Res Function(_VerifyElectricityData) _then) = __$VerifyElectricityDataCopyWithImpl;
@override @useResult
$Res call({
 String transactionId, String customerName, String customerInfo, String receiver, String provider, String meterType, String serviceCharge, String minimumAmount, String status, String? createdAt
});




}
/// @nodoc
class __$VerifyElectricityDataCopyWithImpl<$Res>
    implements _$VerifyElectricityDataCopyWith<$Res> {
  __$VerifyElectricityDataCopyWithImpl(this._self, this._then);

  final _VerifyElectricityData _self;
  final $Res Function(_VerifyElectricityData) _then;

/// Create a copy of VerifyElectricityData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionId = null,Object? customerName = null,Object? customerInfo = null,Object? receiver = null,Object? provider = null,Object? meterType = null,Object? serviceCharge = null,Object? minimumAmount = null,Object? status = null,Object? createdAt = freezed,}) {
  return _then(_VerifyElectricityData(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,customerInfo: null == customerInfo ? _self.customerInfo : customerInfo // ignore: cast_nullable_to_non_nullable
as String,receiver: null == receiver ? _self.receiver : receiver // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,meterType: null == meterType ? _self.meterType : meterType // ignore: cast_nullable_to_non_nullable
as String,serviceCharge: null == serviceCharge ? _self.serviceCharge : serviceCharge // ignore: cast_nullable_to_non_nullable
as String,minimumAmount: null == minimumAmount ? _self.minimumAmount : minimumAmount // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
