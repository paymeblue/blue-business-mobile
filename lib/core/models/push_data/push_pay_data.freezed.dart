// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'push_pay_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PushPayData {

 int get id; String get amount; String get receiverName; String get receiverWallet; String get reference; String get status; String get createdAt;
/// Create a copy of PushPayData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PushPayDataCopyWith<PushPayData> get copyWith => _$PushPayDataCopyWithImpl<PushPayData>(this as PushPayData, _$identity);

  /// Serializes this PushPayData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PushPayData&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.receiverName, receiverName) || other.receiverName == receiverName)&&(identical(other.receiverWallet, receiverWallet) || other.receiverWallet == receiverWallet)&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amount,receiverName,receiverWallet,reference,status,createdAt);

@override
String toString() {
  return 'PushPayData(id: $id, amount: $amount, receiverName: $receiverName, receiverWallet: $receiverWallet, reference: $reference, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $PushPayDataCopyWith<$Res>  {
  factory $PushPayDataCopyWith(PushPayData value, $Res Function(PushPayData) _then) = _$PushPayDataCopyWithImpl;
@useResult
$Res call({
 int id, String amount, String receiverName, String receiverWallet, String reference, String status, String createdAt
});




}
/// @nodoc
class _$PushPayDataCopyWithImpl<$Res>
    implements $PushPayDataCopyWith<$Res> {
  _$PushPayDataCopyWithImpl(this._self, this._then);

  final PushPayData _self;
  final $Res Function(PushPayData) _then;

/// Create a copy of PushPayData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? amount = null,Object? receiverName = null,Object? receiverWallet = null,Object? reference = null,Object? status = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,receiverName: null == receiverName ? _self.receiverName : receiverName // ignore: cast_nullable_to_non_nullable
as String,receiverWallet: null == receiverWallet ? _self.receiverWallet : receiverWallet // ignore: cast_nullable_to_non_nullable
as String,reference: null == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PushPayData].
extension PushPayDataPatterns on PushPayData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PushPayData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PushPayData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PushPayData value)  $default,){
final _that = this;
switch (_that) {
case _PushPayData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PushPayData value)?  $default,){
final _that = this;
switch (_that) {
case _PushPayData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String amount,  String receiverName,  String receiverWallet,  String reference,  String status,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PushPayData() when $default != null:
return $default(_that.id,_that.amount,_that.receiverName,_that.receiverWallet,_that.reference,_that.status,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String amount,  String receiverName,  String receiverWallet,  String reference,  String status,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _PushPayData():
return $default(_that.id,_that.amount,_that.receiverName,_that.receiverWallet,_that.reference,_that.status,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String amount,  String receiverName,  String receiverWallet,  String reference,  String status,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _PushPayData() when $default != null:
return $default(_that.id,_that.amount,_that.receiverName,_that.receiverWallet,_that.reference,_that.status,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PushPayData implements PushPayData {
  const _PushPayData({required this.id, required this.amount, required this.receiverName, required this.receiverWallet, required this.reference, required this.status, required this.createdAt});
  factory _PushPayData.fromJson(Map<String, dynamic> json) => _$PushPayDataFromJson(json);

@override final  int id;
@override final  String amount;
@override final  String receiverName;
@override final  String receiverWallet;
@override final  String reference;
@override final  String status;
@override final  String createdAt;

/// Create a copy of PushPayData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PushPayDataCopyWith<_PushPayData> get copyWith => __$PushPayDataCopyWithImpl<_PushPayData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PushPayDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PushPayData&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.receiverName, receiverName) || other.receiverName == receiverName)&&(identical(other.receiverWallet, receiverWallet) || other.receiverWallet == receiverWallet)&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amount,receiverName,receiverWallet,reference,status,createdAt);

@override
String toString() {
  return 'PushPayData(id: $id, amount: $amount, receiverName: $receiverName, receiverWallet: $receiverWallet, reference: $reference, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$PushPayDataCopyWith<$Res> implements $PushPayDataCopyWith<$Res> {
  factory _$PushPayDataCopyWith(_PushPayData value, $Res Function(_PushPayData) _then) = __$PushPayDataCopyWithImpl;
@override @useResult
$Res call({
 int id, String amount, String receiverName, String receiverWallet, String reference, String status, String createdAt
});




}
/// @nodoc
class __$PushPayDataCopyWithImpl<$Res>
    implements _$PushPayDataCopyWith<$Res> {
  __$PushPayDataCopyWithImpl(this._self, this._then);

  final _PushPayData _self;
  final $Res Function(_PushPayData) _then;

/// Create a copy of PushPayData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? amount = null,Object? receiverName = null,Object? receiverWallet = null,Object? reference = null,Object? status = null,Object? createdAt = null,}) {
  return _then(_PushPayData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,receiverName: null == receiverName ? _self.receiverName : receiverName // ignore: cast_nullable_to_non_nullable
as String,receiverWallet: null == receiverWallet ? _self.receiverWallet : receiverWallet // ignore: cast_nullable_to_non_nullable
as String,reference: null == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
