// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shareholders.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Shareholders {

 int get id; int get businessId; String get name; bool get verified; String get designation; String? get bvn; String? get phone; String? get createdAt; String? get address;
/// Create a copy of Shareholders
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShareholdersCopyWith<Shareholders> get copyWith => _$ShareholdersCopyWithImpl<Shareholders>(this as Shareholders, _$identity);

  /// Serializes this Shareholders to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Shareholders&&(identical(other.id, id) || other.id == id)&&(identical(other.businessId, businessId) || other.businessId == businessId)&&(identical(other.name, name) || other.name == name)&&(identical(other.verified, verified) || other.verified == verified)&&(identical(other.designation, designation) || other.designation == designation)&&(identical(other.bvn, bvn) || other.bvn == bvn)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,businessId,name,verified,designation,bvn,phone,createdAt,address);

@override
String toString() {
  return 'Shareholders(id: $id, businessId: $businessId, name: $name, verified: $verified, designation: $designation, bvn: $bvn, phone: $phone, createdAt: $createdAt, address: $address)';
}


}

/// @nodoc
abstract mixin class $ShareholdersCopyWith<$Res>  {
  factory $ShareholdersCopyWith(Shareholders value, $Res Function(Shareholders) _then) = _$ShareholdersCopyWithImpl;
@useResult
$Res call({
 int id, int businessId, String name, bool verified, String designation, String? bvn, String? phone, String? createdAt, String? address
});




}
/// @nodoc
class _$ShareholdersCopyWithImpl<$Res>
    implements $ShareholdersCopyWith<$Res> {
  _$ShareholdersCopyWithImpl(this._self, this._then);

  final Shareholders _self;
  final $Res Function(Shareholders) _then;

/// Create a copy of Shareholders
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? businessId = null,Object? name = null,Object? verified = null,Object? designation = null,Object? bvn = freezed,Object? phone = freezed,Object? createdAt = freezed,Object? address = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,businessId: null == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,verified: null == verified ? _self.verified : verified // ignore: cast_nullable_to_non_nullable
as bool,designation: null == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String,bvn: freezed == bvn ? _self.bvn : bvn // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Shareholders].
extension ShareholdersPatterns on Shareholders {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Shareholders value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Shareholders() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Shareholders value)  $default,){
final _that = this;
switch (_that) {
case _Shareholders():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Shareholders value)?  $default,){
final _that = this;
switch (_that) {
case _Shareholders() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int businessId,  String name,  bool verified,  String designation,  String? bvn,  String? phone,  String? createdAt,  String? address)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Shareholders() when $default != null:
return $default(_that.id,_that.businessId,_that.name,_that.verified,_that.designation,_that.bvn,_that.phone,_that.createdAt,_that.address);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int businessId,  String name,  bool verified,  String designation,  String? bvn,  String? phone,  String? createdAt,  String? address)  $default,) {final _that = this;
switch (_that) {
case _Shareholders():
return $default(_that.id,_that.businessId,_that.name,_that.verified,_that.designation,_that.bvn,_that.phone,_that.createdAt,_that.address);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int businessId,  String name,  bool verified,  String designation,  String? bvn,  String? phone,  String? createdAt,  String? address)?  $default,) {final _that = this;
switch (_that) {
case _Shareholders() when $default != null:
return $default(_that.id,_that.businessId,_that.name,_that.verified,_that.designation,_that.bvn,_that.phone,_that.createdAt,_that.address);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Shareholders implements Shareholders {
  const _Shareholders({required this.id, required this.businessId, required this.name, this.verified = false, this.designation = "WITNESS", this.bvn, this.phone, this.createdAt, this.address});
  factory _Shareholders.fromJson(Map<String, dynamic> json) => _$ShareholdersFromJson(json);

@override final  int id;
@override final  int businessId;
@override final  String name;
@override@JsonKey() final  bool verified;
@override@JsonKey() final  String designation;
@override final  String? bvn;
@override final  String? phone;
@override final  String? createdAt;
@override final  String? address;

/// Create a copy of Shareholders
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShareholdersCopyWith<_Shareholders> get copyWith => __$ShareholdersCopyWithImpl<_Shareholders>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShareholdersToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Shareholders&&(identical(other.id, id) || other.id == id)&&(identical(other.businessId, businessId) || other.businessId == businessId)&&(identical(other.name, name) || other.name == name)&&(identical(other.verified, verified) || other.verified == verified)&&(identical(other.designation, designation) || other.designation == designation)&&(identical(other.bvn, bvn) || other.bvn == bvn)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,businessId,name,verified,designation,bvn,phone,createdAt,address);

@override
String toString() {
  return 'Shareholders(id: $id, businessId: $businessId, name: $name, verified: $verified, designation: $designation, bvn: $bvn, phone: $phone, createdAt: $createdAt, address: $address)';
}


}

/// @nodoc
abstract mixin class _$ShareholdersCopyWith<$Res> implements $ShareholdersCopyWith<$Res> {
  factory _$ShareholdersCopyWith(_Shareholders value, $Res Function(_Shareholders) _then) = __$ShareholdersCopyWithImpl;
@override @useResult
$Res call({
 int id, int businessId, String name, bool verified, String designation, String? bvn, String? phone, String? createdAt, String? address
});




}
/// @nodoc
class __$ShareholdersCopyWithImpl<$Res>
    implements _$ShareholdersCopyWith<$Res> {
  __$ShareholdersCopyWithImpl(this._self, this._then);

  final _Shareholders _self;
  final $Res Function(_Shareholders) _then;

/// Create a copy of Shareholders
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? businessId = null,Object? name = null,Object? verified = null,Object? designation = null,Object? bvn = freezed,Object? phone = freezed,Object? createdAt = freezed,Object? address = freezed,}) {
  return _then(_Shareholders(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,businessId: null == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,verified: null == verified ? _self.verified : verified // ignore: cast_nullable_to_non_nullable
as bool,designation: null == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String,bvn: freezed == bvn ? _self.bvn : bvn // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
