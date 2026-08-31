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
mixin _$GetRecoveryCodeData {

 int get businessId; String get recoveryCode;
/// Create a copy of GetRecoveryCodeData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetRecoveryCodeDataCopyWith<GetRecoveryCodeData> get copyWith => _$GetRecoveryCodeDataCopyWithImpl<GetRecoveryCodeData>(this as GetRecoveryCodeData, _$identity);

  /// Serializes this GetRecoveryCodeData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetRecoveryCodeData&&(identical(other.businessId, businessId) || other.businessId == businessId)&&(identical(other.recoveryCode, recoveryCode) || other.recoveryCode == recoveryCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,businessId,recoveryCode);

@override
String toString() {
  return 'GetRecoveryCodeData(businessId: $businessId, recoveryCode: $recoveryCode)';
}


}

/// @nodoc
abstract mixin class $GetRecoveryCodeDataCopyWith<$Res>  {
  factory $GetRecoveryCodeDataCopyWith(GetRecoveryCodeData value, $Res Function(GetRecoveryCodeData) _then) = _$GetRecoveryCodeDataCopyWithImpl;
@useResult
$Res call({
 int businessId, String recoveryCode
});




}
/// @nodoc
class _$GetRecoveryCodeDataCopyWithImpl<$Res>
    implements $GetRecoveryCodeDataCopyWith<$Res> {
  _$GetRecoveryCodeDataCopyWithImpl(this._self, this._then);

  final GetRecoveryCodeData _self;
  final $Res Function(GetRecoveryCodeData) _then;

/// Create a copy of GetRecoveryCodeData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? businessId = null,Object? recoveryCode = null,}) {
  return _then(_self.copyWith(
businessId: null == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as int,recoveryCode: null == recoveryCode ? _self.recoveryCode : recoveryCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GetRecoveryCodeData].
extension GetRecoveryCodeDataPatterns on GetRecoveryCodeData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetRecoveryCodeData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetRecoveryCodeData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetRecoveryCodeData value)  $default,){
final _that = this;
switch (_that) {
case _GetRecoveryCodeData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetRecoveryCodeData value)?  $default,){
final _that = this;
switch (_that) {
case _GetRecoveryCodeData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int businessId,  String recoveryCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetRecoveryCodeData() when $default != null:
return $default(_that.businessId,_that.recoveryCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int businessId,  String recoveryCode)  $default,) {final _that = this;
switch (_that) {
case _GetRecoveryCodeData():
return $default(_that.businessId,_that.recoveryCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int businessId,  String recoveryCode)?  $default,) {final _that = this;
switch (_that) {
case _GetRecoveryCodeData() when $default != null:
return $default(_that.businessId,_that.recoveryCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetRecoveryCodeData implements GetRecoveryCodeData {
  const _GetRecoveryCodeData({required this.businessId, required this.recoveryCode});
  factory _GetRecoveryCodeData.fromJson(Map<String, dynamic> json) => _$GetRecoveryCodeDataFromJson(json);

@override final  int businessId;
@override final  String recoveryCode;

/// Create a copy of GetRecoveryCodeData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetRecoveryCodeDataCopyWith<_GetRecoveryCodeData> get copyWith => __$GetRecoveryCodeDataCopyWithImpl<_GetRecoveryCodeData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetRecoveryCodeDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetRecoveryCodeData&&(identical(other.businessId, businessId) || other.businessId == businessId)&&(identical(other.recoveryCode, recoveryCode) || other.recoveryCode == recoveryCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,businessId,recoveryCode);

@override
String toString() {
  return 'GetRecoveryCodeData(businessId: $businessId, recoveryCode: $recoveryCode)';
}


}

/// @nodoc
abstract mixin class _$GetRecoveryCodeDataCopyWith<$Res> implements $GetRecoveryCodeDataCopyWith<$Res> {
  factory _$GetRecoveryCodeDataCopyWith(_GetRecoveryCodeData value, $Res Function(_GetRecoveryCodeData) _then) = __$GetRecoveryCodeDataCopyWithImpl;
@override @useResult
$Res call({
 int businessId, String recoveryCode
});




}
/// @nodoc
class __$GetRecoveryCodeDataCopyWithImpl<$Res>
    implements _$GetRecoveryCodeDataCopyWith<$Res> {
  __$GetRecoveryCodeDataCopyWithImpl(this._self, this._then);

  final _GetRecoveryCodeData _self;
  final $Res Function(_GetRecoveryCodeData) _then;

/// Create a copy of GetRecoveryCodeData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? businessId = null,Object? recoveryCode = null,}) {
  return _then(_GetRecoveryCodeData(
businessId: null == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as int,recoveryCode: null == recoveryCode ? _self.recoveryCode : recoveryCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
