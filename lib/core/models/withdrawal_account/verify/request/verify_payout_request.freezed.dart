// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_payout_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerifyPayoutRequest {

 String get bankId; String get accountNumber;
/// Create a copy of VerifyPayoutRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyPayoutRequestCopyWith<VerifyPayoutRequest> get copyWith => _$VerifyPayoutRequestCopyWithImpl<VerifyPayoutRequest>(this as VerifyPayoutRequest, _$identity);

  /// Serializes this VerifyPayoutRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyPayoutRequest&&(identical(other.bankId, bankId) || other.bankId == bankId)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bankId,accountNumber);

@override
String toString() {
  return 'VerifyPayoutRequest(bankId: $bankId, accountNumber: $accountNumber)';
}


}

/// @nodoc
abstract mixin class $VerifyPayoutRequestCopyWith<$Res>  {
  factory $VerifyPayoutRequestCopyWith(VerifyPayoutRequest value, $Res Function(VerifyPayoutRequest) _then) = _$VerifyPayoutRequestCopyWithImpl;
@useResult
$Res call({
 String bankId, String accountNumber
});




}
/// @nodoc
class _$VerifyPayoutRequestCopyWithImpl<$Res>
    implements $VerifyPayoutRequestCopyWith<$Res> {
  _$VerifyPayoutRequestCopyWithImpl(this._self, this._then);

  final VerifyPayoutRequest _self;
  final $Res Function(VerifyPayoutRequest) _then;

/// Create a copy of VerifyPayoutRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bankId = null,Object? accountNumber = null,}) {
  return _then(_self.copyWith(
bankId: null == bankId ? _self.bankId : bankId // ignore: cast_nullable_to_non_nullable
as String,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [VerifyPayoutRequest].
extension VerifyPayoutRequestPatterns on VerifyPayoutRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifyPayoutRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyPayoutRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifyPayoutRequest value)  $default,){
final _that = this;
switch (_that) {
case _VerifyPayoutRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifyPayoutRequest value)?  $default,){
final _that = this;
switch (_that) {
case _VerifyPayoutRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String bankId,  String accountNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifyPayoutRequest() when $default != null:
return $default(_that.bankId,_that.accountNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String bankId,  String accountNumber)  $default,) {final _that = this;
switch (_that) {
case _VerifyPayoutRequest():
return $default(_that.bankId,_that.accountNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String bankId,  String accountNumber)?  $default,) {final _that = this;
switch (_that) {
case _VerifyPayoutRequest() when $default != null:
return $default(_that.bankId,_that.accountNumber);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VerifyPayoutRequest implements VerifyPayoutRequest {
  const _VerifyPayoutRequest({required this.bankId, required this.accountNumber});
  factory _VerifyPayoutRequest.fromJson(Map<String, dynamic> json) => _$VerifyPayoutRequestFromJson(json);

@override final  String bankId;
@override final  String accountNumber;

/// Create a copy of VerifyPayoutRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyPayoutRequestCopyWith<_VerifyPayoutRequest> get copyWith => __$VerifyPayoutRequestCopyWithImpl<_VerifyPayoutRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VerifyPayoutRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyPayoutRequest&&(identical(other.bankId, bankId) || other.bankId == bankId)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bankId,accountNumber);

@override
String toString() {
  return 'VerifyPayoutRequest(bankId: $bankId, accountNumber: $accountNumber)';
}


}

/// @nodoc
abstract mixin class _$VerifyPayoutRequestCopyWith<$Res> implements $VerifyPayoutRequestCopyWith<$Res> {
  factory _$VerifyPayoutRequestCopyWith(_VerifyPayoutRequest value, $Res Function(_VerifyPayoutRequest) _then) = __$VerifyPayoutRequestCopyWithImpl;
@override @useResult
$Res call({
 String bankId, String accountNumber
});




}
/// @nodoc
class __$VerifyPayoutRequestCopyWithImpl<$Res>
    implements _$VerifyPayoutRequestCopyWith<$Res> {
  __$VerifyPayoutRequestCopyWithImpl(this._self, this._then);

  final _VerifyPayoutRequest _self;
  final $Res Function(_VerifyPayoutRequest) _then;

/// Create a copy of VerifyPayoutRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bankId = null,Object? accountNumber = null,}) {
  return _then(_VerifyPayoutRequest(
bankId: null == bankId ? _self.bankId : bankId // ignore: cast_nullable_to_non_nullable
as String,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
