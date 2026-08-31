// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spending_analytics_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SpendingAnalyticsData {

 String get desktopSum; String get mobileSum;
/// Create a copy of SpendingAnalyticsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpendingAnalyticsDataCopyWith<SpendingAnalyticsData> get copyWith => _$SpendingAnalyticsDataCopyWithImpl<SpendingAnalyticsData>(this as SpendingAnalyticsData, _$identity);

  /// Serializes this SpendingAnalyticsData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpendingAnalyticsData&&(identical(other.desktopSum, desktopSum) || other.desktopSum == desktopSum)&&(identical(other.mobileSum, mobileSum) || other.mobileSum == mobileSum));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,desktopSum,mobileSum);

@override
String toString() {
  return 'SpendingAnalyticsData(desktopSum: $desktopSum, mobileSum: $mobileSum)';
}


}

/// @nodoc
abstract mixin class $SpendingAnalyticsDataCopyWith<$Res>  {
  factory $SpendingAnalyticsDataCopyWith(SpendingAnalyticsData value, $Res Function(SpendingAnalyticsData) _then) = _$SpendingAnalyticsDataCopyWithImpl;
@useResult
$Res call({
 String desktopSum, String mobileSum
});




}
/// @nodoc
class _$SpendingAnalyticsDataCopyWithImpl<$Res>
    implements $SpendingAnalyticsDataCopyWith<$Res> {
  _$SpendingAnalyticsDataCopyWithImpl(this._self, this._then);

  final SpendingAnalyticsData _self;
  final $Res Function(SpendingAnalyticsData) _then;

/// Create a copy of SpendingAnalyticsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? desktopSum = null,Object? mobileSum = null,}) {
  return _then(_self.copyWith(
desktopSum: null == desktopSum ? _self.desktopSum : desktopSum // ignore: cast_nullable_to_non_nullable
as String,mobileSum: null == mobileSum ? _self.mobileSum : mobileSum // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SpendingAnalyticsData].
extension SpendingAnalyticsDataPatterns on SpendingAnalyticsData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpendingAnalyticsData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpendingAnalyticsData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpendingAnalyticsData value)  $default,){
final _that = this;
switch (_that) {
case _SpendingAnalyticsData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpendingAnalyticsData value)?  $default,){
final _that = this;
switch (_that) {
case _SpendingAnalyticsData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String desktopSum,  String mobileSum)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpendingAnalyticsData() when $default != null:
return $default(_that.desktopSum,_that.mobileSum);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String desktopSum,  String mobileSum)  $default,) {final _that = this;
switch (_that) {
case _SpendingAnalyticsData():
return $default(_that.desktopSum,_that.mobileSum);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String desktopSum,  String mobileSum)?  $default,) {final _that = this;
switch (_that) {
case _SpendingAnalyticsData() when $default != null:
return $default(_that.desktopSum,_that.mobileSum);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SpendingAnalyticsData implements SpendingAnalyticsData {
  const _SpendingAnalyticsData({this.desktopSum = "0.0", this.mobileSum = "0.0"});
  factory _SpendingAnalyticsData.fromJson(Map<String, dynamic> json) => _$SpendingAnalyticsDataFromJson(json);

@override@JsonKey() final  String desktopSum;
@override@JsonKey() final  String mobileSum;

/// Create a copy of SpendingAnalyticsData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpendingAnalyticsDataCopyWith<_SpendingAnalyticsData> get copyWith => __$SpendingAnalyticsDataCopyWithImpl<_SpendingAnalyticsData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpendingAnalyticsDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpendingAnalyticsData&&(identical(other.desktopSum, desktopSum) || other.desktopSum == desktopSum)&&(identical(other.mobileSum, mobileSum) || other.mobileSum == mobileSum));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,desktopSum,mobileSum);

@override
String toString() {
  return 'SpendingAnalyticsData(desktopSum: $desktopSum, mobileSum: $mobileSum)';
}


}

/// @nodoc
abstract mixin class _$SpendingAnalyticsDataCopyWith<$Res> implements $SpendingAnalyticsDataCopyWith<$Res> {
  factory _$SpendingAnalyticsDataCopyWith(_SpendingAnalyticsData value, $Res Function(_SpendingAnalyticsData) _then) = __$SpendingAnalyticsDataCopyWithImpl;
@override @useResult
$Res call({
 String desktopSum, String mobileSum
});




}
/// @nodoc
class __$SpendingAnalyticsDataCopyWithImpl<$Res>
    implements _$SpendingAnalyticsDataCopyWith<$Res> {
  __$SpendingAnalyticsDataCopyWithImpl(this._self, this._then);

  final _SpendingAnalyticsData _self;
  final $Res Function(_SpendingAnalyticsData) _then;

/// Create a copy of SpendingAnalyticsData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? desktopSum = null,Object? mobileSum = null,}) {
  return _then(_SpendingAnalyticsData(
desktopSum: null == desktopSum ? _self.desktopSum : desktopSum // ignore: cast_nullable_to_non_nullable
as String,mobileSum: null == mobileSum ? _self.mobileSum : mobileSum // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
