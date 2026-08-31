// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verified_receiver_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerifiedReceiverRequest {

 String get transactionId; String get receiver; String? get receiverName; String? get branchId;
/// Create a copy of VerifiedReceiverRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifiedReceiverRequestCopyWith<VerifiedReceiverRequest> get copyWith => _$VerifiedReceiverRequestCopyWithImpl<VerifiedReceiverRequest>(this as VerifiedReceiverRequest, _$identity);

  /// Serializes this VerifiedReceiverRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifiedReceiverRequest&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.receiver, receiver) || other.receiver == receiver)&&(identical(other.receiverName, receiverName) || other.receiverName == receiverName)&&(identical(other.branchId, branchId) || other.branchId == branchId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,receiver,receiverName,branchId);

@override
String toString() {
  return 'VerifiedReceiverRequest(transactionId: $transactionId, receiver: $receiver, receiverName: $receiverName, branchId: $branchId)';
}


}

/// @nodoc
abstract mixin class $VerifiedReceiverRequestCopyWith<$Res>  {
  factory $VerifiedReceiverRequestCopyWith(VerifiedReceiverRequest value, $Res Function(VerifiedReceiverRequest) _then) = _$VerifiedReceiverRequestCopyWithImpl;
@useResult
$Res call({
 String transactionId, String receiver, String? receiverName, String? branchId
});




}
/// @nodoc
class _$VerifiedReceiverRequestCopyWithImpl<$Res>
    implements $VerifiedReceiverRequestCopyWith<$Res> {
  _$VerifiedReceiverRequestCopyWithImpl(this._self, this._then);

  final VerifiedReceiverRequest _self;
  final $Res Function(VerifiedReceiverRequest) _then;

/// Create a copy of VerifiedReceiverRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionId = null,Object? receiver = null,Object? receiverName = freezed,Object? branchId = freezed,}) {
  return _then(_self.copyWith(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,receiver: null == receiver ? _self.receiver : receiver // ignore: cast_nullable_to_non_nullable
as String,receiverName: freezed == receiverName ? _self.receiverName : receiverName // ignore: cast_nullable_to_non_nullable
as String?,branchId: freezed == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [VerifiedReceiverRequest].
extension VerifiedReceiverRequestPatterns on VerifiedReceiverRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifiedReceiverRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifiedReceiverRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifiedReceiverRequest value)  $default,){
final _that = this;
switch (_that) {
case _VerifiedReceiverRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifiedReceiverRequest value)?  $default,){
final _that = this;
switch (_that) {
case _VerifiedReceiverRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String transactionId,  String receiver,  String? receiverName,  String? branchId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifiedReceiverRequest() when $default != null:
return $default(_that.transactionId,_that.receiver,_that.receiverName,_that.branchId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String transactionId,  String receiver,  String? receiverName,  String? branchId)  $default,) {final _that = this;
switch (_that) {
case _VerifiedReceiverRequest():
return $default(_that.transactionId,_that.receiver,_that.receiverName,_that.branchId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String transactionId,  String receiver,  String? receiverName,  String? branchId)?  $default,) {final _that = this;
switch (_that) {
case _VerifiedReceiverRequest() when $default != null:
return $default(_that.transactionId,_that.receiver,_that.receiverName,_that.branchId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VerifiedReceiverRequest implements VerifiedReceiverRequest {
  const _VerifiedReceiverRequest({required this.transactionId, required this.receiver, this.receiverName, this.branchId});
  factory _VerifiedReceiverRequest.fromJson(Map<String, dynamic> json) => _$VerifiedReceiverRequestFromJson(json);

@override final  String transactionId;
@override final  String receiver;
@override final  String? receiverName;
@override final  String? branchId;

/// Create a copy of VerifiedReceiverRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifiedReceiverRequestCopyWith<_VerifiedReceiverRequest> get copyWith => __$VerifiedReceiverRequestCopyWithImpl<_VerifiedReceiverRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VerifiedReceiverRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifiedReceiverRequest&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.receiver, receiver) || other.receiver == receiver)&&(identical(other.receiverName, receiverName) || other.receiverName == receiverName)&&(identical(other.branchId, branchId) || other.branchId == branchId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,receiver,receiverName,branchId);

@override
String toString() {
  return 'VerifiedReceiverRequest(transactionId: $transactionId, receiver: $receiver, receiverName: $receiverName, branchId: $branchId)';
}


}

/// @nodoc
abstract mixin class _$VerifiedReceiverRequestCopyWith<$Res> implements $VerifiedReceiverRequestCopyWith<$Res> {
  factory _$VerifiedReceiverRequestCopyWith(_VerifiedReceiverRequest value, $Res Function(_VerifiedReceiverRequest) _then) = __$VerifiedReceiverRequestCopyWithImpl;
@override @useResult
$Res call({
 String transactionId, String receiver, String? receiverName, String? branchId
});




}
/// @nodoc
class __$VerifiedReceiverRequestCopyWithImpl<$Res>
    implements _$VerifiedReceiverRequestCopyWith<$Res> {
  __$VerifiedReceiverRequestCopyWithImpl(this._self, this._then);

  final _VerifiedReceiverRequest _self;
  final $Res Function(_VerifiedReceiverRequest) _then;

/// Create a copy of VerifiedReceiverRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionId = null,Object? receiver = null,Object? receiverName = freezed,Object? branchId = freezed,}) {
  return _then(_VerifiedReceiverRequest(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,receiver: null == receiver ? _self.receiver : receiver // ignore: cast_nullable_to_non_nullable
as String,receiverName: freezed == receiverName ? _self.receiverName : receiverName // ignore: cast_nullable_to_non_nullable
as String?,branchId: freezed == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
