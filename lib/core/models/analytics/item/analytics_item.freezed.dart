// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analytics_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AnalyticsItem {

 String get total; String get current; String get previous;
/// Create a copy of AnalyticsItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnalyticsItemCopyWith<AnalyticsItem> get copyWith => _$AnalyticsItemCopyWithImpl<AnalyticsItem>(this as AnalyticsItem, _$identity);

  /// Serializes this AnalyticsItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnalyticsItem&&(identical(other.total, total) || other.total == total)&&(identical(other.current, current) || other.current == current)&&(identical(other.previous, previous) || other.previous == previous));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,current,previous);

@override
String toString() {
  return 'AnalyticsItem(total: $total, current: $current, previous: $previous)';
}


}

/// @nodoc
abstract mixin class $AnalyticsItemCopyWith<$Res>  {
  factory $AnalyticsItemCopyWith(AnalyticsItem value, $Res Function(AnalyticsItem) _then) = _$AnalyticsItemCopyWithImpl;
@useResult
$Res call({
 String total, String current, String previous
});




}
/// @nodoc
class _$AnalyticsItemCopyWithImpl<$Res>
    implements $AnalyticsItemCopyWith<$Res> {
  _$AnalyticsItemCopyWithImpl(this._self, this._then);

  final AnalyticsItem _self;
  final $Res Function(AnalyticsItem) _then;

/// Create a copy of AnalyticsItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? current = null,Object? previous = null,}) {
  return _then(_self.copyWith(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as String,current: null == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as String,previous: null == previous ? _self.previous : previous // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AnalyticsItem].
extension AnalyticsItemPatterns on AnalyticsItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnalyticsItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnalyticsItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnalyticsItem value)  $default,){
final _that = this;
switch (_that) {
case _AnalyticsItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnalyticsItem value)?  $default,){
final _that = this;
switch (_that) {
case _AnalyticsItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String total,  String current,  String previous)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnalyticsItem() when $default != null:
return $default(_that.total,_that.current,_that.previous);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String total,  String current,  String previous)  $default,) {final _that = this;
switch (_that) {
case _AnalyticsItem():
return $default(_that.total,_that.current,_that.previous);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String total,  String current,  String previous)?  $default,) {final _that = this;
switch (_that) {
case _AnalyticsItem() when $default != null:
return $default(_that.total,_that.current,_that.previous);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnalyticsItem implements AnalyticsItem {
  const _AnalyticsItem({this.total = "0.00", this.current = "0.00", this.previous = "0.00"});
  factory _AnalyticsItem.fromJson(Map<String, dynamic> json) => _$AnalyticsItemFromJson(json);

@override@JsonKey() final  String total;
@override@JsonKey() final  String current;
@override@JsonKey() final  String previous;

/// Create a copy of AnalyticsItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnalyticsItemCopyWith<_AnalyticsItem> get copyWith => __$AnalyticsItemCopyWithImpl<_AnalyticsItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnalyticsItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnalyticsItem&&(identical(other.total, total) || other.total == total)&&(identical(other.current, current) || other.current == current)&&(identical(other.previous, previous) || other.previous == previous));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,current,previous);

@override
String toString() {
  return 'AnalyticsItem(total: $total, current: $current, previous: $previous)';
}


}

/// @nodoc
abstract mixin class _$AnalyticsItemCopyWith<$Res> implements $AnalyticsItemCopyWith<$Res> {
  factory _$AnalyticsItemCopyWith(_AnalyticsItem value, $Res Function(_AnalyticsItem) _then) = __$AnalyticsItemCopyWithImpl;
@override @useResult
$Res call({
 String total, String current, String previous
});




}
/// @nodoc
class __$AnalyticsItemCopyWithImpl<$Res>
    implements _$AnalyticsItemCopyWith<$Res> {
  __$AnalyticsItemCopyWithImpl(this._self, this._then);

  final _AnalyticsItem _self;
  final $Res Function(_AnalyticsItem) _then;

/// Create a copy of AnalyticsItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? current = null,Object? previous = null,}) {
  return _then(_AnalyticsItem(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as String,current: null == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as String,previous: null == previous ? _self.previous : previous // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
