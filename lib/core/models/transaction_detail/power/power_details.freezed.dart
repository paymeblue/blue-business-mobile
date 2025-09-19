// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'power_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PowerDetails {

 int? get id; String get amount; String get serviceCharge; String get transactionId; String get provider; String get createdAt; String get receiver; String get service; String get status; String? get token; String get balanceBefore; String get balanceAfter; String get units;
/// Create a copy of PowerDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PowerDetailsCopyWith<PowerDetails> get copyWith => _$PowerDetailsCopyWithImpl<PowerDetails>(this as PowerDetails, _$identity);

  /// Serializes this PowerDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PowerDetails&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.serviceCharge, serviceCharge) || other.serviceCharge == serviceCharge)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.receiver, receiver) || other.receiver == receiver)&&(identical(other.service, service) || other.service == service)&&(identical(other.status, status) || other.status == status)&&(identical(other.token, token) || other.token == token)&&(identical(other.balanceBefore, balanceBefore) || other.balanceBefore == balanceBefore)&&(identical(other.balanceAfter, balanceAfter) || other.balanceAfter == balanceAfter)&&(identical(other.units, units) || other.units == units));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amount,serviceCharge,transactionId,provider,createdAt,receiver,service,status,token,balanceBefore,balanceAfter,units);

@override
String toString() {
  return 'PowerDetails(id: $id, amount: $amount, serviceCharge: $serviceCharge, transactionId: $transactionId, provider: $provider, createdAt: $createdAt, receiver: $receiver, service: $service, status: $status, token: $token, balanceBefore: $balanceBefore, balanceAfter: $balanceAfter, units: $units)';
}


}

