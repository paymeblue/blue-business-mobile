// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recently_paid_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RecentlyPaidData {

 List<RecentlyPaidItem> get beneficiaries;
/// Create a copy of RecentlyPaidData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecentlyPaidDataCopyWith<RecentlyPaidData> get copyWith => _$RecentlyPaidDataCopyWithImpl<RecentlyPaidData>(this as RecentlyPaidData, _$identity);

  /// Serializes this RecentlyPaidData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecentlyPaidData&&const DeepCollectionEquality().equals(other.beneficiaries, beneficiaries));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(beneficiaries));

@override
String toString() {
  return 'RecentlyPaidData(beneficiaries: $beneficiaries)';
}


}

/// @nodoc
abstract mixin class $RecentlyPaidDataCopyWith<$Res>  {
  factory $RecentlyPaidDataCopyWith(RecentlyPaidData value, $Res Function(RecentlyPaidData) _then) = _$RecentlyPaidDataCopyWithImpl;
@useResult
$Res call({
 List<RecentlyPaidItem> beneficiaries
});




}
/// @nodoc
class _$RecentlyPaidDataCopyWithImpl<$Res>
    implements $RecentlyPaidDataCopyWith<$Res> {
  _$RecentlyPaidDataCopyWithImpl(this._self, this._then);

  final RecentlyPaidData _self;
  final $Res Function(RecentlyPaidData) _then;

/// Create a copy of RecentlyPaidData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? beneficiaries = null,}) {
  return _then(_self.copyWith(
beneficiaries: null == beneficiaries ? _self.beneficiaries : beneficiaries // ignore: cast_nullable_to_non_nullable
as List<RecentlyPaidItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [RecentlyPaidData].
extension RecentlyPaidDataPatterns on RecentlyPaidData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecentlyPaidData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecentlyPaidData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecentlyPaidData value)  $default,){
final _that = this;
switch (_that) {
case _RecentlyPaidData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecentlyPaidData value)?  $default,){
final _that = this;
switch (_that) {
case _RecentlyPaidData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<RecentlyPaidItem> beneficiaries)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecentlyPaidData() when $default != null:
return $default(_that.beneficiaries);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<RecentlyPaidItem> beneficiaries)  $default,) {final _that = this;
switch (_that) {
case _RecentlyPaidData():
return $default(_that.beneficiaries);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<RecentlyPaidItem> beneficiaries)?  $default,) {final _that = this;
switch (_that) {
case _RecentlyPaidData() when $default != null:
return $default(_that.beneficiaries);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecentlyPaidData implements RecentlyPaidData {
  const _RecentlyPaidData({required final  List<RecentlyPaidItem> beneficiaries}): _beneficiaries = beneficiaries;
  factory _RecentlyPaidData.fromJson(Map<String, dynamic> json) => _$RecentlyPaidDataFromJson(json);

 final  List<RecentlyPaidItem> _beneficiaries;
@override List<RecentlyPaidItem> get beneficiaries {
  if (_beneficiaries is EqualUnmodifiableListView) return _beneficiaries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_beneficiaries);
}


/// Create a copy of RecentlyPaidData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecentlyPaidDataCopyWith<_RecentlyPaidData> get copyWith => __$RecentlyPaidDataCopyWithImpl<_RecentlyPaidData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecentlyPaidDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecentlyPaidData&&const DeepCollectionEquality().equals(other._beneficiaries, _beneficiaries));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_beneficiaries));

@override
String toString() {
  return 'RecentlyPaidData(beneficiaries: $beneficiaries)';
}


}

/// @nodoc
abstract mixin class _$RecentlyPaidDataCopyWith<$Res> implements $RecentlyPaidDataCopyWith<$Res> {
  factory _$RecentlyPaidDataCopyWith(_RecentlyPaidData value, $Res Function(_RecentlyPaidData) _then) = __$RecentlyPaidDataCopyWithImpl;
@override @useResult
$Res call({
 List<RecentlyPaidItem> beneficiaries
});




}
/// @nodoc
class __$RecentlyPaidDataCopyWithImpl<$Res>
    implements _$RecentlyPaidDataCopyWith<$Res> {
  __$RecentlyPaidDataCopyWithImpl(this._self, this._then);

  final _RecentlyPaidData _self;
  final $Res Function(_RecentlyPaidData) _then;

/// Create a copy of RecentlyPaidData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? beneficiaries = null,}) {
  return _then(_RecentlyPaidData(
beneficiaries: null == beneficiaries ? _self._beneficiaries : beneficiaries // ignore: cast_nullable_to_non_nullable
as List<RecentlyPaidItem>,
  ));
}


}

// dart format on
