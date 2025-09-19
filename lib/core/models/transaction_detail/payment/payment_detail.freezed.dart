// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentDetail {

 String? get id; String get amount; String get receiver; String get details; String get paymentMode; String get createdAt; String get transactionId; String get service; String get status; String get narration; String get sender; String get balanceBefore; String get balanceAfter;
/// Create a copy of PaymentDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentDetailCopyWith<PaymentDetail> get copyWith => _$PaymentDetailCopyWithImpl<PaymentDetail>(this as PaymentDetail, _$identity);

  /// Serializes this PaymentDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.receiver, receiver) || other.receiver == receiver)&&(identical(other.details, details) || other.details == details)&&(identical(other.paymentMode, paymentMode) || other.paymentMode == paymentMode)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.service, service) || other.service == service)&&(identical(other.status, status) || other.status == status)&&(identical(other.narration, narration) || other.narration == narration)&&(identical(other.sender, sender) || other.sender == sender)&&(identical(other.balanceBefore, balanceBefore) || other.balanceBefore == balanceBefore)&&(identical(other.balanceAfter, balanceAfter) || other.balanceAfter == balanceAfter));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amount,receiver,details,paymentMode,createdAt,transactionId,service,status,narration,sender,balanceBefore,balanceAfter);

@override
String toString() {
  return 'PaymentDetail(id: $id, amount: $amount, receiver: $receiver, details: $details, paymentMode: $paymentMode, createdAt: $createdAt, transactionId: $transactionId, service: $service, status: $status, narration: $narration, sender: $sender, balanceBefore: $balanceBefore, balanceAfter: $balanceAfter)';
}


}

