// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_code.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CountryCode {

 String get countryCode; String get name; String get dialCode;
/// Create a copy of CountryCode
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountryCodeCopyWith<CountryCode> get copyWith => _$CountryCodeCopyWithImpl<CountryCode>(this as CountryCode, _$identity);

  /// Serializes this CountryCode to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CountryCode&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.name, name) || other.name == name)&&(identical(other.dialCode, dialCode) || other.dialCode == dialCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,countryCode,name,dialCode);

@override
String toString() {
  return 'CountryCode(countryCode: $countryCode, name: $name, dialCode: $dialCode)';
}


}

/// @nodoc
abstract mixin class $CountryCodeCopyWith<$Res>  {
  factory $CountryCodeCopyWith(CountryCode value, $Res Function(CountryCode) _then) = _$CountryCodeCopyWithImpl;
@useResult
$Res call({
 String countryCode, String name, String dialCode
});




}
/// @nodoc
class _$CountryCodeCopyWithImpl<$Res>
    implements $CountryCodeCopyWith<$Res> {
  _$CountryCodeCopyWithImpl(this._self, this._then);

  final CountryCode _self;
  final $Res Function(CountryCode) _then;

/// Create a copy of CountryCode
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? countryCode = null,Object? name = null,Object? dialCode = null,}) {
  return _then(_self.copyWith(
countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,dialCode: null == dialCode ? _self.dialCode : dialCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CountryCode].
extension CountryCodePatterns on CountryCode {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CountryCode value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CountryCode() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CountryCode value)  $default,){
final _that = this;
switch (_that) {
case _CountryCode():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CountryCode value)?  $default,){
final _that = this;
switch (_that) {
case _CountryCode() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String countryCode,  String name,  String dialCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CountryCode() when $default != null:
return $default(_that.countryCode,_that.name,_that.dialCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String countryCode,  String name,  String dialCode)  $default,) {final _that = this;
switch (_that) {
case _CountryCode():
return $default(_that.countryCode,_that.name,_that.dialCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String countryCode,  String name,  String dialCode)?  $default,) {final _that = this;
switch (_that) {
case _CountryCode() when $default != null:
return $default(_that.countryCode,_that.name,_that.dialCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CountryCode implements CountryCode {
  const _CountryCode({required this.countryCode, required this.name, required this.dialCode});
  factory _CountryCode.fromJson(Map<String, dynamic> json) => _$CountryCodeFromJson(json);

@override final  String countryCode;
@override final  String name;
@override final  String dialCode;

/// Create a copy of CountryCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CountryCodeCopyWith<_CountryCode> get copyWith => __$CountryCodeCopyWithImpl<_CountryCode>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CountryCodeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CountryCode&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.name, name) || other.name == name)&&(identical(other.dialCode, dialCode) || other.dialCode == dialCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,countryCode,name,dialCode);

@override
String toString() {
  return 'CountryCode(countryCode: $countryCode, name: $name, dialCode: $dialCode)';
}


}

/// @nodoc
abstract mixin class _$CountryCodeCopyWith<$Res> implements $CountryCodeCopyWith<$Res> {
  factory _$CountryCodeCopyWith(_CountryCode value, $Res Function(_CountryCode) _then) = __$CountryCodeCopyWithImpl;
@override @useResult
$Res call({
 String countryCode, String name, String dialCode
});




}
/// @nodoc
class __$CountryCodeCopyWithImpl<$Res>
    implements _$CountryCodeCopyWith<$Res> {
  __$CountryCodeCopyWithImpl(this._self, this._then);

  final _CountryCode _self;
  final $Res Function(_CountryCode) _then;

/// Create a copy of CountryCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? countryCode = null,Object? name = null,Object? dialCode = null,}) {
  return _then(_CountryCode(
countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,dialCode: null == dialCode ? _self.dialCode : dialCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
