// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pay_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PayData {

 String get transactionId; String get amount; String get receiverName; String get receiverWallet; String? get reference; String get status; String get createdAt;
/// Create a copy of PayData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PayDataCopyWith<PayData> get copyWith => _$PayDataCopyWithImpl<PayData>(this as PayData, _$identity);

  /// Serializes this PayData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PayData&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.receiverName, receiverName) || other.receiverName == receiverName)&&(identical(other.receiverWallet, receiverWallet) || other.receiverWallet == receiverWallet)&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,amount,receiverName,receiverWallet,reference,status,createdAt);

@override
String toString() {
  return 'PayData(transactionId: $transactionId, amount: $amount, receiverName: $receiverName, receiverWallet: $receiverWallet, reference: $reference, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $PayDataCopyWith<$Res>  {
  factory $PayDataCopyWith(PayData value, $Res Function(PayData) _then) = _$PayDataCopyWithImpl;
@useResult
$Res call({
 String transactionId, String amount, String receiverName, String receiverWallet, String? reference, String status, String createdAt
});




}
/// @nodoc
class _$PayDataCopyWithImpl<$Res>
    implements $PayDataCopyWith<$Res> {
  _$PayDataCopyWithImpl(this._self, this._then);

  final PayData _self;
  final $Res Function(PayData) _then;

/// Create a copy of PayData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionId = null,Object? amount = null,Object? receiverName = null,Object? receiverWallet = null,Object? reference = freezed,Object? status = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,receiverName: null == receiverName ? _self.receiverName : receiverName // ignore: cast_nullable_to_non_nullable
as String,receiverWallet: null == receiverWallet ? _self.receiverWallet : receiverWallet // ignore: cast_nullable_to_non_nullable
as String,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PayData].
extension PayDataPatterns on PayData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PayData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PayData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PayData value)  $default,){
final _that = this;
switch (_that) {
case _PayData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PayData value)?  $default,){
final _that = this;
switch (_that) {
case _PayData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String transactionId,  String amount,  String receiverName,  String receiverWallet,  String? reference,  String status,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PayData() when $default != null:
return $default(_that.transactionId,_that.amount,_that.receiverName,_that.receiverWallet,_that.reference,_that.status,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String transactionId,  String amount,  String receiverName,  String receiverWallet,  String? reference,  String status,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _PayData():
return $default(_that.transactionId,_that.amount,_that.receiverName,_that.receiverWallet,_that.reference,_that.status,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String transactionId,  String amount,  String receiverName,  String receiverWallet,  String? reference,  String status,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _PayData() when $default != null:
return $default(_that.transactionId,_that.amount,_that.receiverName,_that.receiverWallet,_that.reference,_that.status,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PayData implements PayData {
  const _PayData({required this.transactionId, required this.amount, required this.receiverName, required this.receiverWallet, this.reference, required this.status, required this.createdAt});
  factory _PayData.fromJson(Map<String, dynamic> json) => _$PayDataFromJson(json);

@override final  String transactionId;
@override final  String amount;
@override final  String receiverName;
@override final  String receiverWallet;
@override final  String? reference;
@override final  String status;
@override final  String createdAt;

/// Create a copy of PayData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PayDataCopyWith<_PayData> get copyWith => __$PayDataCopyWithImpl<_PayData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PayDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PayData&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.receiverName, receiverName) || other.receiverName == receiverName)&&(identical(other.receiverWallet, receiverWallet) || other.receiverWallet == receiverWallet)&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,amount,receiverName,receiverWallet,reference,status,createdAt);

@override
String toString() {
  return 'PayData(transactionId: $transactionId, amount: $amount, receiverName: $receiverName, receiverWallet: $receiverWallet, reference: $reference, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$PayDataCopyWith<$Res> implements $PayDataCopyWith<$Res> {
  factory _$PayDataCopyWith(_PayData value, $Res Function(_PayData) _then) = __$PayDataCopyWithImpl;
@override @useResult
$Res call({
 String transactionId, String amount, String receiverName, String receiverWallet, String? reference, String status, String createdAt
});




}
/// @nodoc
class __$PayDataCopyWithImpl<$Res>
    implements _$PayDataCopyWith<$Res> {
  __$PayDataCopyWithImpl(this._self, this._then);

  final _PayData _self;
  final $Res Function(_PayData) _then;

/// Create a copy of PayData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionId = null,Object? amount = null,Object? receiverName = null,Object? receiverWallet = null,Object? reference = freezed,Object? status = null,Object? createdAt = null,}) {
  return _then(_PayData(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,receiverName: null == receiverName ? _self.receiverName : receiverName // ignore: cast_nullable_to_non_nullable
as String,receiverWallet: null == receiverWallet ? _self.receiverWallet : receiverWallet // ignore: cast_nullable_to_non_nullable
as String,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
