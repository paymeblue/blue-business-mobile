// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verified_receiver_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerifiedReceiverData {

 VerifiedReceiver get receiver;
/// Create a copy of VerifiedReceiverData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifiedReceiverDataCopyWith<VerifiedReceiverData> get copyWith => _$VerifiedReceiverDataCopyWithImpl<VerifiedReceiverData>(this as VerifiedReceiverData, _$identity);

  /// Serializes this VerifiedReceiverData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifiedReceiverData&&(identical(other.receiver, receiver) || other.receiver == receiver));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,receiver);

@override
String toString() {
  return 'VerifiedReceiverData(receiver: $receiver)';
}


}

/// @nodoc
abstract mixin class $VerifiedReceiverDataCopyWith<$Res>  {
  factory $VerifiedReceiverDataCopyWith(VerifiedReceiverData value, $Res Function(VerifiedReceiverData) _then) = _$VerifiedReceiverDataCopyWithImpl;
@useResult
$Res call({
 VerifiedReceiver receiver
});


$VerifiedReceiverCopyWith<$Res> get receiver;

}
/// @nodoc
class _$VerifiedReceiverDataCopyWithImpl<$Res>
    implements $VerifiedReceiverDataCopyWith<$Res> {
  _$VerifiedReceiverDataCopyWithImpl(this._self, this._then);

  final VerifiedReceiverData _self;
  final $Res Function(VerifiedReceiverData) _then;

/// Create a copy of VerifiedReceiverData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? receiver = null,}) {
  return _then(_self.copyWith(
receiver: null == receiver ? _self.receiver : receiver // ignore: cast_nullable_to_non_nullable
as VerifiedReceiver,
  ));
}
/// Create a copy of VerifiedReceiverData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VerifiedReceiverCopyWith<$Res> get receiver {
  
  return $VerifiedReceiverCopyWith<$Res>(_self.receiver, (value) {
    return _then(_self.copyWith(receiver: value));
  });
}
}


/// Adds pattern-matching-related methods to [VerifiedReceiverData].
extension VerifiedReceiverDataPatterns on VerifiedReceiverData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifiedReceiverData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifiedReceiverData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifiedReceiverData value)  $default,){
final _that = this;
switch (_that) {
case _VerifiedReceiverData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifiedReceiverData value)?  $default,){
final _that = this;
switch (_that) {
case _VerifiedReceiverData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( VerifiedReceiver receiver)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifiedReceiverData() when $default != null:
return $default(_that.receiver);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( VerifiedReceiver receiver)  $default,) {final _that = this;
switch (_that) {
case _VerifiedReceiverData():
return $default(_that.receiver);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( VerifiedReceiver receiver)?  $default,) {final _that = this;
switch (_that) {
case _VerifiedReceiverData() when $default != null:
return $default(_that.receiver);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VerifiedReceiverData implements VerifiedReceiverData {
  const _VerifiedReceiverData({required this.receiver});
  factory _VerifiedReceiverData.fromJson(Map<String, dynamic> json) => _$VerifiedReceiverDataFromJson(json);

@override final  VerifiedReceiver receiver;

/// Create a copy of VerifiedReceiverData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifiedReceiverDataCopyWith<_VerifiedReceiverData> get copyWith => __$VerifiedReceiverDataCopyWithImpl<_VerifiedReceiverData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VerifiedReceiverDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifiedReceiverData&&(identical(other.receiver, receiver) || other.receiver == receiver));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,receiver);

@override
String toString() {
  return 'VerifiedReceiverData(receiver: $receiver)';
}


}

/// @nodoc
abstract mixin class _$VerifiedReceiverDataCopyWith<$Res> implements $VerifiedReceiverDataCopyWith<$Res> {
  factory _$VerifiedReceiverDataCopyWith(_VerifiedReceiverData value, $Res Function(_VerifiedReceiverData) _then) = __$VerifiedReceiverDataCopyWithImpl;
@override @useResult
$Res call({
 VerifiedReceiver receiver
});


@override $VerifiedReceiverCopyWith<$Res> get receiver;

}
/// @nodoc
class __$VerifiedReceiverDataCopyWithImpl<$Res>
    implements _$VerifiedReceiverDataCopyWith<$Res> {
  __$VerifiedReceiverDataCopyWithImpl(this._self, this._then);

  final _VerifiedReceiverData _self;
  final $Res Function(_VerifiedReceiverData) _then;

/// Create a copy of VerifiedReceiverData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? receiver = null,}) {
  return _then(_VerifiedReceiverData(
receiver: null == receiver ? _self.receiver : receiver // ignore: cast_nullable_to_non_nullable
as VerifiedReceiver,
  ));
}

/// Create a copy of VerifiedReceiverData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VerifiedReceiverCopyWith<$Res> get receiver {
  
  return $VerifiedReceiverCopyWith<$Res>(_self.receiver, (value) {
    return _then(_self.copyWith(receiver: value));
  });
}
}

// dart format on
