// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'initiate_transaction_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InitiateTransactionData {

 int get id; String get transactionId; String get amount; String get status; String get createdAt;
/// Create a copy of InitiateTransactionData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InitiateTransactionDataCopyWith<InitiateTransactionData> get copyWith => _$InitiateTransactionDataCopyWithImpl<InitiateTransactionData>(this as InitiateTransactionData, _$identity);

  /// Serializes this InitiateTransactionData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitiateTransactionData&&(identical(other.id, id) || other.id == id)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,transactionId,amount,status,createdAt);

@override
String toString() {
  return 'InitiateTransactionData(id: $id, transactionId: $transactionId, amount: $amount, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $InitiateTransactionDataCopyWith<$Res>  {
  factory $InitiateTransactionDataCopyWith(InitiateTransactionData value, $Res Function(InitiateTransactionData) _then) = _$InitiateTransactionDataCopyWithImpl;
@useResult
$Res call({
 int id, String transactionId, String amount, String status, String createdAt
});




}
/// @nodoc
class _$InitiateTransactionDataCopyWithImpl<$Res>
    implements $InitiateTransactionDataCopyWith<$Res> {
  _$InitiateTransactionDataCopyWithImpl(this._self, this._then);

  final InitiateTransactionData _self;
  final $Res Function(InitiateTransactionData) _then;

/// Create a copy of InitiateTransactionData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? transactionId = null,Object? amount = null,Object? status = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [InitiateTransactionData].
extension InitiateTransactionDataPatterns on InitiateTransactionData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InitiateTransactionData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InitiateTransactionData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InitiateTransactionData value)  $default,){
final _that = this;
switch (_that) {
case _InitiateTransactionData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InitiateTransactionData value)?  $default,){
final _that = this;
switch (_that) {
case _InitiateTransactionData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String transactionId,  String amount,  String status,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InitiateTransactionData() when $default != null:
return $default(_that.id,_that.transactionId,_that.amount,_that.status,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String transactionId,  String amount,  String status,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _InitiateTransactionData():
return $default(_that.id,_that.transactionId,_that.amount,_that.status,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String transactionId,  String amount,  String status,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _InitiateTransactionData() when $default != null:
return $default(_that.id,_that.transactionId,_that.amount,_that.status,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InitiateTransactionData implements InitiateTransactionData {
  const _InitiateTransactionData({required this.id, required this.transactionId, required this.amount, required this.status, required this.createdAt});
  factory _InitiateTransactionData.fromJson(Map<String, dynamic> json) => _$InitiateTransactionDataFromJson(json);

@override final  int id;
@override final  String transactionId;
@override final  String amount;
@override final  String status;
@override final  String createdAt;

/// Create a copy of InitiateTransactionData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitiateTransactionDataCopyWith<_InitiateTransactionData> get copyWith => __$InitiateTransactionDataCopyWithImpl<_InitiateTransactionData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InitiateTransactionDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InitiateTransactionData&&(identical(other.id, id) || other.id == id)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,transactionId,amount,status,createdAt);

@override
String toString() {
  return 'InitiateTransactionData(id: $id, transactionId: $transactionId, amount: $amount, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$InitiateTransactionDataCopyWith<$Res> implements $InitiateTransactionDataCopyWith<$Res> {
  factory _$InitiateTransactionDataCopyWith(_InitiateTransactionData value, $Res Function(_InitiateTransactionData) _then) = __$InitiateTransactionDataCopyWithImpl;
@override @useResult
$Res call({
 int id, String transactionId, String amount, String status, String createdAt
});




}
/// @nodoc
class __$InitiateTransactionDataCopyWithImpl<$Res>
    implements _$InitiateTransactionDataCopyWith<$Res> {
  __$InitiateTransactionDataCopyWithImpl(this._self, this._then);

  final _InitiateTransactionData _self;
  final $Res Function(_InitiateTransactionData) _then;

/// Create a copy of InitiateTransactionData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? transactionId = null,Object? amount = null,Object? status = null,Object? createdAt = null,}) {
  return _then(_InitiateTransactionData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
