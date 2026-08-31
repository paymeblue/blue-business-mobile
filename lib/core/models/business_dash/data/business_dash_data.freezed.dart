// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_dash_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BusinessDashData {

 int get totalBranches; int get totalStaff; int get transactionVolume; String get walletBalance;
/// Create a copy of BusinessDashData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BusinessDashDataCopyWith<BusinessDashData> get copyWith => _$BusinessDashDataCopyWithImpl<BusinessDashData>(this as BusinessDashData, _$identity);

  /// Serializes this BusinessDashData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BusinessDashData&&(identical(other.totalBranches, totalBranches) || other.totalBranches == totalBranches)&&(identical(other.totalStaff, totalStaff) || other.totalStaff == totalStaff)&&(identical(other.transactionVolume, transactionVolume) || other.transactionVolume == transactionVolume)&&(identical(other.walletBalance, walletBalance) || other.walletBalance == walletBalance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalBranches,totalStaff,transactionVolume,walletBalance);

@override
String toString() {
  return 'BusinessDashData(totalBranches: $totalBranches, totalStaff: $totalStaff, transactionVolume: $transactionVolume, walletBalance: $walletBalance)';
}


}

/// @nodoc
abstract mixin class $BusinessDashDataCopyWith<$Res>  {
  factory $BusinessDashDataCopyWith(BusinessDashData value, $Res Function(BusinessDashData) _then) = _$BusinessDashDataCopyWithImpl;
@useResult
$Res call({
 int totalBranches, int totalStaff, int transactionVolume, String walletBalance
});




}
/// @nodoc
class _$BusinessDashDataCopyWithImpl<$Res>
    implements $BusinessDashDataCopyWith<$Res> {
  _$BusinessDashDataCopyWithImpl(this._self, this._then);

  final BusinessDashData _self;
  final $Res Function(BusinessDashData) _then;

/// Create a copy of BusinessDashData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalBranches = null,Object? totalStaff = null,Object? transactionVolume = null,Object? walletBalance = null,}) {
  return _then(_self.copyWith(
totalBranches: null == totalBranches ? _self.totalBranches : totalBranches // ignore: cast_nullable_to_non_nullable
as int,totalStaff: null == totalStaff ? _self.totalStaff : totalStaff // ignore: cast_nullable_to_non_nullable
as int,transactionVolume: null == transactionVolume ? _self.transactionVolume : transactionVolume // ignore: cast_nullable_to_non_nullable
as int,walletBalance: null == walletBalance ? _self.walletBalance : walletBalance // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BusinessDashData].
extension BusinessDashDataPatterns on BusinessDashData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BusinessDashData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BusinessDashData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BusinessDashData value)  $default,){
final _that = this;
switch (_that) {
case _BusinessDashData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BusinessDashData value)?  $default,){
final _that = this;
switch (_that) {
case _BusinessDashData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalBranches,  int totalStaff,  int transactionVolume,  String walletBalance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BusinessDashData() when $default != null:
return $default(_that.totalBranches,_that.totalStaff,_that.transactionVolume,_that.walletBalance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalBranches,  int totalStaff,  int transactionVolume,  String walletBalance)  $default,) {final _that = this;
switch (_that) {
case _BusinessDashData():
return $default(_that.totalBranches,_that.totalStaff,_that.transactionVolume,_that.walletBalance);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalBranches,  int totalStaff,  int transactionVolume,  String walletBalance)?  $default,) {final _that = this;
switch (_that) {
case _BusinessDashData() when $default != null:
return $default(_that.totalBranches,_that.totalStaff,_that.transactionVolume,_that.walletBalance);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BusinessDashData implements BusinessDashData {
  const _BusinessDashData({this.totalBranches = 0, this.totalStaff = 0, this.transactionVolume = 0, this.walletBalance = "0.00"});
  factory _BusinessDashData.fromJson(Map<String, dynamic> json) => _$BusinessDashDataFromJson(json);

@override@JsonKey() final  int totalBranches;
@override@JsonKey() final  int totalStaff;
@override@JsonKey() final  int transactionVolume;
@override@JsonKey() final  String walletBalance;

/// Create a copy of BusinessDashData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BusinessDashDataCopyWith<_BusinessDashData> get copyWith => __$BusinessDashDataCopyWithImpl<_BusinessDashData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BusinessDashDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BusinessDashData&&(identical(other.totalBranches, totalBranches) || other.totalBranches == totalBranches)&&(identical(other.totalStaff, totalStaff) || other.totalStaff == totalStaff)&&(identical(other.transactionVolume, transactionVolume) || other.transactionVolume == transactionVolume)&&(identical(other.walletBalance, walletBalance) || other.walletBalance == walletBalance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalBranches,totalStaff,transactionVolume,walletBalance);

@override
String toString() {
  return 'BusinessDashData(totalBranches: $totalBranches, totalStaff: $totalStaff, transactionVolume: $transactionVolume, walletBalance: $walletBalance)';
}


}

/// @nodoc
abstract mixin class _$BusinessDashDataCopyWith<$Res> implements $BusinessDashDataCopyWith<$Res> {
  factory _$BusinessDashDataCopyWith(_BusinessDashData value, $Res Function(_BusinessDashData) _then) = __$BusinessDashDataCopyWithImpl;
@override @useResult
$Res call({
 int totalBranches, int totalStaff, int transactionVolume, String walletBalance
});




}
/// @nodoc
class __$BusinessDashDataCopyWithImpl<$Res>
    implements _$BusinessDashDataCopyWith<$Res> {
  __$BusinessDashDataCopyWithImpl(this._self, this._then);

  final _BusinessDashData _self;
  final $Res Function(_BusinessDashData) _then;

/// Create a copy of BusinessDashData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalBranches = null,Object? totalStaff = null,Object? transactionVolume = null,Object? walletBalance = null,}) {
  return _then(_BusinessDashData(
totalBranches: null == totalBranches ? _self.totalBranches : totalBranches // ignore: cast_nullable_to_non_nullable
as int,totalStaff: null == totalStaff ? _self.totalStaff : totalStaff // ignore: cast_nullable_to_non_nullable
as int,transactionVolume: null == transactionVolume ? _self.transactionVolume : transactionVolume // ignore: cast_nullable_to_non_nullable
as int,walletBalance: null == walletBalance ? _self.walletBalance : walletBalance // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
