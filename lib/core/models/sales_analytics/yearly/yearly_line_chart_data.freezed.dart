// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'yearly_line_chart_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$YearlyLineChartData {

 String get label; double get amount;
/// Create a copy of YearlyLineChartData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$YearlyLineChartDataCopyWith<YearlyLineChartData> get copyWith => _$YearlyLineChartDataCopyWithImpl<YearlyLineChartData>(this as YearlyLineChartData, _$identity);

  /// Serializes this YearlyLineChartData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is YearlyLineChartData&&(identical(other.label, label) || other.label == label)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,amount);

@override
String toString() {
  return 'YearlyLineChartData(label: $label, amount: $amount)';
}


}

/// @nodoc
abstract mixin class $YearlyLineChartDataCopyWith<$Res>  {
  factory $YearlyLineChartDataCopyWith(YearlyLineChartData value, $Res Function(YearlyLineChartData) _then) = _$YearlyLineChartDataCopyWithImpl;
@useResult
$Res call({
 String label, double amount
});




}
/// @nodoc
class _$YearlyLineChartDataCopyWithImpl<$Res>
    implements $YearlyLineChartDataCopyWith<$Res> {
  _$YearlyLineChartDataCopyWithImpl(this._self, this._then);

  final YearlyLineChartData _self;
  final $Res Function(YearlyLineChartData) _then;

/// Create a copy of YearlyLineChartData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = null,Object? amount = null,}) {
  return _then(_self.copyWith(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [YearlyLineChartData].
extension YearlyLineChartDataPatterns on YearlyLineChartData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _YearlyLineChartData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _YearlyLineChartData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _YearlyLineChartData value)  $default,){
final _that = this;
switch (_that) {
case _YearlyLineChartData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _YearlyLineChartData value)?  $default,){
final _that = this;
switch (_that) {
case _YearlyLineChartData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String label,  double amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _YearlyLineChartData() when $default != null:
return $default(_that.label,_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String label,  double amount)  $default,) {final _that = this;
switch (_that) {
case _YearlyLineChartData():
return $default(_that.label,_that.amount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String label,  double amount)?  $default,) {final _that = this;
switch (_that) {
case _YearlyLineChartData() when $default != null:
return $default(_that.label,_that.amount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _YearlyLineChartData implements YearlyLineChartData {
  const _YearlyLineChartData({required this.label, required this.amount});
  factory _YearlyLineChartData.fromJson(Map<String, dynamic> json) => _$YearlyLineChartDataFromJson(json);

@override final  String label;
@override final  double amount;

/// Create a copy of YearlyLineChartData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$YearlyLineChartDataCopyWith<_YearlyLineChartData> get copyWith => __$YearlyLineChartDataCopyWithImpl<_YearlyLineChartData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$YearlyLineChartDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _YearlyLineChartData&&(identical(other.label, label) || other.label == label)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,amount);

@override
String toString() {
  return 'YearlyLineChartData(label: $label, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$YearlyLineChartDataCopyWith<$Res> implements $YearlyLineChartDataCopyWith<$Res> {
  factory _$YearlyLineChartDataCopyWith(_YearlyLineChartData value, $Res Function(_YearlyLineChartData) _then) = __$YearlyLineChartDataCopyWithImpl;
@override @useResult
$Res call({
 String label, double amount
});




}
/// @nodoc
class __$YearlyLineChartDataCopyWithImpl<$Res>
    implements _$YearlyLineChartDataCopyWith<$Res> {
  __$YearlyLineChartDataCopyWithImpl(this._self, this._then);

  final _YearlyLineChartData _self;
  final $Res Function(_YearlyLineChartData) _then;

/// Create a copy of YearlyLineChartData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = null,Object? amount = null,}) {
  return _then(_YearlyLineChartData(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
