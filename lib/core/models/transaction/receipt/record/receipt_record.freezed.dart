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
mixin _$ReceiptRecord {

 int get id; String get amount; String get orderReference; String get receiverName; String get receivedBy; String get paymentMode; String get createdAt; String get status; String? get senderName; String? get narration;
/// Create a copy of ReceiptRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReceiptRecordCopyWith<ReceiptRecord> get copyWith => _$ReceiptRecordCopyWithImpl<ReceiptRecord>(this as ReceiptRecord, _$identity);

  /// Serializes this ReceiptRecord to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReceiptRecord&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.orderReference, orderReference) || other.orderReference == orderReference)&&(identical(other.receiverName, receiverName) || other.receiverName == receiverName)&&(identical(other.receivedBy, receivedBy) || other.receivedBy == receivedBy)&&(identical(other.paymentMode, paymentMode) || other.paymentMode == paymentMode)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.narration, narration) || other.narration == narration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amount,orderReference,receiverName,receivedBy,paymentMode,createdAt,status,senderName,narration);

@override
String toString() {
  return 'ReceiptRecord(id: $id, amount: $amount, orderReference: $orderReference, receiverName: $receiverName, receivedBy: $receivedBy, paymentMode: $paymentMode, createdAt: $createdAt, status: $status, senderName: $senderName, narration: $narration)';
}


}

