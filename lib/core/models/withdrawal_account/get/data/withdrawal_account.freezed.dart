// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'withdrawal_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WithdrawalAccount {

 int get id; int get bankId; String get bankName; String get accountName; String get accountNumber; String? get createdAt;
/// Create a copy of WithdrawalAccount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WithdrawalAccountCopyWith<WithdrawalAccount> get copyWith => _$WithdrawalAccountCopyWithImpl<WithdrawalAccount>(this as WithdrawalAccount, _$identity);

  /// Serializes this WithdrawalAccount to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WithdrawalAccount&&(identical(other.id, id) || other.id == id)&&(identical(other.bankId, bankId) || other.bankId == bankId)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.accountName, accountName) || other.accountName == accountName)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,bankId,bankName,accountName,accountNumber,createdAt);

@override
String toString() {
  return 'WithdrawalAccount(id: $id, bankId: $bankId, bankName: $bankName, accountName: $accountName, accountNumber: $accountNumber, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $WithdrawalAccountCopyWith<$Res>  {
  factory $WithdrawalAccountCopyWith(WithdrawalAccount value, $Res Function(WithdrawalAccount) _then) = _$WithdrawalAccountCopyWithImpl;
@useResult
$Res call({
 int id, int bankId, String bankName, String accountName, String accountNumber, String? createdAt
});




}
/// @nodoc
class _$WithdrawalAccountCopyWithImpl<$Res>
    implements $WithdrawalAccountCopyWith<$Res> {
  _$WithdrawalAccountCopyWithImpl(this._self, this._then);

  final WithdrawalAccount _self;
  final $Res Function(WithdrawalAccount) _then;

/// Create a copy of WithdrawalAccount
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? bankId = null,Object? bankName = null,Object? accountName = null,Object? accountNumber = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,bankId: null == bankId ? _self.bankId : bankId // ignore: cast_nullable_to_non_nullable
as int,bankName: null == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String,accountName: null == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WithdrawalAccount].
extension WithdrawalAccountPatterns on WithdrawalAccount {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WithdrawalAccount value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WithdrawalAccount() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WithdrawalAccount value)  $default,){
final _that = this;
switch (_that) {
case _WithdrawalAccount():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WithdrawalAccount value)?  $default,){
final _that = this;
switch (_that) {
case _WithdrawalAccount() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int bankId,  String bankName,  String accountName,  String accountNumber,  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WithdrawalAccount() when $default != null:
return $default(_that.id,_that.bankId,_that.bankName,_that.accountName,_that.accountNumber,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int bankId,  String bankName,  String accountName,  String accountNumber,  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _WithdrawalAccount():
return $default(_that.id,_that.bankId,_that.bankName,_that.accountName,_that.accountNumber,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int bankId,  String bankName,  String accountName,  String accountNumber,  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _WithdrawalAccount() when $default != null:
return $default(_that.id,_that.bankId,_that.bankName,_that.accountName,_that.accountNumber,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WithdrawalAccount implements WithdrawalAccount {
  const _WithdrawalAccount({required this.id, required this.bankId, required this.bankName, required this.accountName, required this.accountNumber, this.createdAt});
  factory _WithdrawalAccount.fromJson(Map<String, dynamic> json) => _$WithdrawalAccountFromJson(json);

@override final  int id;
@override final  int bankId;
@override final  String bankName;
@override final  String accountName;
@override final  String accountNumber;
@override final  String? createdAt;

/// Create a copy of WithdrawalAccount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WithdrawalAccountCopyWith<_WithdrawalAccount> get copyWith => __$WithdrawalAccountCopyWithImpl<_WithdrawalAccount>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WithdrawalAccountToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WithdrawalAccount&&(identical(other.id, id) || other.id == id)&&(identical(other.bankId, bankId) || other.bankId == bankId)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.accountName, accountName) || other.accountName == accountName)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,bankId,bankName,accountName,accountNumber,createdAt);

@override
String toString() {
  return 'WithdrawalAccount(id: $id, bankId: $bankId, bankName: $bankName, accountName: $accountName, accountNumber: $accountNumber, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$WithdrawalAccountCopyWith<$Res> implements $WithdrawalAccountCopyWith<$Res> {
  factory _$WithdrawalAccountCopyWith(_WithdrawalAccount value, $Res Function(_WithdrawalAccount) _then) = __$WithdrawalAccountCopyWithImpl;
@override @useResult
$Res call({
 int id, int bankId, String bankName, String accountName, String accountNumber, String? createdAt
});




}
/// @nodoc
class __$WithdrawalAccountCopyWithImpl<$Res>
    implements _$WithdrawalAccountCopyWith<$Res> {
  __$WithdrawalAccountCopyWithImpl(this._self, this._then);

  final _WithdrawalAccount _self;
  final $Res Function(_WithdrawalAccount) _then;

/// Create a copy of WithdrawalAccount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? bankId = null,Object? bankName = null,Object? accountName = null,Object? accountNumber = null,Object? createdAt = freezed,}) {
  return _then(_WithdrawalAccount(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,bankId: null == bankId ? _self.bankId : bankId // ignore: cast_nullable_to_non_nullable
as int,bankName: null == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String,accountName: null == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
