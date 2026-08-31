// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_payout_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerifyPayoutData {

 int get id; String get reference; String get accountNumber; String get accountName;
/// Create a copy of VerifyPayoutData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyPayoutDataCopyWith<VerifyPayoutData> get copyWith => _$VerifyPayoutDataCopyWithImpl<VerifyPayoutData>(this as VerifyPayoutData, _$identity);

  /// Serializes this VerifyPayoutData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyPayoutData&&(identical(other.id, id) || other.id == id)&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.accountName, accountName) || other.accountName == accountName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,reference,accountNumber,accountName);

@override
String toString() {
  return 'VerifyPayoutData(id: $id, reference: $reference, accountNumber: $accountNumber, accountName: $accountName)';
}


}

/// @nodoc
abstract mixin class $VerifyPayoutDataCopyWith<$Res>  {
  factory $VerifyPayoutDataCopyWith(VerifyPayoutData value, $Res Function(VerifyPayoutData) _then) = _$VerifyPayoutDataCopyWithImpl;
@useResult
$Res call({
 int id, String reference, String accountNumber, String accountName
});




}
/// @nodoc
class _$VerifyPayoutDataCopyWithImpl<$Res>
    implements $VerifyPayoutDataCopyWith<$Res> {
  _$VerifyPayoutDataCopyWithImpl(this._self, this._then);

  final VerifyPayoutData _self;
  final $Res Function(VerifyPayoutData) _then;

/// Create a copy of VerifyPayoutData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? reference = null,Object? accountNumber = null,Object? accountName = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,reference: null == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,accountName: null == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [VerifyPayoutData].
extension VerifyPayoutDataPatterns on VerifyPayoutData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifyPayoutData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyPayoutData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifyPayoutData value)  $default,){
final _that = this;
switch (_that) {
case _VerifyPayoutData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifyPayoutData value)?  $default,){
final _that = this;
switch (_that) {
case _VerifyPayoutData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String reference,  String accountNumber,  String accountName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifyPayoutData() when $default != null:
return $default(_that.id,_that.reference,_that.accountNumber,_that.accountName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String reference,  String accountNumber,  String accountName)  $default,) {final _that = this;
switch (_that) {
case _VerifyPayoutData():
return $default(_that.id,_that.reference,_that.accountNumber,_that.accountName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String reference,  String accountNumber,  String accountName)?  $default,) {final _that = this;
switch (_that) {
case _VerifyPayoutData() when $default != null:
return $default(_that.id,_that.reference,_that.accountNumber,_that.accountName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VerifyPayoutData implements VerifyPayoutData {
  const _VerifyPayoutData({required this.id, required this.reference, required this.accountNumber, required this.accountName});
  factory _VerifyPayoutData.fromJson(Map<String, dynamic> json) => _$VerifyPayoutDataFromJson(json);

@override final  int id;
@override final  String reference;
@override final  String accountNumber;
@override final  String accountName;

/// Create a copy of VerifyPayoutData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyPayoutDataCopyWith<_VerifyPayoutData> get copyWith => __$VerifyPayoutDataCopyWithImpl<_VerifyPayoutData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VerifyPayoutDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyPayoutData&&(identical(other.id, id) || other.id == id)&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.accountName, accountName) || other.accountName == accountName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,reference,accountNumber,accountName);

@override
String toString() {
  return 'VerifyPayoutData(id: $id, reference: $reference, accountNumber: $accountNumber, accountName: $accountName)';
}


}

/// @nodoc
abstract mixin class _$VerifyPayoutDataCopyWith<$Res> implements $VerifyPayoutDataCopyWith<$Res> {
  factory _$VerifyPayoutDataCopyWith(_VerifyPayoutData value, $Res Function(_VerifyPayoutData) _then) = __$VerifyPayoutDataCopyWithImpl;
@override @useResult
$Res call({
 int id, String reference, String accountNumber, String accountName
});




}
/// @nodoc
class __$VerifyPayoutDataCopyWithImpl<$Res>
    implements _$VerifyPayoutDataCopyWith<$Res> {
  __$VerifyPayoutDataCopyWithImpl(this._self, this._then);

  final _VerifyPayoutData _self;
  final $Res Function(_VerifyPayoutData) _then;

/// Create a copy of VerifyPayoutData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? reference = null,Object? accountNumber = null,Object? accountName = null,}) {
  return _then(_VerifyPayoutData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,reference: null == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,accountName: null == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
