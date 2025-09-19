// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'receipt_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentLinkReceiptRecord {

 int get id; String get transactionId; String get amount; String get receiverName; String get phone; String get createdAt; String get status; String? get senderName; String? get narration;
/// Create a copy of PaymentLinkReceiptRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentLinkReceiptRecordCopyWith<PaymentLinkReceiptRecord> get copyWith => _$PaymentLinkReceiptRecordCopyWithImpl<PaymentLinkReceiptRecord>(this as PaymentLinkReceiptRecord, _$identity);

  /// Serializes this PaymentLinkReceiptRecord to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentLinkReceiptRecord&&(identical(other.id, id) || other.id == id)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.receiverName, receiverName) || other.receiverName == receiverName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.narration, narration) || other.narration == narration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,transactionId,amount,receiverName,phone,createdAt,status,senderName,narration);

@override
String toString() {
  return 'PaymentLinkReceiptRecord(id: $id, transactionId: $transactionId, amount: $amount, receiverName: $receiverName, phone: $phone, createdAt: $createdAt, status: $status, senderName: $senderName, narration: $narration)';
}


}

/// @nodoc
abstract mixin class $PaymentLinkReceiptRecordCopyWith<$Res>  {
  factory $PaymentLinkReceiptRecordCopyWith(PaymentLinkReceiptRecord value, $Res Function(PaymentLinkReceiptRecord) _then) = _$PaymentLinkReceiptRecordCopyWithImpl;
@useResult
$Res call({
 int id, String transactionId, String amount, String receiverName, String phone, String createdAt, String status, String? senderName, String? narration
});




}
/// @nodoc
class _$PaymentLinkReceiptRecordCopyWithImpl<$Res>
    implements $PaymentLinkReceiptRecordCopyWith<$Res> {
  _$PaymentLinkReceiptRecordCopyWithImpl(this._self, this._then);

  final PaymentLinkReceiptRecord _self;
  final $Res Function(PaymentLinkReceiptRecord) _then;

/// Create a copy of PaymentLinkReceiptRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? transactionId = null,Object? amount = null,Object? receiverName = null,Object? phone = null,Object? createdAt = null,Object? status = null,Object? senderName = freezed,Object? narration = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,receiverName: null == receiverName ? _self.receiverName : receiverName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,senderName: freezed == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String?,narration: freezed == narration ? _self.narration : narration // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentLinkReceiptRecord].
extension PaymentLinkReceiptRecordPatterns on PaymentLinkReceiptRecord {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentLinkReceiptRecord value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentLinkReceiptRecord() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentLinkReceiptRecord value)  $default,){
final _that = this;
switch (_that) {
case _PaymentLinkReceiptRecord():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentLinkReceiptRecord value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentLinkReceiptRecord() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String transactionId,  String amount,  String receiverName,  String phone,  String createdAt,  String status,  String? senderName,  String? narration)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentLinkReceiptRecord() when $default != null:
return $default(_that.id,_that.transactionId,_that.amount,_that.receiverName,_that.phone,_that.createdAt,_that.status,_that.senderName,_that.narration);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String transactionId,  String amount,  String receiverName,  String phone,  String createdAt,  String status,  String? senderName,  String? narration)  $default,) {final _that = this;
switch (_that) {
case _PaymentLinkReceiptRecord():
return $default(_that.id,_that.transactionId,_that.amount,_that.receiverName,_that.phone,_that.createdAt,_that.status,_that.senderName,_that.narration);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String transactionId,  String amount,  String receiverName,  String phone,  String createdAt,  String status,  String? senderName,  String? narration)?  $default,) {final _that = this;
switch (_that) {
case _PaymentLinkReceiptRecord() when $default != null:
return $default(_that.id,_that.transactionId,_that.amount,_that.receiverName,_that.phone,_that.createdAt,_that.status,_that.senderName,_that.narration);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentLinkReceiptRecord implements PaymentLinkReceiptRecord {
  const _PaymentLinkReceiptRecord({required this.id, required this.transactionId, required this.amount, required this.receiverName, required this.phone, required this.createdAt, this.status = "pending", this.senderName, this.narration});
  factory _PaymentLinkReceiptRecord.fromJson(Map<String, dynamic> json) => _$PaymentLinkReceiptRecordFromJson(json);

@override final  int id;
@override final  String transactionId;
@override final  String amount;
@override final  String receiverName;
@override final  String phone;
@override final  String createdAt;
@override@JsonKey() final  String status;
@override final  String? senderName;
@override final  String? narration;

/// Create a copy of PaymentLinkReceiptRecord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentLinkReceiptRecordCopyWith<_PaymentLinkReceiptRecord> get copyWith => __$PaymentLinkReceiptRecordCopyWithImpl<_PaymentLinkReceiptRecord>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentLinkReceiptRecordToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentLinkReceiptRecord&&(identical(other.id, id) || other.id == id)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.receiverName, receiverName) || other.receiverName == receiverName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.narration, narration) || other.narration == narration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,transactionId,amount,receiverName,phone,createdAt,status,senderName,narration);

@override
String toString() {
  return 'PaymentLinkReceiptRecord(id: $id, transactionId: $transactionId, amount: $amount, receiverName: $receiverName, phone: $phone, createdAt: $createdAt, status: $status, senderName: $senderName, narration: $narration)';
}


}

/// @nodoc
abstract mixin class _$PaymentLinkReceiptRecordCopyWith<$Res> implements $PaymentLinkReceiptRecordCopyWith<$Res> {
  factory _$PaymentLinkReceiptRecordCopyWith(_PaymentLinkReceiptRecord value, $Res Function(_PaymentLinkReceiptRecord) _then) = __$PaymentLinkReceiptRecordCopyWithImpl;
@override @useResult
$Res call({
 int id, String transactionId, String amount, String receiverName, String phone, String createdAt, String status, String? senderName, String? narration
});




}
/// @nodoc
class __$PaymentLinkReceiptRecordCopyWithImpl<$Res>
    implements _$PaymentLinkReceiptRecordCopyWith<$Res> {
  __$PaymentLinkReceiptRecordCopyWithImpl(this._self, this._then);

  final _PaymentLinkReceiptRecord _self;
  final $Res Function(_PaymentLinkReceiptRecord) _then;

/// Create a copy of PaymentLinkReceiptRecord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? transactionId = null,Object? amount = null,Object? receiverName = null,Object? phone = null,Object? createdAt = null,Object? status = null,Object? senderName = freezed,Object? narration = freezed,}) {
  return _then(_PaymentLinkReceiptRecord(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,receiverName: null == receiverName ? _self.receiverName : receiverName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,senderName: freezed == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String?,narration: freezed == narration ? _self.narration : narration // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
