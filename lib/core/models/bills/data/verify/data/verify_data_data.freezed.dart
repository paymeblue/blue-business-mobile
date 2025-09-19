// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_data_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerifyDataData {

 String get transactionId; String get receiver; String get provider; String get package; String get amount; String get status; String? get createdAt;
/// Create a copy of VerifyDataData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyDataDataCopyWith<VerifyDataData> get copyWith => _$VerifyDataDataCopyWithImpl<VerifyDataData>(this as VerifyDataData, _$identity);

  /// Serializes this VerifyDataData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyDataData&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.receiver, receiver) || other.receiver == receiver)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.package, package) || other.package == package)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,receiver,provider,package,amount,status,createdAt);

@override
String toString() {
  return 'VerifyDataData(transactionId: $transactionId, receiver: $receiver, provider: $provider, package: $package, amount: $amount, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $VerifyDataDataCopyWith<$Res>  {
  factory $VerifyDataDataCopyWith(VerifyDataData value, $Res Function(VerifyDataData) _then) = _$VerifyDataDataCopyWithImpl;
@useResult
$Res call({
 String transactionId, String receiver, String provider, String package, String amount, String status, String? createdAt
});




}
/// @nodoc
class _$VerifyDataDataCopyWithImpl<$Res>
    implements $VerifyDataDataCopyWith<$Res> {
  _$VerifyDataDataCopyWithImpl(this._self, this._then);

  final VerifyDataData _self;
  final $Res Function(VerifyDataData) _then;

/// Create a copy of VerifyDataData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionId = null,Object? receiver = null,Object? provider = null,Object? package = null,Object? amount = null,Object? status = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,receiver: null == receiver ? _self.receiver : receiver // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,package: null == package ? _self.package : package // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [VerifyDataData].
extension VerifyDataDataPatterns on VerifyDataData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifyDataData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyDataData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifyDataData value)  $default,){
final _that = this;
switch (_that) {
case _VerifyDataData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifyDataData value)?  $default,){
final _that = this;
switch (_that) {
case _VerifyDataData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String transactionId,  String receiver,  String provider,  String package,  String amount,  String status,  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifyDataData() when $default != null:
return $default(_that.transactionId,_that.receiver,_that.provider,_that.package,_that.amount,_that.status,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String transactionId,  String receiver,  String provider,  String package,  String amount,  String status,  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _VerifyDataData():
return $default(_that.transactionId,_that.receiver,_that.provider,_that.package,_that.amount,_that.status,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String transactionId,  String receiver,  String provider,  String package,  String amount,  String status,  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _VerifyDataData() when $default != null:
return $default(_that.transactionId,_that.receiver,_that.provider,_that.package,_that.amount,_that.status,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VerifyDataData implements VerifyDataData {
  const _VerifyDataData({required this.transactionId, required this.receiver, required this.provider, required this.package, this.amount = "0.0", this.status = "pending", this.createdAt});
  factory _VerifyDataData.fromJson(Map<String, dynamic> json) => _$VerifyDataDataFromJson(json);

@override final  String transactionId;
@override final  String receiver;
@override final  String provider;
@override final  String package;
@override@JsonKey() final  String amount;
@override@JsonKey() final  String status;
@override final  String? createdAt;

/// Create a copy of VerifyDataData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyDataDataCopyWith<_VerifyDataData> get copyWith => __$VerifyDataDataCopyWithImpl<_VerifyDataData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VerifyDataDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyDataData&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.receiver, receiver) || other.receiver == receiver)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.package, package) || other.package == package)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,receiver,provider,package,amount,status,createdAt);

@override
String toString() {
  return 'VerifyDataData(transactionId: $transactionId, receiver: $receiver, provider: $provider, package: $package, amount: $amount, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$VerifyDataDataCopyWith<$Res> implements $VerifyDataDataCopyWith<$Res> {
  factory _$VerifyDataDataCopyWith(_VerifyDataData value, $Res Function(_VerifyDataData) _then) = __$VerifyDataDataCopyWithImpl;
@override @useResult
$Res call({
 String transactionId, String receiver, String provider, String package, String amount, String status, String? createdAt
});




}
/// @nodoc
class __$VerifyDataDataCopyWithImpl<$Res>
    implements _$VerifyDataDataCopyWith<$Res> {
  __$VerifyDataDataCopyWithImpl(this._self, this._then);

  final _VerifyDataData _self;
  final $Res Function(_VerifyDataData) _then;

/// Create a copy of VerifyDataData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionId = null,Object? receiver = null,Object? provider = null,Object? package = null,Object? amount = null,Object? status = null,Object? createdAt = freezed,}) {
  return _then(_VerifyDataData(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,receiver: null == receiver ? _self.receiver : receiver // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,package: null == package ? _self.package : package // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
