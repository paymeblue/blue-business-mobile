// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vend_airtime_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VendAirtimeData {

 String get transactionId; String get receiver; String get provider; String get paymentReference; String get amount; String get status; String? get createdAt;
/// Create a copy of VendAirtimeData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VendAirtimeDataCopyWith<VendAirtimeData> get copyWith => _$VendAirtimeDataCopyWithImpl<VendAirtimeData>(this as VendAirtimeData, _$identity);

  /// Serializes this VendAirtimeData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VendAirtimeData&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.receiver, receiver) || other.receiver == receiver)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.paymentReference, paymentReference) || other.paymentReference == paymentReference)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,receiver,provider,paymentReference,amount,status,createdAt);

@override
String toString() {
  return 'VendAirtimeData(transactionId: $transactionId, receiver: $receiver, provider: $provider, paymentReference: $paymentReference, amount: $amount, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $VendAirtimeDataCopyWith<$Res>  {
  factory $VendAirtimeDataCopyWith(VendAirtimeData value, $Res Function(VendAirtimeData) _then) = _$VendAirtimeDataCopyWithImpl;
@useResult
$Res call({
 String transactionId, String receiver, String provider, String paymentReference, String amount, String status, String? createdAt
});




}
/// @nodoc
class _$VendAirtimeDataCopyWithImpl<$Res>
    implements $VendAirtimeDataCopyWith<$Res> {
  _$VendAirtimeDataCopyWithImpl(this._self, this._then);

  final VendAirtimeData _self;
  final $Res Function(VendAirtimeData) _then;

/// Create a copy of VendAirtimeData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionId = null,Object? receiver = null,Object? provider = null,Object? paymentReference = null,Object? amount = null,Object? status = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,receiver: null == receiver ? _self.receiver : receiver // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,paymentReference: null == paymentReference ? _self.paymentReference : paymentReference // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [VendAirtimeData].
extension VendAirtimeDataPatterns on VendAirtimeData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VendAirtimeData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VendAirtimeData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VendAirtimeData value)  $default,){
final _that = this;
switch (_that) {
case _VendAirtimeData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VendAirtimeData value)?  $default,){
final _that = this;
switch (_that) {
case _VendAirtimeData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String transactionId,  String receiver,  String provider,  String paymentReference,  String amount,  String status,  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VendAirtimeData() when $default != null:
return $default(_that.transactionId,_that.receiver,_that.provider,_that.paymentReference,_that.amount,_that.status,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String transactionId,  String receiver,  String provider,  String paymentReference,  String amount,  String status,  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _VendAirtimeData():
return $default(_that.transactionId,_that.receiver,_that.provider,_that.paymentReference,_that.amount,_that.status,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String transactionId,  String receiver,  String provider,  String paymentReference,  String amount,  String status,  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _VendAirtimeData() when $default != null:
return $default(_that.transactionId,_that.receiver,_that.provider,_that.paymentReference,_that.amount,_that.status,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VendAirtimeData implements VendAirtimeData {
  const _VendAirtimeData({required this.transactionId, required this.receiver, required this.provider, required this.paymentReference, required this.amount, this.status = "pending", this.createdAt});
  factory _VendAirtimeData.fromJson(Map<String, dynamic> json) => _$VendAirtimeDataFromJson(json);

@override final  String transactionId;
@override final  String receiver;
@override final  String provider;
@override final  String paymentReference;
@override final  String amount;
@override@JsonKey() final  String status;
@override final  String? createdAt;

/// Create a copy of VendAirtimeData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VendAirtimeDataCopyWith<_VendAirtimeData> get copyWith => __$VendAirtimeDataCopyWithImpl<_VendAirtimeData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VendAirtimeDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VendAirtimeData&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.receiver, receiver) || other.receiver == receiver)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.paymentReference, paymentReference) || other.paymentReference == paymentReference)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,receiver,provider,paymentReference,amount,status,createdAt);

@override
String toString() {
  return 'VendAirtimeData(transactionId: $transactionId, receiver: $receiver, provider: $provider, paymentReference: $paymentReference, amount: $amount, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$VendAirtimeDataCopyWith<$Res> implements $VendAirtimeDataCopyWith<$Res> {
  factory _$VendAirtimeDataCopyWith(_VendAirtimeData value, $Res Function(_VendAirtimeData) _then) = __$VendAirtimeDataCopyWithImpl;
@override @useResult
$Res call({
 String transactionId, String receiver, String provider, String paymentReference, String amount, String status, String? createdAt
});




}
/// @nodoc
class __$VendAirtimeDataCopyWithImpl<$Res>
    implements _$VendAirtimeDataCopyWith<$Res> {
  __$VendAirtimeDataCopyWithImpl(this._self, this._then);

  final _VendAirtimeData _self;
  final $Res Function(_VendAirtimeData) _then;

/// Create a copy of VendAirtimeData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionId = null,Object? receiver = null,Object? provider = null,Object? paymentReference = null,Object? amount = null,Object? status = null,Object? createdAt = freezed,}) {
  return _then(_VendAirtimeData(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,receiver: null == receiver ? _self.receiver : receiver // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,paymentReference: null == paymentReference ? _self.paymentReference : paymentReference // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
