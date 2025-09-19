// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vend_cable_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VendCableData {

 String get transactionId; String get customerName; String get customerInfo; String get receiver; String get provider; String get package; String get paymentReference; int get amount; int get serviceCharget; String get status; String? get createdAt;
/// Create a copy of VendCableData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VendCableDataCopyWith<VendCableData> get copyWith => _$VendCableDataCopyWithImpl<VendCableData>(this as VendCableData, _$identity);

  /// Serializes this VendCableData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VendCableData&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerInfo, customerInfo) || other.customerInfo == customerInfo)&&(identical(other.receiver, receiver) || other.receiver == receiver)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.package, package) || other.package == package)&&(identical(other.paymentReference, paymentReference) || other.paymentReference == paymentReference)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.serviceCharget, serviceCharget) || other.serviceCharget == serviceCharget)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,customerName,customerInfo,receiver,provider,package,paymentReference,amount,serviceCharget,status,createdAt);

@override
String toString() {
  return 'VendCableData(transactionId: $transactionId, customerName: $customerName, customerInfo: $customerInfo, receiver: $receiver, provider: $provider, package: $package, paymentReference: $paymentReference, amount: $amount, serviceCharget: $serviceCharget, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $VendCableDataCopyWith<$Res>  {
  factory $VendCableDataCopyWith(VendCableData value, $Res Function(VendCableData) _then) = _$VendCableDataCopyWithImpl;
@useResult
$Res call({
 String transactionId, String customerName, String customerInfo, String receiver, String provider, String package, String paymentReference, int amount, int serviceCharget, String status, String? createdAt
});




}
/// @nodoc
class _$VendCableDataCopyWithImpl<$Res>
    implements $VendCableDataCopyWith<$Res> {
  _$VendCableDataCopyWithImpl(this._self, this._then);

  final VendCableData _self;
  final $Res Function(VendCableData) _then;

/// Create a copy of VendCableData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionId = null,Object? customerName = null,Object? customerInfo = null,Object? receiver = null,Object? provider = null,Object? package = null,Object? paymentReference = null,Object? amount = null,Object? serviceCharget = null,Object? status = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,customerInfo: null == customerInfo ? _self.customerInfo : customerInfo // ignore: cast_nullable_to_non_nullable
as String,receiver: null == receiver ? _self.receiver : receiver // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,package: null == package ? _self.package : package // ignore: cast_nullable_to_non_nullable
as String,paymentReference: null == paymentReference ? _self.paymentReference : paymentReference // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,serviceCharget: null == serviceCharget ? _self.serviceCharget : serviceCharget // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [VendCableData].
extension VendCableDataPatterns on VendCableData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VendCableData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VendCableData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VendCableData value)  $default,){
final _that = this;
switch (_that) {
case _VendCableData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VendCableData value)?  $default,){
final _that = this;
switch (_that) {
case _VendCableData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String transactionId,  String customerName,  String customerInfo,  String receiver,  String provider,  String package,  String paymentReference,  int amount,  int serviceCharget,  String status,  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VendCableData() when $default != null:
return $default(_that.transactionId,_that.customerName,_that.customerInfo,_that.receiver,_that.provider,_that.package,_that.paymentReference,_that.amount,_that.serviceCharget,_that.status,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String transactionId,  String customerName,  String customerInfo,  String receiver,  String provider,  String package,  String paymentReference,  int amount,  int serviceCharget,  String status,  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _VendCableData():
return $default(_that.transactionId,_that.customerName,_that.customerInfo,_that.receiver,_that.provider,_that.package,_that.paymentReference,_that.amount,_that.serviceCharget,_that.status,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String transactionId,  String customerName,  String customerInfo,  String receiver,  String provider,  String package,  String paymentReference,  int amount,  int serviceCharget,  String status,  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _VendCableData() when $default != null:
return $default(_that.transactionId,_that.customerName,_that.customerInfo,_that.receiver,_that.provider,_that.package,_that.paymentReference,_that.amount,_that.serviceCharget,_that.status,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VendCableData implements VendCableData {
  const _VendCableData({required this.transactionId, required this.customerName, required this.customerInfo, required this.receiver, required this.provider, required this.package, required this.paymentReference, required this.amount, this.serviceCharget = 0, this.status = "pending", this.createdAt});
  factory _VendCableData.fromJson(Map<String, dynamic> json) => _$VendCableDataFromJson(json);

@override final  String transactionId;
@override final  String customerName;
@override final  String customerInfo;
@override final  String receiver;
@override final  String provider;
@override final  String package;
@override final  String paymentReference;
@override final  int amount;
@override@JsonKey() final  int serviceCharget;
@override@JsonKey() final  String status;
@override final  String? createdAt;

/// Create a copy of VendCableData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VendCableDataCopyWith<_VendCableData> get copyWith => __$VendCableDataCopyWithImpl<_VendCableData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VendCableDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VendCableData&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerInfo, customerInfo) || other.customerInfo == customerInfo)&&(identical(other.receiver, receiver) || other.receiver == receiver)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.package, package) || other.package == package)&&(identical(other.paymentReference, paymentReference) || other.paymentReference == paymentReference)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.serviceCharget, serviceCharget) || other.serviceCharget == serviceCharget)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,customerName,customerInfo,receiver,provider,package,paymentReference,amount,serviceCharget,status,createdAt);

@override
String toString() {
  return 'VendCableData(transactionId: $transactionId, customerName: $customerName, customerInfo: $customerInfo, receiver: $receiver, provider: $provider, package: $package, paymentReference: $paymentReference, amount: $amount, serviceCharget: $serviceCharget, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$VendCableDataCopyWith<$Res> implements $VendCableDataCopyWith<$Res> {
  factory _$VendCableDataCopyWith(_VendCableData value, $Res Function(_VendCableData) _then) = __$VendCableDataCopyWithImpl;
@override @useResult
$Res call({
 String transactionId, String customerName, String customerInfo, String receiver, String provider, String package, String paymentReference, int amount, int serviceCharget, String status, String? createdAt
});




}
/// @nodoc
class __$VendCableDataCopyWithImpl<$Res>
    implements _$VendCableDataCopyWith<$Res> {
  __$VendCableDataCopyWithImpl(this._self, this._then);

  final _VendCableData _self;
  final $Res Function(_VendCableData) _then;

/// Create a copy of VendCableData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionId = null,Object? customerName = null,Object? customerInfo = null,Object? receiver = null,Object? provider = null,Object? package = null,Object? paymentReference = null,Object? amount = null,Object? serviceCharget = null,Object? status = null,Object? createdAt = freezed,}) {
  return _then(_VendCableData(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,customerInfo: null == customerInfo ? _self.customerInfo : customerInfo // ignore: cast_nullable_to_non_nullable
as String,receiver: null == receiver ? _self.receiver : receiver // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,package: null == package ? _self.package : package // ignore: cast_nullable_to_non_nullable
as String,paymentReference: null == paymentReference ? _self.paymentReference : paymentReference // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,serviceCharget: null == serviceCharget ? _self.serviceCharget : serviceCharget // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
