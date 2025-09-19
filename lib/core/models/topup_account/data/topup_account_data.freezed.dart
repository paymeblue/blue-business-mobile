// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topup_account_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TopupAccountData {

 TopupAccount get account;
/// Create a copy of TopupAccountData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopupAccountDataCopyWith<TopupAccountData> get copyWith => _$TopupAccountDataCopyWithImpl<TopupAccountData>(this as TopupAccountData, _$identity);

  /// Serializes this TopupAccountData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopupAccountData&&(identical(other.account, account) || other.account == account));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,account);

@override
String toString() {
  return 'TopupAccountData(account: $account)';
}


}

/// @nodoc
abstract mixin class $TopupAccountDataCopyWith<$Res>  {
  factory $TopupAccountDataCopyWith(TopupAccountData value, $Res Function(TopupAccountData) _then) = _$TopupAccountDataCopyWithImpl;
@useResult
$Res call({
 TopupAccount account
});


$TopupAccountCopyWith<$Res> get account;

}
/// @nodoc
class _$TopupAccountDataCopyWithImpl<$Res>
    implements $TopupAccountDataCopyWith<$Res> {
  _$TopupAccountDataCopyWithImpl(this._self, this._then);

  final TopupAccountData _self;
  final $Res Function(TopupAccountData) _then;

/// Create a copy of TopupAccountData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? account = null,}) {
  return _then(_self.copyWith(
account: null == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as TopupAccount,
  ));
}
/// Create a copy of TopupAccountData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TopupAccountCopyWith<$Res> get account {
  
  return $TopupAccountCopyWith<$Res>(_self.account, (value) {
    return _then(_self.copyWith(account: value));
  });
}
}


/// Adds pattern-matching-related methods to [TopupAccountData].
extension TopupAccountDataPatterns on TopupAccountData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TopupAccountData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopupAccountData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TopupAccountData value)  $default,){
final _that = this;
switch (_that) {
case _TopupAccountData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TopupAccountData value)?  $default,){
final _that = this;
switch (_that) {
case _TopupAccountData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TopupAccount account)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TopupAccountData() when $default != null:
return $default(_that.account);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TopupAccount account)  $default,) {final _that = this;
switch (_that) {
case _TopupAccountData():
return $default(_that.account);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TopupAccount account)?  $default,) {final _that = this;
switch (_that) {
case _TopupAccountData() when $default != null:
return $default(_that.account);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TopupAccountData implements TopupAccountData {
  const _TopupAccountData({required this.account});
  factory _TopupAccountData.fromJson(Map<String, dynamic> json) => _$TopupAccountDataFromJson(json);

@override final  TopupAccount account;

/// Create a copy of TopupAccountData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopupAccountDataCopyWith<_TopupAccountData> get copyWith => __$TopupAccountDataCopyWithImpl<_TopupAccountData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TopupAccountDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopupAccountData&&(identical(other.account, account) || other.account == account));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,account);

@override
String toString() {
  return 'TopupAccountData(account: $account)';
}


}

/// @nodoc
abstract mixin class _$TopupAccountDataCopyWith<$Res> implements $TopupAccountDataCopyWith<$Res> {
  factory _$TopupAccountDataCopyWith(_TopupAccountData value, $Res Function(_TopupAccountData) _then) = __$TopupAccountDataCopyWithImpl;
@override @useResult
$Res call({
 TopupAccount account
});


@override $TopupAccountCopyWith<$Res> get account;

}
/// @nodoc
class __$TopupAccountDataCopyWithImpl<$Res>
    implements _$TopupAccountDataCopyWith<$Res> {
  __$TopupAccountDataCopyWithImpl(this._self, this._then);

  final _TopupAccountData _self;
  final $Res Function(_TopupAccountData) _then;

/// Create a copy of TopupAccountData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? account = null,}) {
  return _then(_TopupAccountData(
account: null == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as TopupAccount,
  ));
}

/// Create a copy of TopupAccountData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TopupAccountCopyWith<$Res> get account {
  
  return $TopupAccountCopyWith<$Res>(_self.account, (value) {
    return _then(_self.copyWith(account: value));
  });
}
}

// dart format on
