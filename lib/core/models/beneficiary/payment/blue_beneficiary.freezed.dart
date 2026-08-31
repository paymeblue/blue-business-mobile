// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blue_beneficiary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BlueBeneficiary {

 int get id; String get name; String get identifier;
/// Create a copy of BlueBeneficiary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BlueBeneficiaryCopyWith<BlueBeneficiary> get copyWith => _$BlueBeneficiaryCopyWithImpl<BlueBeneficiary>(this as BlueBeneficiary, _$identity);

  /// Serializes this BlueBeneficiary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BlueBeneficiary&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.identifier, identifier) || other.identifier == identifier));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,identifier);

@override
String toString() {
  return 'BlueBeneficiary(id: $id, name: $name, identifier: $identifier)';
}


}

/// @nodoc
abstract mixin class $BlueBeneficiaryCopyWith<$Res>  {
  factory $BlueBeneficiaryCopyWith(BlueBeneficiary value, $Res Function(BlueBeneficiary) _then) = _$BlueBeneficiaryCopyWithImpl;
@useResult
$Res call({
 int id, String name, String identifier
});




}
/// @nodoc
class _$BlueBeneficiaryCopyWithImpl<$Res>
    implements $BlueBeneficiaryCopyWith<$Res> {
  _$BlueBeneficiaryCopyWithImpl(this._self, this._then);

  final BlueBeneficiary _self;
  final $Res Function(BlueBeneficiary) _then;

/// Create a copy of BlueBeneficiary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? identifier = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,identifier: null == identifier ? _self.identifier : identifier // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BlueBeneficiary].
extension BlueBeneficiaryPatterns on BlueBeneficiary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BlueBeneficiary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BlueBeneficiary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BlueBeneficiary value)  $default,){
final _that = this;
switch (_that) {
case _BlueBeneficiary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BlueBeneficiary value)?  $default,){
final _that = this;
switch (_that) {
case _BlueBeneficiary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String identifier)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BlueBeneficiary() when $default != null:
return $default(_that.id,_that.name,_that.identifier);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String identifier)  $default,) {final _that = this;
switch (_that) {
case _BlueBeneficiary():
return $default(_that.id,_that.name,_that.identifier);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String identifier)?  $default,) {final _that = this;
switch (_that) {
case _BlueBeneficiary() when $default != null:
return $default(_that.id,_that.name,_that.identifier);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BlueBeneficiary implements BlueBeneficiary {
  const _BlueBeneficiary({required this.id, required this.name, required this.identifier});
  factory _BlueBeneficiary.fromJson(Map<String, dynamic> json) => _$BlueBeneficiaryFromJson(json);

@override final  int id;
@override final  String name;
@override final  String identifier;

/// Create a copy of BlueBeneficiary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BlueBeneficiaryCopyWith<_BlueBeneficiary> get copyWith => __$BlueBeneficiaryCopyWithImpl<_BlueBeneficiary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BlueBeneficiaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BlueBeneficiary&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.identifier, identifier) || other.identifier == identifier));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,identifier);

@override
String toString() {
  return 'BlueBeneficiary(id: $id, name: $name, identifier: $identifier)';
}


}

/// @nodoc
abstract mixin class _$BlueBeneficiaryCopyWith<$Res> implements $BlueBeneficiaryCopyWith<$Res> {
  factory _$BlueBeneficiaryCopyWith(_BlueBeneficiary value, $Res Function(_BlueBeneficiary) _then) = __$BlueBeneficiaryCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String identifier
});




}
/// @nodoc
class __$BlueBeneficiaryCopyWithImpl<$Res>
    implements _$BlueBeneficiaryCopyWith<$Res> {
  __$BlueBeneficiaryCopyWithImpl(this._self, this._then);

  final _BlueBeneficiary _self;
  final $Res Function(_BlueBeneficiary) _then;

/// Create a copy of BlueBeneficiary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? identifier = null,}) {
  return _then(_BlueBeneficiary(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,identifier: null == identifier ? _self.identifier : identifier // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
