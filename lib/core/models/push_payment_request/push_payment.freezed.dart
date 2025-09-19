// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'push_payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PushPayment {

 String get businessName; String get lga; String get amount; String get transactionId; String get dueDate; String get createdAt;
/// Create a copy of PushPayment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PushPaymentCopyWith<PushPayment> get copyWith => _$PushPaymentCopyWithImpl<PushPayment>(this as PushPayment, _$identity);

  /// Serializes this PushPayment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PushPayment&&(identical(other.businessName, businessName) || other.businessName == businessName)&&(identical(other.lga, lga) || other.lga == lga)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,businessName,lga,amount,transactionId,dueDate,createdAt);

@override
String toString() {
  return 'PushPayment(businessName: $businessName, lga: $lga, amount: $amount, transactionId: $transactionId, dueDate: $dueDate, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $PushPaymentCopyWith<$Res>  {
  factory $PushPaymentCopyWith(PushPayment value, $Res Function(PushPayment) _then) = _$PushPaymentCopyWithImpl;
@useResult
$Res call({
 String businessName, String lga, String amount, String transactionId, String dueDate, String createdAt
});




}
/// @nodoc
class _$PushPaymentCopyWithImpl<$Res>
    implements $PushPaymentCopyWith<$Res> {
  _$PushPaymentCopyWithImpl(this._self, this._then);

  final PushPayment _self;
  final $Res Function(PushPayment) _then;

/// Create a copy of PushPayment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? businessName = null,Object? lga = null,Object? amount = null,Object? transactionId = null,Object? dueDate = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
businessName: null == businessName ? _self.businessName : businessName // ignore: cast_nullable_to_non_nullable
as String,lga: null == lga ? _self.lga : lga // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PushPayment].
extension PushPaymentPatterns on PushPayment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PushPayment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PushPayment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PushPayment value)  $default,){
final _that = this;
switch (_that) {
case _PushPayment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PushPayment value)?  $default,){
final _that = this;
switch (_that) {
case _PushPayment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String businessName,  String lga,  String amount,  String transactionId,  String dueDate,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PushPayment() when $default != null:
return $default(_that.businessName,_that.lga,_that.amount,_that.transactionId,_that.dueDate,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String businessName,  String lga,  String amount,  String transactionId,  String dueDate,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _PushPayment():
return $default(_that.businessName,_that.lga,_that.amount,_that.transactionId,_that.dueDate,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String businessName,  String lga,  String amount,  String transactionId,  String dueDate,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _PushPayment() when $default != null:
return $default(_that.businessName,_that.lga,_that.amount,_that.transactionId,_that.dueDate,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PushPayment implements PushPayment {
  const _PushPayment({required this.businessName, required this.lga, required this.amount, required this.transactionId, required this.dueDate, required this.createdAt});
  factory _PushPayment.fromJson(Map<String, dynamic> json) => _$PushPaymentFromJson(json);

@override final  String businessName;
@override final  String lga;
@override final  String amount;
@override final  String transactionId;
@override final  String dueDate;
@override final  String createdAt;

/// Create a copy of PushPayment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PushPaymentCopyWith<_PushPayment> get copyWith => __$PushPaymentCopyWithImpl<_PushPayment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PushPaymentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PushPayment&&(identical(other.businessName, businessName) || other.businessName == businessName)&&(identical(other.lga, lga) || other.lga == lga)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,businessName,lga,amount,transactionId,dueDate,createdAt);

@override
String toString() {
  return 'PushPayment(businessName: $businessName, lga: $lga, amount: $amount, transactionId: $transactionId, dueDate: $dueDate, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$PushPaymentCopyWith<$Res> implements $PushPaymentCopyWith<$Res> {
  factory _$PushPaymentCopyWith(_PushPayment value, $Res Function(_PushPayment) _then) = __$PushPaymentCopyWithImpl;
@override @useResult
$Res call({
 String businessName, String lga, String amount, String transactionId, String dueDate, String createdAt
});




}
/// @nodoc
class __$PushPaymentCopyWithImpl<$Res>
    implements _$PushPaymentCopyWith<$Res> {
  __$PushPaymentCopyWithImpl(this._self, this._then);

  final _PushPayment _self;
  final $Res Function(_PushPayment) _then;

/// Create a copy of PushPayment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? businessName = null,Object? lga = null,Object? amount = null,Object? transactionId = null,Object? dueDate = null,Object? createdAt = null,}) {
  return _then(_PushPayment(
businessName: null == businessName ? _self.businessName : businessName // ignore: cast_nullable_to_non_nullable
as String,lga: null == lga ? _self.lga : lga // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
