// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vend_electricity_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VendElectricityData {

 String get transactionId; String get customerName; String get customerInfo; String get receiver; String get provider; String get meterType; String get paymentReference; String get amount; String get status; String? get createdAt; String? get units; String? get token;
/// Create a copy of VendElectricityData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VendElectricityDataCopyWith<VendElectricityData> get copyWith => _$VendElectricityDataCopyWithImpl<VendElectricityData>(this as VendElectricityData, _$identity);

  /// Serializes this VendElectricityData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VendElectricityData&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerInfo, customerInfo) || other.customerInfo == customerInfo)&&(identical(other.receiver, receiver) || other.receiver == receiver)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.meterType, meterType) || other.meterType == meterType)&&(identical(other.paymentReference, paymentReference) || other.paymentReference == paymentReference)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.units, units) || other.units == units)&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,customerName,customerInfo,receiver,provider,meterType,paymentReference,amount,status,createdAt,units,token);

@override
String toString() {
  return 'VendElectricityData(transactionId: $transactionId, customerName: $customerName, customerInfo: $customerInfo, receiver: $receiver, provider: $provider, meterType: $meterType, paymentReference: $paymentReference, amount: $amount, status: $status, createdAt: $createdAt, units: $units, token: $token)';
}


}

/// @nodoc
abstract mixin class $VendElectricityDataCopyWith<$Res>  {
  factory $VendElectricityDataCopyWith(VendElectricityData value, $Res Function(VendElectricityData) _then) = _$VendElectricityDataCopyWithImpl;
@useResult
$Res call({
 String transactionId, String customerName, String customerInfo, String receiver, String provider, String meterType, String paymentReference, String amount, String status, String? createdAt, String? units, String? token
});




}
/// @nodoc
class _$VendElectricityDataCopyWithImpl<$Res>
    implements $VendElectricityDataCopyWith<$Res> {
  _$VendElectricityDataCopyWithImpl(this._self, this._then);

  final VendElectricityData _self;
  final $Res Function(VendElectricityData) _then;

/// Create a copy of VendElectricityData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionId = null,Object? customerName = null,Object? customerInfo = null,Object? receiver = null,Object? provider = null,Object? meterType = null,Object? paymentReference = null,Object? amount = null,Object? status = null,Object? createdAt = freezed,Object? units = freezed,Object? token = freezed,}) {
  return _then(_self.copyWith(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,customerInfo: null == customerInfo ? _self.customerInfo : customerInfo // ignore: cast_nullable_to_non_nullable
as String,receiver: null == receiver ? _self.receiver : receiver // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,meterType: null == meterType ? _self.meterType : meterType // ignore: cast_nullable_to_non_nullable
as String,paymentReference: null == paymentReference ? _self.paymentReference : paymentReference // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,units: freezed == units ? _self.units : units // ignore: cast_nullable_to_non_nullable
as String?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [VendElectricityData].
extension VendElectricityDataPatterns on VendElectricityData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VendElectricityData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VendElectricityData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VendElectricityData value)  $default,){
final _that = this;
switch (_that) {
case _VendElectricityData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VendElectricityData value)?  $default,){
final _that = this;
switch (_that) {
case _VendElectricityData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String transactionId,  String customerName,  String customerInfo,  String receiver,  String provider,  String meterType,  String paymentReference,  String amount,  String status,  String? createdAt,  String? units,  String? token)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VendElectricityData() when $default != null:
return $default(_that.transactionId,_that.customerName,_that.customerInfo,_that.receiver,_that.provider,_that.meterType,_that.paymentReference,_that.amount,_that.status,_that.createdAt,_that.units,_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String transactionId,  String customerName,  String customerInfo,  String receiver,  String provider,  String meterType,  String paymentReference,  String amount,  String status,  String? createdAt,  String? units,  String? token)  $default,) {final _that = this;
switch (_that) {
case _VendElectricityData():
return $default(_that.transactionId,_that.customerName,_that.customerInfo,_that.receiver,_that.provider,_that.meterType,_that.paymentReference,_that.amount,_that.status,_that.createdAt,_that.units,_that.token);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String transactionId,  String customerName,  String customerInfo,  String receiver,  String provider,  String meterType,  String paymentReference,  String amount,  String status,  String? createdAt,  String? units,  String? token)?  $default,) {final _that = this;
switch (_that) {
case _VendElectricityData() when $default != null:
return $default(_that.transactionId,_that.customerName,_that.customerInfo,_that.receiver,_that.provider,_that.meterType,_that.paymentReference,_that.amount,_that.status,_that.createdAt,_that.units,_that.token);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VendElectricityData implements VendElectricityData {
  const _VendElectricityData({required this.transactionId, required this.customerName, required this.customerInfo, required this.receiver, required this.provider, required this.meterType, required this.paymentReference, required this.amount, this.status = "pending", this.createdAt, this.units, this.token});
  factory _VendElectricityData.fromJson(Map<String, dynamic> json) => _$VendElectricityDataFromJson(json);

@override final  String transactionId;
@override final  String customerName;
@override final  String customerInfo;
@override final  String receiver;
@override final  String provider;
@override final  String meterType;
@override final  String paymentReference;
@override final  String amount;
@override@JsonKey() final  String status;
@override final  String? createdAt;
@override final  String? units;
@override final  String? token;

/// Create a copy of VendElectricityData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VendElectricityDataCopyWith<_VendElectricityData> get copyWith => __$VendElectricityDataCopyWithImpl<_VendElectricityData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VendElectricityDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VendElectricityData&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerInfo, customerInfo) || other.customerInfo == customerInfo)&&(identical(other.receiver, receiver) || other.receiver == receiver)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.meterType, meterType) || other.meterType == meterType)&&(identical(other.paymentReference, paymentReference) || other.paymentReference == paymentReference)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.units, units) || other.units == units)&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,customerName,customerInfo,receiver,provider,meterType,paymentReference,amount,status,createdAt,units,token);

@override
String toString() {
  return 'VendElectricityData(transactionId: $transactionId, customerName: $customerName, customerInfo: $customerInfo, receiver: $receiver, provider: $provider, meterType: $meterType, paymentReference: $paymentReference, amount: $amount, status: $status, createdAt: $createdAt, units: $units, token: $token)';
}


}

/// @nodoc
abstract mixin class _$VendElectricityDataCopyWith<$Res> implements $VendElectricityDataCopyWith<$Res> {
  factory _$VendElectricityDataCopyWith(_VendElectricityData value, $Res Function(_VendElectricityData) _then) = __$VendElectricityDataCopyWithImpl;
@override @useResult
$Res call({
 String transactionId, String customerName, String customerInfo, String receiver, String provider, String meterType, String paymentReference, String amount, String status, String? createdAt, String? units, String? token
});




}
/// @nodoc
class __$VendElectricityDataCopyWithImpl<$Res>
    implements _$VendElectricityDataCopyWith<$Res> {
  __$VendElectricityDataCopyWithImpl(this._self, this._then);

  final _VendElectricityData _self;
  final $Res Function(_VendElectricityData) _then;

/// Create a copy of VendElectricityData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionId = null,Object? customerName = null,Object? customerInfo = null,Object? receiver = null,Object? provider = null,Object? meterType = null,Object? paymentReference = null,Object? amount = null,Object? status = null,Object? createdAt = freezed,Object? units = freezed,Object? token = freezed,}) {
  return _then(_VendElectricityData(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,customerInfo: null == customerInfo ? _self.customerInfo : customerInfo // ignore: cast_nullable_to_non_nullable
as String,receiver: null == receiver ? _self.receiver : receiver // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,meterType: null == meterType ? _self.meterType : meterType // ignore: cast_nullable_to_non_nullable
as String,paymentReference: null == paymentReference ? _self.paymentReference : paymentReference // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,units: freezed == units ? _self.units : units // ignore: cast_nullable_to_non_nullable
as String?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
