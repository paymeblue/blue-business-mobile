// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monthly_line_chart_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MonthlyLineChartData {

 String get label; double get amount;
/// Create a copy of MonthlyLineChartData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MonthlyLineChartDataCopyWith<MonthlyLineChartData> get copyWith => _$MonthlyLineChartDataCopyWithImpl<MonthlyLineChartData>(this as MonthlyLineChartData, _$identity);

  /// Serializes this MonthlyLineChartData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MonthlyLineChartData&&(identical(other.label, label) || other.label == label)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,amount);

@override
String toString() {
  return 'MonthlyLineChartData(label: $label, amount: $amount)';
}


}

/// @nodoc
abstract mixin class $MonthlyLineChartDataCopyWith<$Res>  {
  factory $MonthlyLineChartDataCopyWith(MonthlyLineChartData value, $Res Function(MonthlyLineChartData) _then) = _$MonthlyLineChartDataCopyWithImpl;
@useResult
$Res call({
 String label, double amount
});




}
/// @nodoc
class _$MonthlyLineChartDataCopyWithImpl<$Res>
    implements $MonthlyLineChartDataCopyWith<$Res> {
  _$MonthlyLineChartDataCopyWithImpl(this._self, this._then);

  final MonthlyLineChartData _self;
  final $Res Function(MonthlyLineChartData) _then;

/// Create a copy of MonthlyLineChartData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = null,Object? amount = null,}) {
  return _then(_self.copyWith(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [MonthlyLineChartData].
extension MonthlyLineChartDataPatterns on MonthlyLineChartData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MonthlyLineChartData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MonthlyLineChartData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MonthlyLineChartData value)  $default,){
final _that = this;
switch (_that) {
case _MonthlyLineChartData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MonthlyLineChartData value)?  $default,){
final _that = this;
switch (_that) {
case _MonthlyLineChartData() when $default != null:
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
case _MonthlyLineChartData() when $default != null:
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
case _MonthlyLineChartData():
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
case _MonthlyLineChartData() when $default != null:
return $default(_that.label,_that.amount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MonthlyLineChartData implements MonthlyLineChartData {
  const _MonthlyLineChartData({required this.label, required this.amount});
  factory _MonthlyLineChartData.fromJson(Map<String, dynamic> json) => _$MonthlyLineChartDataFromJson(json);

@override final  String label;
@override final  double amount;

/// Create a copy of MonthlyLineChartData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MonthlyLineChartDataCopyWith<_MonthlyLineChartData> get copyWith => __$MonthlyLineChartDataCopyWithImpl<_MonthlyLineChartData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MonthlyLineChartDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MonthlyLineChartData&&(identical(other.label, label) || other.label == label)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,amount);

@override
String toString() {
  return 'MonthlyLineChartData(label: $label, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$MonthlyLineChartDataCopyWith<$Res> implements $MonthlyLineChartDataCopyWith<$Res> {
  factory _$MonthlyLineChartDataCopyWith(_MonthlyLineChartData value, $Res Function(_MonthlyLineChartData) _then) = __$MonthlyLineChartDataCopyWithImpl;
@override @useResult
$Res call({
 String label, double amount
});




}
/// @nodoc
class __$MonthlyLineChartDataCopyWithImpl<$Res>
    implements _$MonthlyLineChartDataCopyWith<$Res> {
  __$MonthlyLineChartDataCopyWithImpl(this._self, this._then);

  final _MonthlyLineChartData _self;
  final $Res Function(_MonthlyLineChartData) _then;

/// Create a copy of MonthlyLineChartData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = null,Object? amount = null,}) {
  return _then(_MonthlyLineChartData(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