/// @nodoc
abstract mixin class $PowerDetailsCopyWith<$Res>  {
  factory $PowerDetailsCopyWith(PowerDetails value, $Res Function(PowerDetails) _then) = _$PowerDetailsCopyWithImpl;
@useResult
$Res call({
 int? id, String amount, String serviceCharge, String transactionId, String provider, String createdAt, String receiver, String service, String status, String? token, String balanceBefore, String balanceAfter, String units
});




}
/// @nodoc
class _$PowerDetailsCopyWithImpl<$Res>
    implements $PowerDetailsCopyWith<$Res> {
  _$PowerDetailsCopyWithImpl(this._self, this._then);

  final PowerDetails _self;
  final $Res Function(PowerDetails) _then;

/// Create a copy of PowerDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? amount = null,Object? serviceCharge = null,Object? transactionId = null,Object? provider = null,Object? createdAt = null,Object? receiver = null,Object? service = null,Object? status = null,Object? token = freezed,Object? balanceBefore = null,Object? balanceAfter = null,Object? units = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,serviceCharge: null == serviceCharge ? _self.serviceCharge : serviceCharge // ignore: cast_nullable_to_non_nullable
as String,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,receiver: null == receiver ? _self.receiver : receiver // ignore: cast_nullable_to_non_nullable
as String,service: null == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,balanceBefore: null == balanceBefore ? _self.balanceBefore : balanceBefore // ignore: cast_nullable_to_non_nullable
as String,balanceAfter: null == balanceAfter ? _self.balanceAfter : balanceAfter // ignore: cast_nullable_to_non_nullable
as String,units: null == units ? _self.units : units // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PowerDetails].
extension PowerDetailsPatterns on PowerDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PowerDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PowerDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PowerDetails value)  $default,){
final _that = this;
switch (_that) {
case _PowerDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PowerDetails value)?  $default,){
final _that = this;
switch (_that) {
case _PowerDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String amount,  String serviceCharge,  String transactionId,  String provider,  String createdAt,  String receiver,  String service,  String status,  String? token,  String balanceBefore,  String balanceAfter,  String units)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PowerDetails() when $default != null:
return $default(_that.id,_that.amount,_that.serviceCharge,_that.transactionId,_that.provider,_that.createdAt,_that.receiver,_that.service,_that.status,_that.token,_that.balanceBefore,_that.balanceAfter,_that.units);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String amount,  String serviceCharge,  String transactionId,  String provider,  String createdAt,  String receiver,  String service,  String status,  String? token,  String balanceBefore,  String balanceAfter,  String units)  $default,) {final _that = this;
switch (_that) {
case _PowerDetails():
return $default(_that.id,_that.amount,_that.serviceCharge,_that.transactionId,_that.provider,_that.createdAt,_that.receiver,_that.service,_that.status,_that.token,_that.balanceBefore,_that.balanceAfter,_that.units);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String amount,  String serviceCharge,  String transactionId,  String provider,  String createdAt,  String receiver,  String service,  String status,  String? token,  String balanceBefore,  String balanceAfter,  String units)?  $default,) {final _that = this;
switch (_that) {
case _PowerDetails() when $default != null:
return $default(_that.id,_that.amount,_that.serviceCharge,_that.transactionId,_that.provider,_that.createdAt,_that.receiver,_that.service,_that.status,_that.token,_that.balanceBefore,_that.balanceAfter,_that.units);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PowerDetails implements PowerDetails {
  const _PowerDetails({this.id, required this.amount, required this.serviceCharge, required this.transactionId, required this.provider, required this.createdAt, required this.receiver, this.service = "power", this.status = "successful", this.token, this.balanceBefore = "0.00", this.balanceAfter = "0.00", this.units = "0.0"});
  factory _PowerDetails.fromJson(Map<String, dynamic> json) => _$PowerDetailsFromJson(json);

@override final  int? id;
@override final  String amount;
@override final  String serviceCharge;
@override final  String transactionId;
@override final  String provider;
@override final  String createdAt;
@override final  String receiver;
@override@JsonKey() final  String service;
@override@JsonKey() final  String status;
@override final  String? token;
@override@JsonKey() final  String balanceBefore;
@override@JsonKey() final  String balanceAfter;
@override@JsonKey() final  String units;

/// Create a copy of PowerDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PowerDetailsCopyWith<_PowerDetails> get copyWith => __$PowerDetailsCopyWithImpl<_PowerDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PowerDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PowerDetails&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.serviceCharge, serviceCharge) || other.serviceCharge == serviceCharge)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.receiver, receiver) || other.receiver == receiver)&&(identical(other.service, service) || other.service == service)&&(identical(other.status, status) || other.status == status)&&(identical(other.token, token) || other.token == token)&&(identical(other.balanceBefore, balanceBefore) || other.balanceBefore == balanceBefore)&&(identical(other.balanceAfter, balanceAfter) || other.balanceAfter == balanceAfter)&&(identical(other.units, units) || other.units == units));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amount,serviceCharge,transactionId,provider,createdAt,receiver,service,status,token,balanceBefore,balanceAfter,units);

@override
String toString() {
  return 'PowerDetails(id: $id, amount: $amount, serviceCharge: $serviceCharge, transactionId: $transactionId, provider: $provider, createdAt: $createdAt, receiver: $receiver, service: $service, status: $status, token: $token, balanceBefore: $balanceBefore, balanceAfter: $balanceAfter, units: $units)';
}


}

/// @nodoc
abstract mixin class _$PowerDetailsCopyWith<$Res> implements $PowerDetailsCopyWith<$Res> {
  factory _$PowerDetailsCopyWith(_PowerDetails value, $Res Function(_PowerDetails) _then) = __$PowerDetailsCopyWithImpl;
@override @useResult
$Res call({
 int? id, String amount, String serviceCharge, String transactionId, String provider, String createdAt, String receiver, String service, String status, String? token, String balanceBefore, String balanceAfter, String units
});




}
/// @nodoc
class __$PowerDetailsCopyWithImpl<$Res>
    implements _$PowerDetailsCopyWith<$Res> {
  __$PowerDetailsCopyWithImpl(this._self, this._then);

  final _PowerDetails _self;
  final $Res Function(_PowerDetails) _then;

/// Create a copy of PowerDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? amount = null,Object? serviceCharge = null,Object? transactionId = null,Object? provider = null,Object? createdAt = null,Object? receiver = null,Object? service = null,Object? status = null,Object? token = freezed,Object? balanceBefore = null,Object? balanceAfter = null,Object? units = null,}) {
  return _then(_PowerDetails(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,serviceCharge: null == serviceCharge ? _self.serviceCharge : serviceCharge // ignore: cast_nullable_to_non_nullable
as String,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,receiver: null == receiver ? _self.receiver : receiver // ignore: cast_nullable_to_non_nullable
as String,service: null == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,balanceBefore: null == balanceBefore ? _self.balanceBefore : balanceBefore // ignore: cast_nullable_to_non_nullable
as String,balanceAfter: null == balanceAfter ? _self.balanceAfter : balanceAfter // ignore: cast_nullable_to_non_nullable
as String,units: null == units ? _self.units : units // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
