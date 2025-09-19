// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cable_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CableDetails {

 int? get id; String get amount; String get serviceCharge; String get receiver; String get transactionId; String get provider; String get package; String get paymentMode; String get createdAt; String get service; String get status; String get balanceBefore; String get balanceAfter;
/// Create a copy of CableDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CableDetailsCopyWith<CableDetails> get copyWith => _$CableDetailsCopyWithImpl<CableDetails>(this as CableDetails, _$identity);

  /// Serializes this CableDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CableDetails&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.serviceCharge, serviceCharge) || other.serviceCharge == serviceCharge)&&(identical(other.receiver, receiver) || other.receiver == receiver)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.package, package) || other.package == package)&&(identical(other.paymentMode, paymentMode) || other.paymentMode == paymentMode)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.service, service) || other.service == service)&&(identical(other.status, status) || other.status == status)&&(identical(other.balanceBefore, balanceBefore) || other.balanceBefore == balanceBefore)&&(identical(other.balanceAfter, balanceAfter) || other.balanceAfter == balanceAfter));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amount,serviceCharge,receiver,transactionId,provider,package,paymentMode,createdAt,service,status,balanceBefore,balanceAfter);

@override
String toString() {
  return 'CableDetails(id: $id, amount: $amount, serviceCharge: $serviceCharge, receiver: $receiver, transactionId: $transactionId, provider: $provider, package: $package, paymentMode: $paymentMode, createdAt: $createdAt, service: $service, status: $status, balanceBefore: $balanceBefore, balanceAfter: $balanceAfter)';
}


}

