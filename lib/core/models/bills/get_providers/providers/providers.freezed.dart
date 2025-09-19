// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'providers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BillProvider {

 int get id; String get name; String? get image;
/// Create a copy of BillProvider
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BillProviderCopyWith<BillProvider> get copyWith => _$BillProviderCopyWithImpl<BillProvider>(this as BillProvider, _$identity);

  /// Serializes this BillProvider to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BillProvider&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,image);

@override
String toString() {
  return 'BillProvider(id: $id, name: $name, image: $image)';
}


}

/// @nodoc
abstract mixin class $BillProviderCopyWith<$Res>  {
  factory $BillProviderCopyWith(BillProvider value, $Res Function(BillProvider) _then) = _$BillProviderCopyWithImpl;
@useResult
$Res call({
 int id, String name, String? image
});




}
/// @nodoc
class _$BillProviderCopyWithImpl<$Res>
    implements $BillProviderCopyWith<$Res> {
  _$BillProviderCopyWithImpl(this._self, this._then);

  final BillProvider _self;
  final $Res Function(BillProvider) _then;

/// Create a copy of BillProvider
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? image = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BillProvider].
extension BillProviderPatterns on BillProvider {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BillProvider value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BillProvider() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BillProvider value)  $default,){
final _that = this;
switch (_that) {
case _BillProvider():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BillProvider value)?  $default,){
final _that = this;
switch (_that) {
case _BillProvider() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String? image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BillProvider() when $default != null:
return $default(_that.id,_that.name,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String? image)  $default,) {final _that = this;
switch (_that) {
case _BillProvider():
return $default(_that.id,_that.name,_that.image);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String? image)?  $default,) {final _that = this;
switch (_that) {
case _BillProvider() when $default != null:
return $default(_that.id,_that.name,_that.image);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BillProvider implements BillProvider {
  const _BillProvider({required this.id, required this.name, this.image});
  factory _BillProvider.fromJson(Map<String, dynamic> json) => _$BillProviderFromJson(json);

@override final  int id;
@override final  String name;
@override final  String? image;

/// Create a copy of BillProvider
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BillProviderCopyWith<_BillProvider> get copyWith => __$BillProviderCopyWithImpl<_BillProvider>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BillProviderToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BillProvider&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,image);

@override
String toString() {
  return 'BillProvider(id: $id, name: $name, image: $image)';
}


}

/// @nodoc
abstract mixin class _$BillProviderCopyWith<$Res> implements $BillProviderCopyWith<$Res> {
  factory _$BillProviderCopyWith(_BillProvider value, $Res Function(_BillProvider) _then) = __$BillProviderCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String? image
});




}
/// @nodoc
class __$BillProviderCopyWithImpl<$Res>
    implements _$BillProviderCopyWith<$Res> {
  __$BillProviderCopyWithImpl(this._self, this._then);

  final _BillProvider _self;
  final $Res Function(_BillProvider) _then;

/// Create a copy of BillProvider
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? image = freezed,}) {
  return _then(_BillProvider(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