/// @nodoc
abstract mixin class $PaymentDetailCopyWith<$Res>  {
  factory $PaymentDetailCopyWith(PaymentDetail value, $Res Function(PaymentDetail) _then) = _$PaymentDetailCopyWithImpl;
@useResult
$Res call({
 String? id, String amount, String receiver, String details, String paymentMode, String createdAt, String transactionId, String service, String status, String narration, String sender, String balanceBefore, String balanceAfter
});




}
/// @nodoc
class _$PaymentDetailCopyWithImpl<$Res>
    implements $PaymentDetailCopyWith<$Res> {
  _$PaymentDetailCopyWithImpl(this._self, this._then);

  final PaymentDetail _self;
  final $Res Function(PaymentDetail) _then;

/// Create a copy of PaymentDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? amount = null,Object? receiver = null,Object? details = null,Object? paymentMode = null,Object? createdAt = null,Object? transactionId = null,Object? service = null,Object? status = null,Object? narration = null,Object? sender = null,Object? balanceBefore = null,Object? balanceAfter = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,receiver: null == receiver ? _self.receiver : receiver // ignore: cast_nullable_to_non_nullable
as String,details: null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String,paymentMode: null == paymentMode ? _self.paymentMode : paymentMode // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,service: null == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,narration: null == narration ? _self.narration : narration // ignore: cast_nullable_to_non_nullable
as String,sender: null == sender ? _self.sender : sender // ignore: cast_nullable_to_non_nullable
as String,balanceBefore: null == balanceBefore ? _self.balanceBefore : balanceBefore // ignore: cast_nullable_to_non_nullable
as String,balanceAfter: null == balanceAfter ? _self.balanceAfter : balanceAfter // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentDetail].
extension PaymentDetailPatterns on PaymentDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentDetail value)  $default,){
final _that = this;
switch (_that) {
case _PaymentDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentDetail value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String amount,  String receiver,  String details,  String paymentMode,  String createdAt,  String transactionId,  String service,  String status,  String narration,  String sender,  String balanceBefore,  String balanceAfter)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentDetail() when $default != null:
return $default(_that.id,_that.amount,_that.receiver,_that.details,_that.paymentMode,_that.createdAt,_that.transactionId,_that.service,_that.status,_that.narration,_that.sender,_that.balanceBefore,_that.balanceAfter);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String amount,  String receiver,  String details,  String paymentMode,  String createdAt,  String transactionId,  String service,  String status,  String narration,  String sender,  String balanceBefore,  String balanceAfter)  $default,) {final _that = this;
switch (_that) {
case _PaymentDetail():
return $default(_that.id,_that.amount,_that.receiver,_that.details,_that.paymentMode,_that.createdAt,_that.transactionId,_that.service,_that.status,_that.narration,_that.sender,_that.balanceBefore,_that.balanceAfter);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String amount,  String receiver,  String details,  String paymentMode,  String createdAt,  String transactionId,  String service,  String status,  String narration,  String sender,  String balanceBefore,  String balanceAfter)?  $default,) {final _that = this;
switch (_that) {
case _PaymentDetail() when $default != null:
return $default(_that.id,_that.amount,_that.receiver,_that.details,_that.paymentMode,_that.createdAt,_that.transactionId,_that.service,_that.status,_that.narration,_that.sender,_that.balanceBefore,_that.balanceAfter);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentDetail implements PaymentDetail {
  const _PaymentDetail({this.id, required this.amount, required this.receiver, required this.details, required this.paymentMode, required this.createdAt, required this.transactionId, this.service = "payment", this.status = "pending", this.narration = "N/A", this.sender = "", this.balanceBefore = "0.00", this.balanceAfter = "0.00"});
  factory _PaymentDetail.fromJson(Map<String, dynamic> json) => _$PaymentDetailFromJson(json);

@override final  String? id;
@override final  String amount;
@override final  String receiver;
@override final  String details;
@override final  String paymentMode;
@override final  String createdAt;
@override final  String transactionId;
@override@JsonKey() final  String service;
@override@JsonKey() final  String status;
@override@JsonKey() final  String narration;
@override@JsonKey() final  String sender;
@override@JsonKey() final  String balanceBefore;
@override@JsonKey() final  String balanceAfter;

/// Create a copy of PaymentDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentDetailCopyWith<_PaymentDetail> get copyWith => __$PaymentDetailCopyWithImpl<_PaymentDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.receiver, receiver) || other.receiver == receiver)&&(identical(other.details, details) || other.details == details)&&(identical(other.paymentMode, paymentMode) || other.paymentMode == paymentMode)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.service, service) || other.service == service)&&(identical(other.status, status) || other.status == status)&&(identical(other.narration, narration) || other.narration == narration)&&(identical(other.sender, sender) || other.sender == sender)&&(identical(other.balanceBefore, balanceBefore) || other.balanceBefore == balanceBefore)&&(identical(other.balanceAfter, balanceAfter) || other.balanceAfter == balanceAfter));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amount,receiver,details,paymentMode,createdAt,transactionId,service,status,narration,sender,balanceBefore,balanceAfter);

@override
String toString() {
  return 'PaymentDetail(id: $id, amount: $amount, receiver: $receiver, details: $details, paymentMode: $paymentMode, createdAt: $createdAt, transactionId: $transactionId, service: $service, status: $status, narration: $narration, sender: $sender, balanceBefore: $balanceBefore, balanceAfter: $balanceAfter)';
}


}

/// @nodoc
abstract mixin class _$PaymentDetailCopyWith<$Res> implements $PaymentDetailCopyWith<$Res> {
  factory _$PaymentDetailCopyWith(_PaymentDetail value, $Res Function(_PaymentDetail) _then) = __$PaymentDetailCopyWithImpl;
@override @useResult
$Res call({
 String? id, String amount, String receiver, String details, String paymentMode, String createdAt, String transactionId, String service, String status, String narration, String sender, String balanceBefore, String balanceAfter
});




}
/// @nodoc
class __$PaymentDetailCopyWithImpl<$Res>
    implements _$PaymentDetailCopyWith<$Res> {
  __$PaymentDetailCopyWithImpl(this._self, this._then);

  final _PaymentDetail _self;
  final $Res Function(_PaymentDetail) _then;

/// Create a copy of PaymentDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? amount = null,Object? receiver = null,Object? details = null,Object? paymentMode = null,Object? createdAt = null,Object? transactionId = null,Object? service = null,Object? status = null,Object? narration = null,Object? sender = null,Object? balanceBefore = null,Object? balanceAfter = null,}) {
  return _then(_PaymentDetail(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,receiver: null == receiver ? _self.receiver : receiver // ignore: cast_nullable_to_non_nullable
as String,details: null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String,paymentMode: null == paymentMode ? _self.paymentMode : paymentMode // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,service: null == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,narration: null == narration ? _self.narration : narration // ignore: cast_nullable_to_non_nullable
as String,sender: null == sender ? _self.sender : sender // ignore: cast_nullable_to_non_nullable
as String,balanceBefore: null == balanceBefore ? _self.balanceBefore : balanceBefore // ignore: cast_nullable_to_non_nullable
as String,balanceAfter: null == balanceAfter ? _self.balanceAfter : balanceAfter // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
