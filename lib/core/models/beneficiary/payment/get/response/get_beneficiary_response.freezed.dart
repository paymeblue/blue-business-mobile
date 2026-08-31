// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_beneficiary_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetBeneficiaryResponse {

 String get status; String? get message; List<BlueBeneficiary> get data; GetBeneficiaryData? get paginationInfo;
/// Create a copy of GetBeneficiaryResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetBeneficiaryResponseCopyWith<GetBeneficiaryResponse> get copyWith => _$GetBeneficiaryResponseCopyWithImpl<GetBeneficiaryResponse>(this as GetBeneficiaryResponse, _$identity);

  /// Serializes this GetBeneficiaryResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetBeneficiaryResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.paginationInfo, paginationInfo) || other.paginationInfo == paginationInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(data),paginationInfo);

@override
String toString() {
  return 'GetBeneficiaryResponse(status: $status, message: $message, data: $data, paginationInfo: $paginationInfo)';
}


}

/// @nodoc
abstract mixin class $GetBeneficiaryResponseCopyWith<$Res>  {
  factory $GetBeneficiaryResponseCopyWith(GetBeneficiaryResponse value, $Res Function(GetBeneficiaryResponse) _then) = _$GetBeneficiaryResponseCopyWithImpl;
@useResult
$Res call({
 String status, String? message, List<BlueBeneficiary> data, GetBeneficiaryData? paginationInfo
});


$GetBeneficiaryDataCopyWith<$Res>? get paginationInfo;

}
/// @nodoc
class _$GetBeneficiaryResponseCopyWithImpl<$Res>
    implements $GetBeneficiaryResponseCopyWith<$Res> {
  _$GetBeneficiaryResponseCopyWithImpl(this._self, this._then);

  final GetBeneficiaryResponse _self;
  final $Res Function(GetBeneficiaryResponse) _then;

/// Create a copy of GetBeneficiaryResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = freezed,Object? data = null,Object? paginationInfo = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<BlueBeneficiary>,paginationInfo: freezed == paginationInfo ? _self.paginationInfo : paginationInfo // ignore: cast_nullable_to_non_nullable
as GetBeneficiaryData?,
  ));
}
/// Create a copy of GetBeneficiaryResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GetBeneficiaryDataCopyWith<$Res>? get paginationInfo {
    if (_self.paginationInfo == null) {
    return null;
  }

  return $GetBeneficiaryDataCopyWith<$Res>(_self.paginationInfo!, (value) {
    return _then(_self.copyWith(paginationInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [GetBeneficiaryResponse].
extension GetBeneficiaryResponsePatterns on GetBeneficiaryResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetBeneficiaryResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetBeneficiaryResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetBeneficiaryResponse value)  $default,){
final _that = this;
switch (_that) {
case _GetBeneficiaryResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetBeneficiaryResponse value)?  $default,){
final _that = this;
switch (_that) {
case _GetBeneficiaryResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  String? message,  List<BlueBeneficiary> data,  GetBeneficiaryData? paginationInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetBeneficiaryResponse() when $default != null:
return $default(_that.status,_that.message,_that.data,_that.paginationInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  String? message,  List<BlueBeneficiary> data,  GetBeneficiaryData? paginationInfo)  $default,) {final _that = this;
switch (_that) {
case _GetBeneficiaryResponse():
return $default(_that.status,_that.message,_that.data,_that.paginationInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  String? message,  List<BlueBeneficiary> data,  GetBeneficiaryData? paginationInfo)?  $default,) {final _that = this;
switch (_that) {
case _GetBeneficiaryResponse() when $default != null:
return $default(_that.status,_that.message,_that.data,_that.paginationInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetBeneficiaryResponse implements GetBeneficiaryResponse {
  const _GetBeneficiaryResponse({this.status = "fail", this.message, final  List<BlueBeneficiary> data = const [], this.paginationInfo}): _data = data;
  factory _GetBeneficiaryResponse.fromJson(Map<String, dynamic> json) => _$GetBeneficiaryResponseFromJson(json);

@override@JsonKey() final  String status;
@override final  String? message;
 final  List<BlueBeneficiary> _data;
@override@JsonKey() List<BlueBeneficiary> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  GetBeneficiaryData? paginationInfo;

/// Create a copy of GetBeneficiaryResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetBeneficiaryResponseCopyWith<_GetBeneficiaryResponse> get copyWith => __$GetBeneficiaryResponseCopyWithImpl<_GetBeneficiaryResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetBeneficiaryResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetBeneficiaryResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.paginationInfo, paginationInfo) || other.paginationInfo == paginationInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(_data),paginationInfo);

@override
String toString() {
  return 'GetBeneficiaryResponse(status: $status, message: $message, data: $data, paginationInfo: $paginationInfo)';
}


}

/// @nodoc
abstract mixin class _$GetBeneficiaryResponseCopyWith<$Res> implements $GetBeneficiaryResponseCopyWith<$Res> {
  factory _$GetBeneficiaryResponseCopyWith(_GetBeneficiaryResponse value, $Res Function(_GetBeneficiaryResponse) _then) = __$GetBeneficiaryResponseCopyWithImpl;
@override @useResult
$Res call({
 String status, String? message, List<BlueBeneficiary> data, GetBeneficiaryData? paginationInfo
});


@override $GetBeneficiaryDataCopyWith<$Res>? get paginationInfo;

}
/// @nodoc
class __$GetBeneficiaryResponseCopyWithImpl<$Res>
    implements _$GetBeneficiaryResponseCopyWith<$Res> {
  __$GetBeneficiaryResponseCopyWithImpl(this._self, this._then);

  final _GetBeneficiaryResponse _self;
  final $Res Function(_GetBeneficiaryResponse) _then;

/// Create a copy of GetBeneficiaryResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = freezed,Object? data = null,Object? paginationInfo = freezed,}) {
  return _then(_GetBeneficiaryResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<BlueBeneficiary>,paginationInfo: freezed == paginationInfo ? _self.paginationInfo : paginationInfo // ignore: cast_nullable_to_non_nullable
as GetBeneficiaryData?,
  ));
}

/// Create a copy of GetBeneficiaryResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GetBeneficiaryDataCopyWith<$Res>? get paginationInfo {
    if (_self.paginationInfo == null) {
    return null;
  }

  return $GetBeneficiaryDataCopyWith<$Res>(_self.paginationInfo!, (value) {
    return _then(_self.copyWith(paginationInfo: value));
  });
}
}

// dart format on
