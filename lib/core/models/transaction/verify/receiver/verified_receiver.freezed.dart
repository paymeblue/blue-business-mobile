// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verified_receiver.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerifiedReceiver {

 int get id; int? get userId; String? get walletCode; String get receiverName; String get phone; String get amount; double get charge;
/// Create a copy of VerifiedReceiver
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifiedReceiverCopyWith<VerifiedReceiver> get copyWith => _$VerifiedReceiverCopyWithImpl<VerifiedReceiver>(this as VerifiedReceiver, _$identity);

  /// Serializes this VerifiedReceiver to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifiedReceiver&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.walletCode, walletCode) || other.walletCode == walletCode)&&(identical(other.receiverName, receiverName) || other.receiverName == receiverName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.charge, charge) || other.charge == charge));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,walletCode,receiverName,phone,amount,charge);

@override
String toString() {
  return 'VerifiedReceiver(id: $id, userId: $userId, walletCode: $walletCode, receiverName: $receiverName, phone: $phone, amount: $amount, charge: $charge)';
}


}

/// @nodoc
abstract mixin class $VerifiedReceiverCopyWith<$Res>  {
  factory $VerifiedReceiverCopyWith(VerifiedReceiver value, $Res Function(VerifiedReceiver) _then) = _$VerifiedReceiverCopyWithImpl;
@useResult
$Res call({
 int id, int? userId, String? walletCode, String receiverName, String phone, String amount, double charge
});




}
/// @nodoc
class _$VerifiedReceiverCopyWithImpl<$Res>
    implements $VerifiedReceiverCopyWith<$Res> {
  _$VerifiedReceiverCopyWithImpl(this._self, this._then);

  final VerifiedReceiver _self;
  final $Res Function(VerifiedReceiver) _then;

/// Create a copy of VerifiedReceiver
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = freezed,Object? walletCode = freezed,Object? receiverName = null,Object? phone = null,Object? amount = null,Object? charge = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,walletCode: freezed == walletCode ? _self.walletCode : walletCode // ignore: cast_nullable_to_non_nullable
as String?,receiverName: null == receiverName ? _self.receiverName : receiverName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,charge: null == charge ? _self.charge : charge // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [VerifiedReceiver].
extension VerifiedReceiverPatterns on VerifiedReceiver {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifiedReceiver value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifiedReceiver() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifiedReceiver value)  $default,){
final _that = this;
switch (_that) {
case _VerifiedReceiver():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifiedReceiver value)?  $default,){
final _that = this;
switch (_that) {
case _VerifiedReceiver() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int? userId,  String? walletCode,  String receiverName,  String phone,  String amount,  double charge)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifiedReceiver() when $default != null:
return $default(_that.id,_that.userId,_that.walletCode,_that.receiverName,_that.phone,_that.amount,_that.charge);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int? userId,  String? walletCode,  String receiverName,  String phone,  String amount,  double charge)  $default,) {final _that = this;
switch (_that) {
case _VerifiedReceiver():
return $default(_that.id,_that.userId,_that.walletCode,_that.receiverName,_that.phone,_that.amount,_that.charge);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int? userId,  String? walletCode,  String receiverName,  String phone,  String amount,  double charge)?  $default,) {final _that = this;
switch (_that) {
case _VerifiedReceiver() when $default != null:
return $default(_that.id,_that.userId,_that.walletCode,_that.receiverName,_that.phone,_that.amount,_that.charge);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VerifiedReceiver implements VerifiedReceiver {
  const _VerifiedReceiver({required this.id, this.userId, this.walletCode, required this.receiverName, required this.phone, required this.amount, required this.charge});
  factory _VerifiedReceiver.fromJson(Map<String, dynamic> json) => _$VerifiedReceiverFromJson(json);

@override final  int id;
@override final  int? userId;
@override final  String? walletCode;
@override final  String receiverName;
@override final  String phone;
@override final  String amount;
@override final  double charge;

/// Create a copy of VerifiedReceiver
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifiedReceiverCopyWith<_VerifiedReceiver> get copyWith => __$VerifiedReceiverCopyWithImpl<_VerifiedReceiver>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VerifiedReceiverToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifiedReceiver&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.walletCode, walletCode) || other.walletCode == walletCode)&&(identical(other.receiverName, receiverName) || other.receiverName == receiverName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.charge, charge) || other.charge == charge));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,walletCode,receiverName,phone,amount,charge);

@override
String toString() {
  return 'VerifiedReceiver(id: $id, userId: $userId, walletCode: $walletCode, receiverName: $receiverName, phone: $phone, amount: $amount, charge: $charge)';
}


}

/// @nodoc
abstract mixin class _$VerifiedReceiverCopyWith<$Res> implements $VerifiedReceiverCopyWith<$Res> {
  factory _$VerifiedReceiverCopyWith(_VerifiedReceiver value, $Res Function(_VerifiedReceiver) _then) = __$VerifiedReceiverCopyWithImpl;
@override @useResult
$Res call({
 int id, int? userId, String? walletCode, String receiverName, String phone, String amount, double charge
});




}
/// @nodoc
class __$VerifiedReceiverCopyWithImpl<$Res>
    implements _$VerifiedReceiverCopyWith<$Res> {
  __$VerifiedReceiverCopyWithImpl(this._self, this._then);

  final _VerifiedReceiver _self;
  final $Res Function(_VerifiedReceiver) _then;

/// Create a copy of VerifiedReceiver
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = freezed,Object? walletCode = freezed,Object? receiverName = null,Object? phone = null,Object? amount = null,Object? charge = null,}) {
  return _then(_VerifiedReceiver(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,walletCode: freezed == walletCode ? _self.walletCode : walletCode // ignore: cast_nullable_to_non_nullable
as String?,receiverName: null == receiverName ? _self.receiverName : receiverName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,charge: null == charge ? _self.charge : charge // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
