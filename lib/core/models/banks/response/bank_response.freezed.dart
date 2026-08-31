// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BankResponse {

 String get status; String? get message; List<BankItem>? get data;
/// Create a copy of BankResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BankResponseCopyWith<BankResponse> get copyWith => _$BankResponseCopyWithImpl<BankResponse>(this as BankResponse, _$identity);

  /// Serializes this BankResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BankResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'BankResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $BankResponseCopyWith<$Res>  {
  factory $BankResponseCopyWith(BankResponse value, $Res Function(BankResponse) _then) = _$BankResponseCopyWithImpl;
@useResult
$Res call({
 String status, String? message, List<BankItem>? data
});




}
/// @nodoc
class _$BankResponseCopyWithImpl<$Res>
    implements $BankResponseCopyWith<$Res> {
  _$BankResponseCopyWithImpl(this._self, this._then);

  final BankResponse _self;
  final $Res Function(BankResponse) _then;

/// Create a copy of BankResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<BankItem>?,
  ));
}

}


/// Adds pattern-matching-related methods to [BankResponse].
extension BankResponsePatterns on BankResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BankResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BankResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BankResponse value)  $default,){
final _that = this;
switch (_that) {
case _BankResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BankResponse value)?  $default,){
final _that = this;
switch (_that) {
case _BankResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  String? message,  List<BankItem>? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BankResponse() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  String? message,  List<BankItem>? data)  $default,) {final _that = this;
switch (_that) {
case _BankResponse():
return $default(_that.status,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  String? message,  List<BankItem>? data)?  $default,) {final _that = this;
switch (_that) {
case _BankResponse() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BankResponse implements BankResponse {
  const _BankResponse({this.status = "fail", this.message, final  List<BankItem>? data}): _data = data;
  factory _BankResponse.fromJson(Map<String, dynamic> json) => _$BankResponseFromJson(json);

@override@JsonKey() final  String status;
@override final  String? message;
 final  List<BankItem>? _data;
@override List<BankItem>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of BankResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BankResponseCopyWith<_BankResponse> get copyWith => __$BankResponseCopyWithImpl<_BankResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BankResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BankResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'BankResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$BankResponseCopyWith<$Res> implements $BankResponseCopyWith<$Res> {
  factory _$BankResponseCopyWith(_BankResponse value, $Res Function(_BankResponse) _then) = __$BankResponseCopyWithImpl;
@override @useResult
$Res call({
 String status, String? message, List<BankItem>? data
});




}
/// @nodoc
class __$BankResponseCopyWithImpl<$Res>
    implements _$BankResponseCopyWith<$Res> {
  __$BankResponseCopyWithImpl(this._self, this._then);

  final _BankResponse _self;
  final $Res Function(_BankResponse) _then;

/// Create a copy of BankResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = freezed,Object? data = freezed,}) {
  return _then(_BankResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<BankItem>?,
  ));
}


}

// dart format on
