// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_airtime_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReviewAirtimeData {

 String get phone; double get amount; BillProvider get provider;
/// Create a copy of ReviewAirtimeData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewAirtimeDataCopyWith<ReviewAirtimeData> get copyWith => _$ReviewAirtimeDataCopyWithImpl<ReviewAirtimeData>(this as ReviewAirtimeData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewAirtimeData&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.provider, provider) || other.provider == provider));
}


@override
int get hashCode => Object.hash(runtimeType,phone,amount,provider);

@override
String toString() {
  return 'ReviewAirtimeData(phone: $phone, amount: $amount, provider: $provider)';
}


}

/// @nodoc
abstract mixin class $ReviewAirtimeDataCopyWith<$Res>  {
  factory $ReviewAirtimeDataCopyWith(ReviewAirtimeData value, $Res Function(ReviewAirtimeData) _then) = _$ReviewAirtimeDataCopyWithImpl;
@useResult
$Res call({
 String phone, double amount, BillProvider provider
});


$BillProviderCopyWith<$Res> get provider;

}
/// @nodoc
class _$ReviewAirtimeDataCopyWithImpl<$Res>
    implements $ReviewAirtimeDataCopyWith<$Res> {
  _$ReviewAirtimeDataCopyWithImpl(this._self, this._then);

  final ReviewAirtimeData _self;
  final $Res Function(ReviewAirtimeData) _then;

/// Create a copy of ReviewAirtimeData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phone = null,Object? amount = null,Object? provider = null,}) {
  return _then(_self.copyWith(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as BillProvider,
  ));
}
/// Create a copy of ReviewAirtimeData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BillProviderCopyWith<$Res> get provider {
  
  return $BillProviderCopyWith<$Res>(_self.provider, (value) {
    return _then(_self.copyWith(provider: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReviewAirtimeData].
extension ReviewAirtimeDataPatterns on ReviewAirtimeData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewAirtimeData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewAirtimeData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewAirtimeData value)  $default,){
final _that = this;
switch (_that) {
case _ReviewAirtimeData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewAirtimeData value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewAirtimeData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String phone,  double amount,  BillProvider provider)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewAirtimeData() when $default != null:
return $default(_that.phone,_that.amount,_that.provider);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String phone,  double amount,  BillProvider provider)  $default,) {final _that = this;
switch (_that) {
case _ReviewAirtimeData():
return $default(_that.phone,_that.amount,_that.provider);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String phone,  double amount,  BillProvider provider)?  $default,) {final _that = this;
switch (_that) {
case _ReviewAirtimeData() when $default != null:
return $default(_that.phone,_that.amount,_that.provider);case _:
  return null;

}
}

}

/// @nodoc


class _ReviewAirtimeData implements ReviewAirtimeData {
  const _ReviewAirtimeData({required this.phone, required this.amount, required this.provider});
  

@override final  String phone;
@override final  double amount;
@override final  BillProvider provider;

/// Create a copy of ReviewAirtimeData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewAirtimeDataCopyWith<_ReviewAirtimeData> get copyWith => __$ReviewAirtimeDataCopyWithImpl<_ReviewAirtimeData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewAirtimeData&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.provider, provider) || other.provider == provider));
}


@override
int get hashCode => Object.hash(runtimeType,phone,amount,provider);

@override
String toString() {
  return 'ReviewAirtimeData(phone: $phone, amount: $amount, provider: $provider)';
}


}

/// @nodoc
abstract mixin class _$ReviewAirtimeDataCopyWith<$Res> implements $ReviewAirtimeDataCopyWith<$Res> {
  factory _$ReviewAirtimeDataCopyWith(_ReviewAirtimeData value, $Res Function(_ReviewAirtimeData) _then) = __$ReviewAirtimeDataCopyWithImpl;
@override @useResult
$Res call({
 String phone, double amount, BillProvider provider
});


@override $BillProviderCopyWith<$Res> get provider;

}
/// @nodoc
class __$ReviewAirtimeDataCopyWithImpl<$Res>
    implements _$ReviewAirtimeDataCopyWith<$Res> {
  __$ReviewAirtimeDataCopyWithImpl(this._self, this._then);

  final _ReviewAirtimeData _self;
  final $Res Function(_ReviewAirtimeData) _then;

/// Create a copy of ReviewAirtimeData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phone = null,Object? amount = null,Object? provider = null,}) {
  return _then(_ReviewAirtimeData(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as BillProvider,
  ));
}

/// Create a copy of ReviewAirtimeData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BillProviderCopyWith<$Res> get provider {
  
  return $BillProviderCopyWith<$Res>(_self.provider, (value) {
    return _then(_self.copyWith(provider: value));
  });
}
}

// dart format on
