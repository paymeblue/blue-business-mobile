// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kyc_status_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$KycStatusData {

 String? get type; String get kyc;
/// Create a copy of KycStatusData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KycStatusDataCopyWith<KycStatusData> get copyWith => _$KycStatusDataCopyWithImpl<KycStatusData>(this as KycStatusData, _$identity);

  /// Serializes this KycStatusData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KycStatusData&&(identical(other.type, type) || other.type == type)&&(identical(other.kyc, kyc) || other.kyc == kyc));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,kyc);

@override
String toString() {
  return 'KycStatusData(type: $type, kyc: $kyc)';
}


}

/// @nodoc
abstract mixin class $KycStatusDataCopyWith<$Res>  {
  factory $KycStatusDataCopyWith(KycStatusData value, $Res Function(KycStatusData) _then) = _$KycStatusDataCopyWithImpl;
@useResult
$Res call({
 String? type, String kyc
});




}
/// @nodoc
class _$KycStatusDataCopyWithImpl<$Res>
    implements $KycStatusDataCopyWith<$Res> {
  _$KycStatusDataCopyWithImpl(this._self, this._then);

  final KycStatusData _self;
  final $Res Function(KycStatusData) _then;

/// Create a copy of KycStatusData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = freezed,Object? kyc = null,}) {
  return _then(_self.copyWith(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,kyc: null == kyc ? _self.kyc : kyc // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [KycStatusData].
extension KycStatusDataPatterns on KycStatusData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KycStatusData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KycStatusData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KycStatusData value)  $default,){
final _that = this;
switch (_that) {
case _KycStatusData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KycStatusData value)?  $default,){
final _that = this;
switch (_that) {
case _KycStatusData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? type,  String kyc)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KycStatusData() when $default != null:
return $default(_that.type,_that.kyc);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? type,  String kyc)  $default,) {final _that = this;
switch (_that) {
case _KycStatusData():
return $default(_that.type,_that.kyc);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? type,  String kyc)?  $default,) {final _that = this;
switch (_that) {
case _KycStatusData() when $default != null:
return $default(_that.type,_that.kyc);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KycStatusData implements KycStatusData {
  const _KycStatusData({this.type, required this.kyc});
  factory _KycStatusData.fromJson(Map<String, dynamic> json) => _$KycStatusDataFromJson(json);

@override final  String? type;
@override final  String kyc;

/// Create a copy of KycStatusData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KycStatusDataCopyWith<_KycStatusData> get copyWith => __$KycStatusDataCopyWithImpl<_KycStatusData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KycStatusDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KycStatusData&&(identical(other.type, type) || other.type == type)&&(identical(other.kyc, kyc) || other.kyc == kyc));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,kyc);

@override
String toString() {
  return 'KycStatusData(type: $type, kyc: $kyc)';
}


}

/// @nodoc
abstract mixin class _$KycStatusDataCopyWith<$Res> implements $KycStatusDataCopyWith<$Res> {
  factory _$KycStatusDataCopyWith(_KycStatusData value, $Res Function(_KycStatusData) _then) = __$KycStatusDataCopyWithImpl;
@override @useResult
$Res call({
 String? type, String kyc
});




}
/// @nodoc
class __$KycStatusDataCopyWithImpl<$Res>
    implements _$KycStatusDataCopyWith<$Res> {
  __$KycStatusDataCopyWithImpl(this._self, this._then);

  final _KycStatusData _self;
  final $Res Function(_KycStatusData) _then;

/// Create a copy of KycStatusData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = freezed,Object? kyc = null,}) {
  return _then(_KycStatusData(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,kyc: null == kyc ? _self.kyc : kyc // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
