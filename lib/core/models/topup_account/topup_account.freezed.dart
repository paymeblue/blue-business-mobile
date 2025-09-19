// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topup_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TopupAccount {

 int get id; String get accountName; String get bankName; String get accountNumber;
/// Create a copy of TopupAccount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopupAccountCopyWith<TopupAccount> get copyWith => _$TopupAccountCopyWithImpl<TopupAccount>(this as TopupAccount, _$identity);

  /// Serializes this TopupAccount to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopupAccount&&(identical(other.id, id) || other.id == id)&&(identical(other.accountName, accountName) || other.accountName == accountName)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,accountName,bankName,accountNumber);

@override
String toString() {
  return 'TopupAccount(id: $id, accountName: $accountName, bankName: $bankName, accountNumber: $accountNumber)';
}


}

/// @nodoc
abstract mixin class $TopupAccountCopyWith<$Res>  {
  factory $TopupAccountCopyWith(TopupAccount value, $Res Function(TopupAccount) _then) = _$TopupAccountCopyWithImpl;
@useResult
$Res call({
 int id, String accountName, String bankName, String accountNumber
});




}
/// @nodoc
class _$TopupAccountCopyWithImpl<$Res>
    implements $TopupAccountCopyWith<$Res> {
  _$TopupAccountCopyWithImpl(this._self, this._then);

  final TopupAccount _self;
  final $Res Function(TopupAccount) _then;

/// Create a copy of TopupAccount
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? accountName = null,Object? bankName = null,Object? accountNumber = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,accountName: null == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String,bankName: null == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TopupAccount].
extension TopupAccountPatterns on TopupAccount {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TopupAccount value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopupAccount() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TopupAccount value)  $default,){
final _that = this;
switch (_that) {
case _TopupAccount():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TopupAccount value)?  $default,){
final _that = this;
switch (_that) {
case _TopupAccount() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String accountName,  String bankName,  String accountNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TopupAccount() when $default != null:
return $default(_that.id,_that.accountName,_that.bankName,_that.accountNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String accountName,  String bankName,  String accountNumber)  $default,) {final _that = this;
switch (_that) {
case _TopupAccount():
return $default(_that.id,_that.accountName,_that.bankName,_that.accountNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String accountName,  String bankName,  String accountNumber)?  $default,) {final _that = this;
switch (_that) {
case _TopupAccount() when $default != null:
return $default(_that.id,_that.accountName,_that.bankName,_that.accountNumber);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TopupAccount implements TopupAccount {
  const _TopupAccount({required this.id, required this.accountName, required this.bankName, required this.accountNumber});
  factory _TopupAccount.fromJson(Map<String, dynamic> json) => _$TopupAccountFromJson(json);

@override final  int id;
@override final  String accountName;
@override final  String bankName;
@override final  String accountNumber;

/// Create a copy of TopupAccount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopupAccountCopyWith<_TopupAccount> get copyWith => __$TopupAccountCopyWithImpl<_TopupAccount>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TopupAccountToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopupAccount&&(identical(other.id, id) || other.id == id)&&(identical(other.accountName, accountName) || other.accountName == accountName)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,accountName,bankName,accountNumber);

@override
String toString() {
  return 'TopupAccount(id: $id, accountName: $accountName, bankName: $bankName, accountNumber: $accountNumber)';
}


}

/// @nodoc
abstract mixin class _$TopupAccountCopyWith<$Res> implements $TopupAccountCopyWith<$Res> {
  factory _$TopupAccountCopyWith(_TopupAccount value, $Res Function(_TopupAccount) _then) = __$TopupAccountCopyWithImpl;
@override @useResult
$Res call({
 int id, String accountName, String bankName, String accountNumber
});




}
/// @nodoc
class __$TopupAccountCopyWithImpl<$Res>
    implements _$TopupAccountCopyWith<$Res> {
  __$TopupAccountCopyWithImpl(this._self, this._then);

  final _TopupAccount _self;
  final $Res Function(_TopupAccount) _then;

/// Create a copy of TopupAccount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? accountName = null,Object? bankName = null,Object? accountNumber = null,}) {
  return _then(_TopupAccount(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,accountName: null == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String,bankName: null == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
