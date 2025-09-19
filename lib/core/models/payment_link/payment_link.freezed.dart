// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_link.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentLinkItem {

 int get id; String get transactionId; String get amount; String get phone; String get receiverName; String get status; String get originalUrl; String get createdAt;
/// Create a copy of PaymentLinkItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentLinkItemCopyWith<PaymentLinkItem> get copyWith => _$PaymentLinkItemCopyWithImpl<PaymentLinkItem>(this as PaymentLinkItem, _$identity);

  /// Serializes this PaymentLinkItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentLinkItem&&(identical(other.id, id) || other.id == id)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.receiverName, receiverName) || other.receiverName == receiverName)&&(identical(other.status, status) || other.status == status)&&(identical(other.originalUrl, originalUrl) || other.originalUrl == originalUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,transactionId,amount,phone,receiverName,status,originalUrl,createdAt);

@override
String toString() {
  return 'PaymentLinkItem(id: $id, transactionId: $transactionId, amount: $amount, phone: $phone, receiverName: $receiverName, status: $status, originalUrl: $originalUrl, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $PaymentLinkItemCopyWith<$Res>  {
  factory $PaymentLinkItemCopyWith(PaymentLinkItem value, $Res Function(PaymentLinkItem) _then) = _$PaymentLinkItemCopyWithImpl;
@useResult
$Res call({
 int id, String transactionId, String amount, String phone, String receiverName, String status, String originalUrl, String createdAt
});




}
/// @nodoc
class _$PaymentLinkItemCopyWithImpl<$Res>
    implements $PaymentLinkItemCopyWith<$Res> {
  _$PaymentLinkItemCopyWithImpl(this._self, this._then);

  final PaymentLinkItem _self;
  final $Res Function(PaymentLinkItem) _then;

/// Create a copy of PaymentLinkItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? transactionId = null,Object? amount = null,Object? phone = null,Object? receiverName = null,Object? status = null,Object? originalUrl = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,receiverName: null == receiverName ? _self.receiverName : receiverName // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,originalUrl: null == originalUrl ? _self.originalUrl : originalUrl // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentLinkItem].
extension PaymentLinkItemPatterns on PaymentLinkItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentLinkItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentLinkItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentLinkItem value)  $default,){
final _that = this;
switch (_that) {
case _PaymentLinkItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentLinkItem value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentLinkItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String transactionId,  String amount,  String phone,  String receiverName,  String status,  String originalUrl,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentLinkItem() when $default != null:
return $default(_that.id,_that.transactionId,_that.amount,_that.phone,_that.receiverName,_that.status,_that.originalUrl,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String transactionId,  String amount,  String phone,  String receiverName,  String status,  String originalUrl,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _PaymentLinkItem():
return $default(_that.id,_that.transactionId,_that.amount,_that.phone,_that.receiverName,_that.status,_that.originalUrl,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String transactionId,  String amount,  String phone,  String receiverName,  String status,  String originalUrl,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _PaymentLinkItem() when $default != null:
return $default(_that.id,_that.transactionId,_that.amount,_that.phone,_that.receiverName,_that.status,_that.originalUrl,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentLinkItem implements PaymentLinkItem {
  const _PaymentLinkItem({required this.id, required this.transactionId, required this.amount, required this.phone, required this.receiverName, required this.status, required this.originalUrl, required this.createdAt});
  factory _PaymentLinkItem.fromJson(Map<String, dynamic> json) => _$PaymentLinkItemFromJson(json);

@override final  int id;
@override final  String transactionId;
@override final  String amount;
@override final  String phone;
@override final  String receiverName;
@override final  String status;
@override final  String originalUrl;
@override final  String createdAt;

/// Create a copy of PaymentLinkItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentLinkItemCopyWith<_PaymentLinkItem> get copyWith => __$PaymentLinkItemCopyWithImpl<_PaymentLinkItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentLinkItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentLinkItem&&(identical(other.id, id) || other.id == id)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.receiverName, receiverName) || other.receiverName == receiverName)&&(identical(other.status, status) || other.status == status)&&(identical(other.originalUrl, originalUrl) || other.originalUrl == originalUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,transactionId,amount,phone,receiverName,status,originalUrl,createdAt);

@override
String toString() {
  return 'PaymentLinkItem(id: $id, transactionId: $transactionId, amount: $amount, phone: $phone, receiverName: $receiverName, status: $status, originalUrl: $originalUrl, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$PaymentLinkItemCopyWith<$Res> implements $PaymentLinkItemCopyWith<$Res> {
  factory _$PaymentLinkItemCopyWith(_PaymentLinkItem value, $Res Function(_PaymentLinkItem) _then) = __$PaymentLinkItemCopyWithImpl;
@override @useResult
$Res call({
 int id, String transactionId, String amount, String phone, String receiverName, String status, String originalUrl, String createdAt
});




}
/// @nodoc
class __$PaymentLinkItemCopyWithImpl<$Res>
    implements _$PaymentLinkItemCopyWith<$Res> {
  __$PaymentLinkItemCopyWithImpl(this._self, this._then);

  final _PaymentLinkItem _self;
  final $Res Function(_PaymentLinkItem) _then;

/// Create a copy of PaymentLinkItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? transactionId = null,Object? amount = null,Object? phone = null,Object? receiverName = null,Object? status = null,Object? originalUrl = null,Object? createdAt = null,}) {
  return _then(_PaymentLinkItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,receiverName: null == receiverName ? _self.receiverName : receiverName // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,originalUrl: null == originalUrl ? _self.originalUrl : originalUrl // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
