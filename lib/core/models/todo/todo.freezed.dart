// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TodoOption {

 String get title; String get status; String? get route; Map<String, dynamic>? get data;
/// Create a copy of TodoOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodoOptionCopyWith<TodoOption> get copyWith => _$TodoOptionCopyWithImpl<TodoOption>(this as TodoOption, _$identity);

  /// Serializes this TodoOption to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoOption&&(identical(other.title, title) || other.title == title)&&(identical(other.status, status) || other.status == status)&&(identical(other.route, route) || other.route == route)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,status,route,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'TodoOption(title: $title, status: $status, route: $route, data: $data)';
}


}

/// @nodoc
abstract mixin class $TodoOptionCopyWith<$Res>  {
  factory $TodoOptionCopyWith(TodoOption value, $Res Function(TodoOption) _then) = _$TodoOptionCopyWithImpl;
@useResult
$Res call({
 String title, String status, String? route, Map<String, dynamic>? data
});




}
/// @nodoc
class _$TodoOptionCopyWithImpl<$Res>
    implements $TodoOptionCopyWith<$Res> {
  _$TodoOptionCopyWithImpl(this._self, this._then);

  final TodoOption _self;
  final $Res Function(TodoOption) _then;

/// Create a copy of TodoOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? status = null,Object? route = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,route: freezed == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [TodoOption].
extension TodoOptionPatterns on TodoOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TodoOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TodoOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TodoOption value)  $default,){
final _that = this;
switch (_that) {
case _TodoOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TodoOption value)?  $default,){
final _that = this;
switch (_that) {
case _TodoOption() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String status,  String? route,  Map<String, dynamic>? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TodoOption() when $default != null:
return $default(_that.title,_that.status,_that.route,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String status,  String? route,  Map<String, dynamic>? data)  $default,) {final _that = this;
switch (_that) {
case _TodoOption():
return $default(_that.title,_that.status,_that.route,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String status,  String? route,  Map<String, dynamic>? data)?  $default,) {final _that = this;
switch (_that) {
case _TodoOption() when $default != null:
return $default(_that.title,_that.status,_that.route,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TodoOption implements TodoOption {
  const _TodoOption({required this.title, this.status = "incomplete", this.route, final  Map<String, dynamic>? data}): _data = data;
  factory _TodoOption.fromJson(Map<String, dynamic> json) => _$TodoOptionFromJson(json);

@override final  String title;
@override@JsonKey() final  String status;
@override final  String? route;
 final  Map<String, dynamic>? _data;
@override Map<String, dynamic>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of TodoOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TodoOptionCopyWith<_TodoOption> get copyWith => __$TodoOptionCopyWithImpl<_TodoOption>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TodoOptionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TodoOption&&(identical(other.title, title) || other.title == title)&&(identical(other.status, status) || other.status == status)&&(identical(other.route, route) || other.route == route)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,status,route,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'TodoOption(title: $title, status: $status, route: $route, data: $data)';
}


}

/// @nodoc
abstract mixin class _$TodoOptionCopyWith<$Res> implements $TodoOptionCopyWith<$Res> {
  factory _$TodoOptionCopyWith(_TodoOption value, $Res Function(_TodoOption) _then) = __$TodoOptionCopyWithImpl;
@override @useResult
$Res call({
 String title, String status, String? route, Map<String, dynamic>? data
});




}
/// @nodoc
class __$TodoOptionCopyWithImpl<$Res>
    implements _$TodoOptionCopyWith<$Res> {
  __$TodoOptionCopyWithImpl(this._self, this._then);

  final _TodoOption _self;
  final $Res Function(_TodoOption) _then;

/// Create a copy of TodoOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? status = null,Object? route = freezed,Object? data = freezed,}) {
  return _then(_TodoOption(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,route: freezed == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
