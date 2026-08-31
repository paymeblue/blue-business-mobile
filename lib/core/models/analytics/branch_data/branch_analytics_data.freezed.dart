// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branch_analytics_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BranchAnalyticsData {

 AnalyticsItem get transaction;
/// Create a copy of BranchAnalyticsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BranchAnalyticsDataCopyWith<BranchAnalyticsData> get copyWith => _$BranchAnalyticsDataCopyWithImpl<BranchAnalyticsData>(this as BranchAnalyticsData, _$identity);

  /// Serializes this BranchAnalyticsData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BranchAnalyticsData&&(identical(other.transaction, transaction) || other.transaction == transaction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transaction);

@override
String toString() {
  return 'BranchAnalyticsData(transaction: $transaction)';
}


}

/// @nodoc
abstract mixin class $BranchAnalyticsDataCopyWith<$Res>  {
  factory $BranchAnalyticsDataCopyWith(BranchAnalyticsData value, $Res Function(BranchAnalyticsData) _then) = _$BranchAnalyticsDataCopyWithImpl;
@useResult
$Res call({
 AnalyticsItem transaction
});


$AnalyticsItemCopyWith<$Res> get transaction;

}
/// @nodoc
class _$BranchAnalyticsDataCopyWithImpl<$Res>
    implements $BranchAnalyticsDataCopyWith<$Res> {
  _$BranchAnalyticsDataCopyWithImpl(this._self, this._then);

  final BranchAnalyticsData _self;
  final $Res Function(BranchAnalyticsData) _then;

/// Create a copy of BranchAnalyticsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transaction = null,}) {
  return _then(_self.copyWith(
transaction: null == transaction ? _self.transaction : transaction // ignore: cast_nullable_to_non_nullable
as AnalyticsItem,
  ));
}
/// Create a copy of BranchAnalyticsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnalyticsItemCopyWith<$Res> get transaction {
  
  return $AnalyticsItemCopyWith<$Res>(_self.transaction, (value) {
    return _then(_self.copyWith(transaction: value));
  });
}
}


/// Adds pattern-matching-related methods to [BranchAnalyticsData].
extension BranchAnalyticsDataPatterns on BranchAnalyticsData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BranchAnalyticsData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BranchAnalyticsData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BranchAnalyticsData value)  $default,){
final _that = this;
switch (_that) {
case _BranchAnalyticsData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BranchAnalyticsData value)?  $default,){
final _that = this;
switch (_that) {
case _BranchAnalyticsData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AnalyticsItem transaction)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BranchAnalyticsData() when $default != null:
return $default(_that.transaction);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AnalyticsItem transaction)  $default,) {final _that = this;
switch (_that) {
case _BranchAnalyticsData():
return $default(_that.transaction);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AnalyticsItem transaction)?  $default,) {final _that = this;
switch (_that) {
case _BranchAnalyticsData() when $default != null:
return $default(_that.transaction);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BranchAnalyticsData implements BranchAnalyticsData {
  const _BranchAnalyticsData({required this.transaction});
  factory _BranchAnalyticsData.fromJson(Map<String, dynamic> json) => _$BranchAnalyticsDataFromJson(json);

@override final  AnalyticsItem transaction;

/// Create a copy of BranchAnalyticsData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BranchAnalyticsDataCopyWith<_BranchAnalyticsData> get copyWith => __$BranchAnalyticsDataCopyWithImpl<_BranchAnalyticsData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BranchAnalyticsDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BranchAnalyticsData&&(identical(other.transaction, transaction) || other.transaction == transaction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transaction);

@override
String toString() {
  return 'BranchAnalyticsData(transaction: $transaction)';
}


}

/// @nodoc
abstract mixin class _$BranchAnalyticsDataCopyWith<$Res> implements $BranchAnalyticsDataCopyWith<$Res> {
  factory _$BranchAnalyticsDataCopyWith(_BranchAnalyticsData value, $Res Function(_BranchAnalyticsData) _then) = __$BranchAnalyticsDataCopyWithImpl;
@override @useResult
$Res call({
 AnalyticsItem transaction
});


@override $AnalyticsItemCopyWith<$Res> get transaction;

}
/// @nodoc
class __$BranchAnalyticsDataCopyWithImpl<$Res>
    implements _$BranchAnalyticsDataCopyWith<$Res> {
  __$BranchAnalyticsDataCopyWithImpl(this._self, this._then);

  final _BranchAnalyticsData _self;
  final $Res Function(_BranchAnalyticsData) _then;

/// Create a copy of BranchAnalyticsData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transaction = null,}) {
  return _then(_BranchAnalyticsData(
transaction: null == transaction ? _self.transaction : transaction // ignore: cast_nullable_to_non_nullable
as AnalyticsItem,
  ));
}

/// Create a copy of BranchAnalyticsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnalyticsItemCopyWith<$Res> get transaction {
  
  return $AnalyticsItemCopyWith<$Res>(_self.transaction, (value) {
    return _then(_self.copyWith(transaction: value));
  });
}
}

// dart format on
