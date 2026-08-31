// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reason.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Reason {

 int get id; String get content;
/// Create a copy of Reason
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReasonCopyWith<Reason> get copyWith => _$ReasonCopyWithImpl<Reason>(this as Reason, _$identity);

  /// Serializes this Reason to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Reason&&(identical(other.id, id) || other.id == id)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,content);

@override
String toString() {
  return 'Reason(id: $id, content: $content)';
}


}

/// @nodoc
abstract mixin class $ReasonCopyWith<$Res>  {
  factory $ReasonCopyWith(Reason value, $Res Function(Reason) _then) = _$ReasonCopyWithImpl;
@useResult
$Res call({
 int id, String content
});




}
/// @nodoc
class _$ReasonCopyWithImpl<$Res>
    implements $ReasonCopyWith<$Res> {
  _$ReasonCopyWithImpl(this._self, this._then);

  final Reason _self;
  final $Res Function(Reason) _then;

/// Create a copy of Reason
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? content = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Reason].
extension ReasonPatterns on Reason {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Reason value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Reason() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Reason value)  $default,){
final _that = this;
switch (_that) {
case _Reason():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Reason value)?  $default,){
final _that = this;
switch (_that) {
case _Reason() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String content)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Reason() when $default != null:
return $default(_that.id,_that.content);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String content)  $default,) {final _that = this;
switch (_that) {
case _Reason():
return $default(_that.id,_that.content);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String content)?  $default,) {final _that = this;
switch (_that) {
case _Reason() when $default != null:
return $default(_that.id,_that.content);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Reason implements Reason {
  const _Reason({required this.id, required this.content});
  factory _Reason.fromJson(Map<String, dynamic> json) => _$ReasonFromJson(json);

@override final  int id;
@override final  String content;

/// Create a copy of Reason
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReasonCopyWith<_Reason> get copyWith => __$ReasonCopyWithImpl<_Reason>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReasonToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Reason&&(identical(other.id, id) || other.id == id)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,content);

@override
String toString() {
  return 'Reason(id: $id, content: $content)';
}


}

/// @nodoc
abstract mixin class _$ReasonCopyWith<$Res> implements $ReasonCopyWith<$Res> {
  factory _$ReasonCopyWith(_Reason value, $Res Function(_Reason) _then) = __$ReasonCopyWithImpl;
@override @useResult
$Res call({
 int id, String content
});




}
/// @nodoc
class __$ReasonCopyWithImpl<$Res>
    implements _$ReasonCopyWith<$Res> {
  __$ReasonCopyWithImpl(this._self, this._then);

  final _Reason _self;
  final $Res Function(_Reason) _then;

/// Create a copy of Reason
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? content = null,}) {
  return _then(_Reason(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