/// @nodoc
abstract mixin class $ReceiptRecordCopyWith<$Res>  {
  factory $ReceiptRecordCopyWith(ReceiptRecord value, $Res Function(ReceiptRecord) _then) = _$ReceiptRecordCopyWithImpl;
@useResult
$Res call({
 int id, String amount, String orderReference, String receiverName, String receivedBy, String paymentMode, String createdAt, String status, String? senderName, String? narration
});




}
/// @nodoc
class _$ReceiptRecordCopyWithImpl<$Res>
    implements $ReceiptRecordCopyWith<$Res> {
  _$ReceiptRecordCopyWithImpl(this._self, this._then);

  final ReceiptRecord _self;
  final $Res Function(ReceiptRecord) _then;

/// Create a copy of ReceiptRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? amount = null,Object? orderReference = null,Object? receiverName = null,Object? receivedBy = null,Object? paymentMode = null,Object? createdAt = null,Object? status = null,Object? senderName = freezed,Object? narration = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,orderReference: null == orderReference ? _self.orderReference : orderReference // ignore: cast_nullable_to_non_nullable
as String,receiverName: null == receiverName ? _self.receiverName : receiverName // ignore: cast_nullable_to_non_nullable
as String,receivedBy: null == receivedBy ? _self.receivedBy : receivedBy // ignore: cast_nullable_to_non_nullable
as String,paymentMode: null == paymentMode ? _self.paymentMode : paymentMode // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,senderName: freezed == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String?,narration: freezed == narration ? _self.narration : narration // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReceiptRecord].
extension ReceiptRecordPatterns on ReceiptRecord {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReceiptRecord value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReceiptRecord() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReceiptRecord value)  $default,){
final _that = this;
switch (_that) {
case _ReceiptRecord():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReceiptRecord value)?  $default,){
final _that = this;
switch (_that) {
case _ReceiptRecord() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String amount,  String orderReference,  String receiverName,  String receivedBy,  String paymentMode,  String createdAt,  String status,  String? senderName,  String? narration)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReceiptRecord() when $default != null:
return $default(_that.id,_that.amount,_that.orderReference,_that.receiverName,_that.receivedBy,_that.paymentMode,_that.createdAt,_that.status,_that.senderName,_that.narration);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String amount,  String orderReference,  String receiverName,  String receivedBy,  String paymentMode,  String createdAt,  String status,  String? senderName,  String? narration)  $default,) {final _that = this;
switch (_that) {
case _ReceiptRecord():
return $default(_that.id,_that.amount,_that.orderReference,_that.receiverName,_that.receivedBy,_that.paymentMode,_that.createdAt,_that.status,_that.senderName,_that.narration);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String amount,  String orderReference,  String receiverName,  String receivedBy,  String paymentMode,  String createdAt,  String status,  String? senderName,  String? narration)?  $default,) {final _that = this;
switch (_that) {
case _ReceiptRecord() when $default != null:
return $default(_that.id,_that.amount,_that.orderReference,_that.receiverName,_that.receivedBy,_that.paymentMode,_that.createdAt,_that.status,_that.senderName,_that.narration);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReceiptRecord implements ReceiptRecord {
  const _ReceiptRecord({required this.id, required this.amount, required this.orderReference, required this.receiverName, required this.receivedBy, required this.paymentMode, required this.createdAt, this.status = "pending", this.senderName, this.narration});
  factory _ReceiptRecord.fromJson(Map<String, dynamic> json) => _$ReceiptRecordFromJson(json);

@override final  int id;
@override final  String amount;
@override final  String orderReference;
@override final  String receiverName;
@override final  String receivedBy;
@override final  String paymentMode;
@override final  String createdAt;
@override@JsonKey() final  String status;
@override final  String? senderName;
@override final  String? narration;

/// Create a copy of ReceiptRecord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReceiptRecordCopyWith<_ReceiptRecord> get copyWith => __$ReceiptRecordCopyWithImpl<_ReceiptRecord>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReceiptRecordToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReceiptRecord&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.orderReference, orderReference) || other.orderReference == orderReference)&&(identical(other.receiverName, receiverName) || other.receiverName == receiverName)&&(identical(other.receivedBy, receivedBy) || other.receivedBy == receivedBy)&&(identical(other.paymentMode, paymentMode) || other.paymentMode == paymentMode)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.narration, narration) || other.narration == narration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amount,orderReference,receiverName,receivedBy,paymentMode,createdAt,status,senderName,narration);

@override
String toString() {
  return 'ReceiptRecord(id: $id, amount: $amount, orderReference: $orderReference, receiverName: $receiverName, receivedBy: $receivedBy, paymentMode: $paymentMode, createdAt: $createdAt, status: $status, senderName: $senderName, narration: $narration)';
}


}

/// @nodoc
abstract mixin class _$ReceiptRecordCopyWith<$Res> implements $ReceiptRecordCopyWith<$Res> {
  factory _$ReceiptRecordCopyWith(_ReceiptRecord value, $Res Function(_ReceiptRecord) _then) = __$ReceiptRecordCopyWithImpl;
@override @useResult
$Res call({
 int id, String amount, String orderReference, String receiverName, String receivedBy, String paymentMode, String createdAt, String status, String? senderName, String? narration
});




}
/// @nodoc
class __$ReceiptRecordCopyWithImpl<$Res>
    implements _$ReceiptRecordCopyWith<$Res> {
  __$ReceiptRecordCopyWithImpl(this._self, this._then);

  final _ReceiptRecord _self;
  final $Res Function(_ReceiptRecord) _then;

/// Create a copy of ReceiptRecord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? amount = null,Object? orderReference = null,Object? receiverName = null,Object? receivedBy = null,Object? paymentMode = null,Object? createdAt = null,Object? status = null,Object? senderName = freezed,Object? narration = freezed,}) {
  return _then(_ReceiptRecord(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,orderReference: null == orderReference ? _self.orderReference : orderReference // ignore: cast_nullable_to_non_nullable
as String,receiverName: null == receiverName ? _self.receiverName : receiverName // ignore: cast_nullable_to_non_nullable
as String,receivedBy: null == receivedBy ? _self.receivedBy : receivedBy // ignore: cast_nullable_to_non_nullable
as String,paymentMode: null == paymentMode ? _self.paymentMode : paymentMode // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,senderName: freezed == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String?,narration: freezed == narration ? _self.narration : narration // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