/// @nodoc
abstract mixin class $CableDetailsCopyWith<$Res>  {
  factory $CableDetailsCopyWith(CableDetails value, $Res Function(CableDetails) _then) = _$CableDetailsCopyWithImpl;
@useResult
$Res call({
 int? id, String amount, String serviceCharge, String receiver, String transactionId, String provider, String package, String paymentMode, String createdAt, String service, String status, String balanceBefore, String balanceAfter
});




}
/// @nodoc
class _$CableDetailsCopyWithImpl<$Res>
    implements $CableDetailsCopyWith<$Res> {
  _$CableDetailsCopyWithImpl(this._self, this._then);

  final CableDetails _self;
  final $Res Function(CableDetails) _then;

/// Create a copy of CableDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? amount = null,Object? serviceCharge = null,Object? receiver = null,Object? transactionId = null,Object? provider = null,Object? package = null,Object? paymentMode = null,Object? createdAt = null,Object? service = null,Object? status = null,Object? balanceBefore = null,Object? balanceAfter = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,serviceCharge: null == serviceCharge ? _self.serviceCharge : serviceCharge // ignore: cast_nullable_to_non_nullable
as String,receiver: null == receiver ? _self.receiver : receiver // ignore: cast_nullable_to_non_nullable
as String,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,package: null == package ? _self.package : package // ignore: cast_nullable_to_non_nullable
as String,paymentMode: null == paymentMode ? _self.paymentMode : paymentMode // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,service: null == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,balanceBefore: null == balanceBefore ? _self.balanceBefore : balanceBefore // ignore: cast_nullable_to_non_nullable
as String,balanceAfter: null == balanceAfter ? _self.balanceAfter : balanceAfter // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CableDetails].
extension CableDetailsPatterns on CableDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CableDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CableDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CableDetails value)  $default,){
final _that = this;
switch (_that) {
case _CableDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CableDetails value)?  $default,){
final _that = this;
switch (_that) {
case _CableDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String amount,  String serviceCharge,  String receiver,  String transactionId,  String provider,  String package,  String paymentMode,  String createdAt,  String service,  String status,  String balanceBefore,  String balanceAfter)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CableDetails() when $default != null:
return $default(_that.id,_that.amount,_that.serviceCharge,_that.receiver,_that.transactionId,_that.provider,_that.package,_that.paymentMode,_that.createdAt,_that.service,_that.status,_that.balanceBefore,_that.balanceAfter);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String amount,  String serviceCharge,  String receiver,  String transactionId,  String provider,  String package,  String paymentMode,  String createdAt,  String service,  String status,  String balanceBefore,  String balanceAfter)  $default,) {final _that = this;
switch (_that) {
case _CableDetails():
return $default(_that.id,_that.amount,_that.serviceCharge,_that.receiver,_that.transactionId,_that.provider,_that.package,_that.paymentMode,_that.createdAt,_that.service,_that.status,_that.balanceBefore,_that.balanceAfter);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String amount,  String serviceCharge,  String receiver,  String transactionId,  String provider,  String package,  String paymentMode,  String createdAt,  String service,  String status,  String balanceBefore,  String balanceAfter)?  $default,) {final _that = this;
switch (_that) {
case _CableDetails() when $default != null:
return $default(_that.id,_that.amount,_that.serviceCharge,_that.receiver,_that.transactionId,_that.provider,_that.package,_that.paymentMode,_that.createdAt,_that.service,_that.status,_that.balanceBefore,_that.balanceAfter);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CableDetails implements CableDetails {
  const _CableDetails({this.id, required this.amount, required this.serviceCharge, required this.receiver, required this.transactionId, required this.provider, required this.package, required this.paymentMode, required this.createdAt, this.service = "data", this.status = "successful", this.balanceBefore = "0.00", this.balanceAfter = "0.00"});
  factory _CableDetails.fromJson(Map<String, dynamic> json) => _$CableDetailsFromJson(json);

@override final  int? id;
@override final  String amount;
@override final  String serviceCharge;
@override final  String receiver;
@override final  String transactionId;
@override final  String provider;
@override final  String package;
@override final  String paymentMode;
@override final  String createdAt;
@override@JsonKey() final  String service;
@override@JsonKey() final  String status;
@override@JsonKey() final  String balanceBefore;
@override@JsonKey() final  String balanceAfter;

/// Create a copy of CableDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CableDetailsCopyWith<_CableDetails> get copyWith => __$CableDetailsCopyWithImpl<_CableDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CableDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CableDetails&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.serviceCharge, serviceCharge) || other.serviceCharge == serviceCharge)&&(identical(other.receiver, receiver) || other.receiver == receiver)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.package, package) || other.package == package)&&(identical(other.paymentMode, paymentMode) || other.paymentMode == paymentMode)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.service, service) || other.service == service)&&(identical(other.status, status) || other.status == status)&&(identical(other.balanceBefore, balanceBefore) || other.balanceBefore == balanceBefore)&&(identical(other.balanceAfter, balanceAfter) || other.balanceAfter == balanceAfter));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amount,serviceCharge,receiver,transactionId,provider,package,paymentMode,createdAt,service,status,balanceBefore,balanceAfter);

@override
String toString() {
  return 'CableDetails(id: $id, amount: $amount, serviceCharge: $serviceCharge, receiver: $receiver, transactionId: $transactionId, provider: $provider, package: $package, paymentMode: $paymentMode, createdAt: $createdAt, service: $service, status: $status, balanceBefore: $balanceBefore, balanceAfter: $balanceAfter)';
}


}

/// @nodoc
abstract mixin class _$CableDetailsCopyWith<$Res> implements $CableDetailsCopyWith<$Res> {
  factory _$CableDetailsCopyWith(_CableDetails value, $Res Function(_CableDetails) _then) = __$CableDetailsCopyWithImpl;
@override @useResult
$Res call({
 int? id, String amount, String serviceCharge, String receiver, String transactionId, String provider, String package, String paymentMode, String createdAt, String service, String status, String balanceBefore, String balanceAfter
});




}
/// @nodoc
class __$CableDetailsCopyWithImpl<$Res>
    implements _$CableDetailsCopyWith<$Res> {
  __$CableDetailsCopyWithImpl(this._self, this._then);

  final _CableDetails _self;
  final $Res Function(_CableDetails) _then;

/// Create a copy of CableDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? amount = null,Object? serviceCharge = null,Object? receiver = null,Object? transactionId = null,Object? provider = null,Object? package = null,Object? paymentMode = null,Object? createdAt = null,Object? service = null,Object? status = null,Object? balanceBefore = null,Object? balanceAfter = null,}) {
  return _then(_CableDetails(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,serviceCharge: null == serviceCharge ? _self.serviceCharge : serviceCharge // ignore: cast_nullable_to_non_nullable
as String,receiver: null == receiver ? _self.receiver : receiver // ignore: cast_nullable_to_non_nullable
as String,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,package: null == package ? _self.package : package // ignore: cast_nullable_to_non_nullable
as String,paymentMode: null == paymentMode ? _self.paymentMode : paymentMode // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,service: null == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,balanceBefore: null == balanceBefore ? _self.balanceBefore : balanceBefore // ignore: cast_nullable_to_non_nullable
as String,balanceAfter: null == balanceAfter ? _self.balanceAfter : balanceAfter // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
