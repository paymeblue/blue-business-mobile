// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TodoData {

 List<TodoOption> get todos;
/// Create a copy of TodoData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodoDataCopyWith<TodoData> get copyWith => _$TodoDataCopyWithImpl<TodoData>(this as TodoData, _$identity);

  /// Serializes this TodoData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoData&&const DeepCollectionEquality().equals(other.todos, todos));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(todos));

@override
String toString() {
  return 'TodoData(todos: $todos)';
}


}

/// @nodoc
abstract mixin class $TodoDataCopyWith<$Res>  {
  factory $TodoDataCopyWith(TodoData value, $Res Function(TodoData) _then) = _$TodoDataCopyWithImpl;
@useResult
$Res call({
 List<TodoOption> todos
});




}
/// @nodoc
class _$TodoDataCopyWithImpl<$Res>
    implements $TodoDataCopyWith<$Res> {
  _$TodoDataCopyWithImpl(this._self, this._then);

  final TodoData _self;
  final $Res Function(TodoData) _then;

/// Create a copy of TodoData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? todos = null,}) {
  return _then(_self.copyWith(
todos: null == todos ? _self.todos : todos // ignore: cast_nullable_to_non_nullable
as List<TodoOption>,
  ));
}

}


/// Adds pattern-matching-related methods to [TodoData].
extension TodoDataPatterns on TodoData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TodoData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TodoData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TodoData value)  $default,){
final _that = this;
switch (_that) {
case _TodoData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TodoData value)?  $default,){
final _that = this;
switch (_that) {
case _TodoData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<TodoOption> todos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TodoData() when $default != null:
return $default(_that.todos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<TodoOption> todos)  $default,) {final _that = this;
switch (_that) {
case _TodoData():
return $default(_that.todos);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<TodoOption> todos)?  $default,) {final _that = this;
switch (_that) {
case _TodoData() when $default != null:
return $default(_that.todos);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TodoData implements TodoData {
  const _TodoData({required final  List<TodoOption> todos}): _todos = todos;
  factory _TodoData.fromJson(Map<String, dynamic> json) => _$TodoDataFromJson(json);

 final  List<TodoOption> _todos;
@override List<TodoOption> get todos {
  if (_todos is EqualUnmodifiableListView) return _todos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_todos);
}


/// Create a copy of TodoData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TodoDataCopyWith<_TodoData> get copyWith => __$TodoDataCopyWithImpl<_TodoData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TodoDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TodoData&&const DeepCollectionEquality().equals(other._todos, _todos));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_todos));

@override
String toString() {
  return 'TodoData(todos: $todos)';
}


}

/// @nodoc
abstract mixin class _$TodoDataCopyWith<$Res> implements $TodoDataCopyWith<$Res> {
  factory _$TodoDataCopyWith(_TodoData value, $Res Function(_TodoData) _then) = __$TodoDataCopyWithImpl;
@override @useResult
$Res call({
 List<TodoOption> todos
});




}
/// @nodoc
class __$TodoDataCopyWithImpl<$Res>
    implements _$TodoDataCopyWith<$Res> {
  __$TodoDataCopyWithImpl(this._self, this._then);

  final _TodoData _self;
  final $Res Function(_TodoData) _then;

/// Create a copy of TodoData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? todos = null,}) {
  return _then(_TodoData(
todos: null == todos ? _self._todos : todos // ignore: cast_nullable_to_non_nullable
as List<TodoOption>,
  ));
}


}

// dart format on
