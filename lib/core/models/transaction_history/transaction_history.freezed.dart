// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionHistory {

 String get transactionId; String? get otherPartyName; String get transactionAmount; String get paymentMode; String get transactionType; String get createdAt; String get status; String get initials;
/// Create a copy of TransactionHistory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionHistoryCopyWith<TransactionHistory> get copyWith => _$TransactionHistoryCopyWithImpl<TransactionHistory>(this as TransactionHistory, _$identity);

  /// Serializes this TransactionHistory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionHistory&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.otherPartyName, otherPartyName) || other.otherPartyName == otherPartyName)&&(identical(other.transactionAmount, transactionAmount) || other.transactionAmount == transactionAmount)&&(identical(other.paymentMode, paymentMode) || other.paymentMode == paymentMode)&&(identical(other.transactionType, transactionType) || other.transactionType == transactionType)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.initials, initials) || other.initials == initials));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,otherPartyName,transactionAmount,paymentMode,transactionType,createdAt,status,initials);

@override
String toString() {
  return 'TransactionHistory(transactionId: $transactionId, otherPartyName: $otherPartyName, transactionAmount: $transactionAmount, paymentMode: $paymentMode, transactionType: $transactionType, createdAt: $createdAt, status: $status, initials: $initials)';
}


}

/// @nodoc
abstract mixin class $TransactionHistoryCopyWith<$Res>  {
  factory $TransactionHistoryCopyWith(TransactionHistory value, $Res Function(TransactionHistory) _then) = _$TransactionHistoryCopyWithImpl;
@useResult
$Res call({
 String transactionId, String? otherPartyName, String transactionAmount, String paymentMode, String transactionType, String createdAt, String status, String initials
});




}
/// @nodoc
class _$TransactionHistoryCopyWithImpl<$Res>
    implements $TransactionHistoryCopyWith<$Res> {
  _$TransactionHistoryCopyWithImpl(this._self, this._then);

  final TransactionHistory _self;
  final $Res Function(TransactionHistory) _then;

/// Create a copy of TransactionHistory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionId = null,Object? otherPartyName = freezed,Object? transactionAmount = null,Object? paymentMode = null,Object? transactionType = null,Object? createdAt = null,Object? status = null,Object? initials = null,}) {
  return _then(_self.copyWith(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,otherPartyName: freezed == otherPartyName ? _self.otherPartyName : otherPartyName // ignore: cast_nullable_to_non_nullable
as String?,transactionAmount: null == transactionAmount ? _self.transactionAmount : transactionAmount // ignore: cast_nullable_to_non_nullable
as String,paymentMode: null == paymentMode ? _self.paymentMode : paymentMode // ignore: cast_nullable_to_non_nullable
as String,transactionType: null == transactionType ? _self.transactionType : transactionType // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,initials: null == initials ? _self.initials : initials // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionHistory].
extension TransactionHistoryPatterns on TransactionHistory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionHistory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionHistory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionHistory value)  $default,){
final _that = this;
switch (_that) {
case _TransactionHistory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionHistory value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionHistory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String transactionId,  String? otherPartyName,  String transactionAmount,  String paymentMode,  String transactionType,  String createdAt,  String status,  String initials)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionHistory() when $default != null:
return $default(_that.transactionId,_that.otherPartyName,_that.transactionAmount,_that.paymentMode,_that.transactionType,_that.createdAt,_that.status,_that.initials);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String transactionId,  String? otherPartyName,  String transactionAmount,  String paymentMode,  String transactionType,  String createdAt,  String status,  String initials)  $default,) {final _that = this;
switch (_that) {
case _TransactionHistory():
return $default(_that.transactionId,_that.otherPartyName,_that.transactionAmount,_that.paymentMode,_that.transactionType,_that.createdAt,_that.status,_that.initials);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String transactionId,  String? otherPartyName,  String transactionAmount,  String paymentMode,  String transactionType,  String createdAt,  String status,  String initials)?  $default,) {final _that = this;
switch (_that) {
case _TransactionHistory() when $default != null:
return $default(_that.transactionId,_that.otherPartyName,_that.transactionAmount,_that.paymentMode,_that.transactionType,_that.createdAt,_that.status,_that.initials);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransactionHistory implements TransactionHistory {
  const _TransactionHistory({required this.transactionId, required this.otherPartyName, required this.transactionAmount, required this.paymentMode, this.transactionType = "debit", required this.createdAt, this.status = "pending", this.initials = "N/A"});
  factory _TransactionHistory.fromJson(Map<String, dynamic> json) => _$TransactionHistoryFromJson(json);

@override final  String transactionId;
@override final  String? otherPartyName;
@override final  String transactionAmount;
@override final  String paymentMode;
@override@JsonKey() final  String transactionType;
@override final  String createdAt;
@override@JsonKey() final  String status;
@override@JsonKey() final  String initials;

/// Create a copy of TransactionHistory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionHistoryCopyWith<_TransactionHistory> get copyWith => __$TransactionHistoryCopyWithImpl<_TransactionHistory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionHistoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionHistory&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.otherPartyName, otherPartyName) || other.otherPartyName == otherPartyName)&&(identical(other.transactionAmount, transactionAmount) || other.transactionAmount == transactionAmount)&&(identical(other.paymentMode, paymentMode) || other.paymentMode == paymentMode)&&(identical(other.transactionType, transactionType) || other.transactionType == transactionType)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.initials, initials) || other.initials == initials));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,otherPartyName,transactionAmount,paymentMode,transactionType,createdAt,status,initials);

@override
String toString() {
  return 'TransactionHistory(transactionId: $transactionId, otherPartyName: $otherPartyName, transactionAmount: $transactionAmount, paymentMode: $paymentMode, transactionType: $transactionType, createdAt: $createdAt, status: $status, initials: $initials)';
}


}

/// @nodoc
abstract mixin class _$TransactionHistoryCopyWith<$Res> implements $TransactionHistoryCopyWith<$Res> {
  factory _$TransactionHistoryCopyWith(_TransactionHistory value, $Res Function(_TransactionHistory) _then) = __$TransactionHistoryCopyWithImpl;
@override @useResult
$Res call({
 String transactionId, String? otherPartyName, String transactionAmount, String paymentMode, String transactionType, String createdAt, String status, String initials
});




}
/// @nodoc
class __$TransactionHistoryCopyWithImpl<$Res>
    implements _$TransactionHistoryCopyWith<$Res> {
  __$TransactionHistoryCopyWithImpl(this._self, this._then);

  final _TransactionHistory _self;
  final $Res Function(_TransactionHistory) _then;

/// Create a copy of TransactionHistory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionId = null,Object? otherPartyName = freezed,Object? transactionAmount = null,Object? paymentMode = null,Object? transactionType = null,Object? createdAt = null,Object? status = null,Object? initials = null,}) {
  return _then(_TransactionHistory(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,otherPartyName: freezed == otherPartyName ? _self.otherPartyName : otherPartyName // ignore: cast_nullable_to_non_nullable
as String?,transactionAmount: null == transactionAmount ? _self.transactionAmount : transactionAmount // ignore: cast_nullable_to_non_nullable
as String,paymentMode: null == paymentMode ? _self.paymentMode : paymentMode // ignore: cast_nullable_to_non_nullable
as String,transactionType: null == transactionType ? _self.transactionType : transactionType // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,initials: null == initials ? _self.initials : initials // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
