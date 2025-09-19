// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recovery_code_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SendRecoveryCodeData {

 int get userId;
/// Create a copy of SendRecoveryCodeData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendRecoveryCodeDataCopyWith<SendRecoveryCodeData> get copyWith => _$SendRecoveryCodeDataCopyWithImpl<SendRecoveryCodeData>(this as SendRecoveryCodeData, _$identity);

  /// Serializes this SendRecoveryCodeData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendRecoveryCodeData&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'SendRecoveryCodeData(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $SendRecoveryCodeDataCopyWith<$Res>  {
  factory $SendRecoveryCodeDataCopyWith(SendRecoveryCodeData value, $Res Function(SendRecoveryCodeData) _then) = _$SendRecoveryCodeDataCopyWithImpl;
@useResult
$Res call({
 int userId
});




}
/// @nodoc
class _$SendRecoveryCodeDataCopyWithImpl<$Res>
    implements $SendRecoveryCodeDataCopyWith<$Res> {
  _$SendRecoveryCodeDataCopyWithImpl(this._self, this._then);

  final SendRecoveryCodeData _self;
  final $Res Function(SendRecoveryCodeData) _then;

/// Create a copy of SendRecoveryCodeData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SendRecoveryCodeData].
extension SendRecoveryCodeDataPatterns on SendRecoveryCodeData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SendRecoveryCodeData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SendRecoveryCodeData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SendRecoveryCodeData value)  $default,){
final _that = this;
switch (_that) {
case _SendRecoveryCodeData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SendRecoveryCodeData value)?  $default,){
final _that = this;
switch (_that) {
case _SendRecoveryCodeData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SendRecoveryCodeData() when $default != null:
return $default(_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int userId)  $default,) {final _that = this;
switch (_that) {
case _SendRecoveryCodeData():
return $default(_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int userId)?  $default,) {final _that = this;
switch (_that) {
case _SendRecoveryCodeData() when $default != null:
return $default(_that.userId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SendRecoveryCodeData implements SendRecoveryCodeData {
  const _SendRecoveryCodeData({required this.userId});
  factory _SendRecoveryCodeData.fromJson(Map<String, dynamic> json) => _$SendRecoveryCodeDataFromJson(json);

@override final  int userId;

/// Create a copy of SendRecoveryCodeData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SendRecoveryCodeDataCopyWith<_SendRecoveryCodeData> get copyWith => __$SendRecoveryCodeDataCopyWithImpl<_SendRecoveryCodeData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SendRecoveryCodeDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendRecoveryCodeData&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'SendRecoveryCodeData(userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$SendRecoveryCodeDataCopyWith<$Res> implements $SendRecoveryCodeDataCopyWith<$Res> {
  factory _$SendRecoveryCodeDataCopyWith(_SendRecoveryCodeData value, $Res Function(_SendRecoveryCodeData) _then) = __$SendRecoveryCodeDataCopyWithImpl;
@override @useResult
$Res call({
 int userId
});




}
/// @nodoc
class __$SendRecoveryCodeDataCopyWithImpl<$Res>
    implements _$SendRecoveryCodeDataCopyWith<$Res> {
  __$SendRecoveryCodeDataCopyWithImpl(this._self, this._then);

  final _SendRecoveryCodeData _self;
  final $Res Function(_SendRecoveryCodeData) _then;

/// Create a copy of SendRecoveryCodeData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(_SendRecoveryCodeData(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
