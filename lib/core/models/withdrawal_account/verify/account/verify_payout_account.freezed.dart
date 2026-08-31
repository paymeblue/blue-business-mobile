// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_payout_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerifyPayoutAccount {

 int get id; String get reference; String get accountNumber; String get accountName; String get bankId; String get name; String get createdAt;
/// Create a copy of VerifyPayoutAccount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyPayoutAccountCopyWith<VerifyPayoutAccount> get copyWith => _$VerifyPayoutAccountCopyWithImpl<VerifyPayoutAccount>(this as VerifyPayoutAccount, _$identity);

  /// Serializes this VerifyPayoutAccount to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyPayoutAccount&&(identical(other.id, id) || other.id == id)&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.accountName, accountName) || other.accountName == accountName)&&(identical(other.bankId, bankId) || other.bankId == bankId)&&(identical(other.name, name) || other.name == name)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,reference,accountNumber,accountName,bankId,name,createdAt);

@override
String toString() {
  return 'VerifyPayoutAccount(id: $id, reference: $reference, accountNumber: $accountNumber, accountName: $accountName, bankId: $bankId, name: $name, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $VerifyPayoutAccountCopyWith<$Res>  {
  factory $VerifyPayoutAccountCopyWith(VerifyPayoutAccount value, $Res Function(VerifyPayoutAccount) _then) = _$VerifyPayoutAccountCopyWithImpl;
@useResult
$Res call({
 int id, String reference, String accountNumber, String accountName, String bankId, String name, String createdAt
});




}
/// @nodoc
class _$VerifyPayoutAccountCopyWithImpl<$Res>
    implements $VerifyPayoutAccountCopyWith<$Res> {
  _$VerifyPayoutAccountCopyWithImpl(this._self, this._then);

  final VerifyPayoutAccount _self;
  final $Res Function(VerifyPayoutAccount) _then;

/// Create a copy of VerifyPayoutAccount
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? reference = null,Object? accountNumber = null,Object? accountName = null,Object? bankId = null,Object? name = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,reference: null == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,accountName: null == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String,bankId: null == bankId ? _self.bankId : bankId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [VerifyPayoutAccount].
extension VerifyPayoutAccountPatterns on VerifyPayoutAccount {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifyPayoutAccount value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyPayoutAccount() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifyPayoutAccount value)  $default,){
final _that = this;
switch (_that) {
case _VerifyPayoutAccount():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifyPayoutAccount value)?  $default,){
final _that = this;
switch (_that) {
case _VerifyPayoutAccount() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String reference,  String accountNumber,  String accountName,  String bankId,  String name,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifyPayoutAccount() when $default != null:
return $default(_that.id,_that.reference,_that.accountNumber,_that.accountName,_that.bankId,_that.name,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String reference,  String accountNumber,  String accountName,  String bankId,  String name,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _VerifyPayoutAccount():
return $default(_that.id,_that.reference,_that.accountNumber,_that.accountName,_that.bankId,_that.name,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String reference,  String accountNumber,  String accountName,  String bankId,  String name,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _VerifyPayoutAccount() when $default != null:
return $default(_that.id,_that.reference,_that.accountNumber,_that.accountName,_that.bankId,_that.name,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VerifyPayoutAccount implements VerifyPayoutAccount {
  const _VerifyPayoutAccount({required this.id, required this.reference, required this.accountNumber, required this.accountName, required this.bankId, required this.name, required this.createdAt});
  factory _VerifyPayoutAccount.fromJson(Map<String, dynamic> json) => _$VerifyPayoutAccountFromJson(json);

@override final  int id;
@override final  String reference;
@override final  String accountNumber;
@override final  String accountName;
@override final  String bankId;
@override final  String name;
@override final  String createdAt;

/// Create a copy of VerifyPayoutAccount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyPayoutAccountCopyWith<_VerifyPayoutAccount> get copyWith => __$VerifyPayoutAccountCopyWithImpl<_VerifyPayoutAccount>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VerifyPayoutAccountToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyPayoutAccount&&(identical(other.id, id) || other.id == id)&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.accountName, accountName) || other.accountName == accountName)&&(identical(other.bankId, bankId) || other.bankId == bankId)&&(identical(other.name, name) || other.name == name)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,reference,accountNumber,accountName,bankId,name,createdAt);

@override
String toString() {
  return 'VerifyPayoutAccount(id: $id, reference: $reference, accountNumber: $accountNumber, accountName: $accountName, bankId: $bankId, name: $name, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$VerifyPayoutAccountCopyWith<$Res> implements $VerifyPayoutAccountCopyWith<$Res> {
  factory _$VerifyPayoutAccountCopyWith(_VerifyPayoutAccount value, $Res Function(_VerifyPayoutAccount) _then) = __$VerifyPayoutAccountCopyWithImpl;
@override @useResult
$Res call({
 int id, String reference, String accountNumber, String accountName, String bankId, String name, String createdAt
});




}
/// @nodoc
class __$VerifyPayoutAccountCopyWithImpl<$Res>
    implements _$VerifyPayoutAccountCopyWith<$Res> {
  __$VerifyPayoutAccountCopyWithImpl(this._self, this._then);

  final _VerifyPayoutAccount _self;
  final $Res Function(_VerifyPayoutAccount) _then;

/// Create a copy of VerifyPayoutAccount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? reference = null,Object? accountNumber = null,Object? accountName = null,Object? bankId = null,Object? name = null,Object? createdAt = null,}) {
  return _then(_VerifyPayoutAccount(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,reference: null == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,accountName: null == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String,bankId: null == bankId ? _self.bankId : bankId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
