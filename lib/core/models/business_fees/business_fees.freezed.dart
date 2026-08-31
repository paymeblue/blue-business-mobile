// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_fees.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetBusinessFeesResponse {

 String get status; String? get message; GetBusinessFeesData? get data;
/// Create a copy of GetBusinessFeesResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetBusinessFeesResponseCopyWith<GetBusinessFeesResponse> get copyWith => _$GetBusinessFeesResponseCopyWithImpl<GetBusinessFeesResponse>(this as GetBusinessFeesResponse, _$identity);

  /// Serializes this GetBusinessFeesResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetBusinessFeesResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,data);

@override
String toString() {
  return 'GetBusinessFeesResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $GetBusinessFeesResponseCopyWith<$Res>  {
  factory $GetBusinessFeesResponseCopyWith(GetBusinessFeesResponse value, $Res Function(GetBusinessFeesResponse) _then) = _$GetBusinessFeesResponseCopyWithImpl;
@useResult
$Res call({
 String status, String? message, GetBusinessFeesData? data
});


$GetBusinessFeesDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$GetBusinessFeesResponseCopyWithImpl<$Res>
    implements $GetBusinessFeesResponseCopyWith<$Res> {
  _$GetBusinessFeesResponseCopyWithImpl(this._self, this._then);

  final GetBusinessFeesResponse _self;
  final $Res Function(GetBusinessFeesResponse) _then;

/// Create a copy of GetBusinessFeesResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as GetBusinessFeesData?,
  ));
}
/// Create a copy of GetBusinessFeesResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GetBusinessFeesDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $GetBusinessFeesDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [GetBusinessFeesResponse].
extension GetBusinessFeesResponsePatterns on GetBusinessFeesResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetBusinessFeesResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetBusinessFeesResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetBusinessFeesResponse value)  $default,){
final _that = this;
switch (_that) {
case _GetBusinessFeesResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetBusinessFeesResponse value)?  $default,){
final _that = this;
switch (_that) {
case _GetBusinessFeesResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  String? message,  GetBusinessFeesData? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetBusinessFeesResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  String? message,  GetBusinessFeesData? data)  $default,) {final _that = this;
switch (_that) {
case _GetBusinessFeesResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  String? message,  GetBusinessFeesData? data)?  $default,) {final _that = this;
switch (_that) {
case _GetBusinessFeesResponse() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetBusinessFeesResponse implements GetBusinessFeesResponse {
  const _GetBusinessFeesResponse({this.status = 'fail', this.message, this.data});
  factory _GetBusinessFeesResponse.fromJson(Map<String, dynamic> json) => _$GetBusinessFeesResponseFromJson(json);

@override@JsonKey() final  String status;
@override final  String? message;
@override final  GetBusinessFeesData? data;

/// Create a copy of GetBusinessFeesResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetBusinessFeesResponseCopyWith<_GetBusinessFeesResponse> get copyWith => __$GetBusinessFeesResponseCopyWithImpl<_GetBusinessFeesResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetBusinessFeesResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetBusinessFeesResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,data);

@override
String toString() {
  return 'GetBusinessFeesResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$GetBusinessFeesResponseCopyWith<$Res> implements $GetBusinessFeesResponseCopyWith<$Res> {
  factory _$GetBusinessFeesResponseCopyWith(_GetBusinessFeesResponse value, $Res Function(_GetBusinessFeesResponse) _then) = __$GetBusinessFeesResponseCopyWithImpl;
@override @useResult
$Res call({
 String status, String? message, GetBusinessFeesData? data
});


@override $GetBusinessFeesDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$GetBusinessFeesResponseCopyWithImpl<$Res>
    implements _$GetBusinessFeesResponseCopyWith<$Res> {
  __$GetBusinessFeesResponseCopyWithImpl(this._self, this._then);

  final _GetBusinessFeesResponse _self;
  final $Res Function(_GetBusinessFeesResponse) _then;

/// Create a copy of GetBusinessFeesResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = freezed,Object? data = freezed,}) {
  return _then(_GetBusinessFeesResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as GetBusinessFeesData?,
  ));
}

/// Create a copy of GetBusinessFeesResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GetBusinessFeesDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $GetBusinessFeesDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$GetBusinessFeesData {

 int get id; int get businessId; double get withdrawal; double get billPayment; double get transfers; double get blueToBlue; String? get createdAt; String? get updatedAt;
/// Create a copy of GetBusinessFeesData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetBusinessFeesDataCopyWith<GetBusinessFeesData> get copyWith => _$GetBusinessFeesDataCopyWithImpl<GetBusinessFeesData>(this as GetBusinessFeesData, _$identity);

  /// Serializes this GetBusinessFeesData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetBusinessFeesData&&(identical(other.id, id) || other.id == id)&&(identical(other.businessId, businessId) || other.businessId == businessId)&&(identical(other.withdrawal, withdrawal) || other.withdrawal == withdrawal)&&(identical(other.billPayment, billPayment) || other.billPayment == billPayment)&&(identical(other.transfers, transfers) || other.transfers == transfers)&&(identical(other.blueToBlue, blueToBlue) || other.blueToBlue == blueToBlue)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,businessId,withdrawal,billPayment,transfers,blueToBlue,createdAt,updatedAt);

@override
String toString() {
  return 'GetBusinessFeesData(id: $id, businessId: $businessId, withdrawal: $withdrawal, billPayment: $billPayment, transfers: $transfers, blueToBlue: $blueToBlue, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $GetBusinessFeesDataCopyWith<$Res>  {
  factory $GetBusinessFeesDataCopyWith(GetBusinessFeesData value, $Res Function(GetBusinessFeesData) _then) = _$GetBusinessFeesDataCopyWithImpl;
@useResult
$Res call({
 int id, int businessId, double withdrawal, double billPayment, double transfers, double blueToBlue, String? createdAt, String? updatedAt
});




}
/// @nodoc
class _$GetBusinessFeesDataCopyWithImpl<$Res>
    implements $GetBusinessFeesDataCopyWith<$Res> {
  _$GetBusinessFeesDataCopyWithImpl(this._self, this._then);

  final GetBusinessFeesData _self;
  final $Res Function(GetBusinessFeesData) _then;

/// Create a copy of GetBusinessFeesData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? businessId = null,Object? withdrawal = null,Object? billPayment = null,Object? transfers = null,Object? blueToBlue = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,businessId: null == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as int,withdrawal: null == withdrawal ? _self.withdrawal : withdrawal // ignore: cast_nullable_to_non_nullable
as double,billPayment: null == billPayment ? _self.billPayment : billPayment // ignore: cast_nullable_to_non_nullable
as double,transfers: null == transfers ? _self.transfers : transfers // ignore: cast_nullable_to_non_nullable
as double,blueToBlue: null == blueToBlue ? _self.blueToBlue : blueToBlue // ignore: cast_nullable_to_non_nullable
as double,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GetBusinessFeesData].
extension GetBusinessFeesDataPatterns on GetBusinessFeesData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetBusinessFeesData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetBusinessFeesData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetBusinessFeesData value)  $default,){
final _that = this;
switch (_that) {
case _GetBusinessFeesData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetBusinessFeesData value)?  $default,){
final _that = this;
switch (_that) {
case _GetBusinessFeesData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int businessId,  double withdrawal,  double billPayment,  double transfers,  double blueToBlue,  String? createdAt,  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetBusinessFeesData() when $default != null:
return $default(_that.id,_that.businessId,_that.withdrawal,_that.billPayment,_that.transfers,_that.blueToBlue,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int businessId,  double withdrawal,  double billPayment,  double transfers,  double blueToBlue,  String? createdAt,  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _GetBusinessFeesData():
return $default(_that.id,_that.businessId,_that.withdrawal,_that.billPayment,_that.transfers,_that.blueToBlue,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int businessId,  double withdrawal,  double billPayment,  double transfers,  double blueToBlue,  String? createdAt,  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _GetBusinessFeesData() when $default != null:
return $default(_that.id,_that.businessId,_that.withdrawal,_that.billPayment,_that.transfers,_that.blueToBlue,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetBusinessFeesData implements GetBusinessFeesData {
  const _GetBusinessFeesData({required this.id, required this.businessId, this.withdrawal = 0, this.billPayment = 0, this.transfers = 0, this.blueToBlue = 0, this.createdAt, this.updatedAt});
  factory _GetBusinessFeesData.fromJson(Map<String, dynamic> json) => _$GetBusinessFeesDataFromJson(json);

@override final  int id;
@override final  int businessId;
@override@JsonKey() final  double withdrawal;
@override@JsonKey() final  double billPayment;
@override@JsonKey() final  double transfers;
@override@JsonKey() final  double blueToBlue;
@override final  String? createdAt;
@override final  String? updatedAt;

/// Create a copy of GetBusinessFeesData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetBusinessFeesDataCopyWith<_GetBusinessFeesData> get copyWith => __$GetBusinessFeesDataCopyWithImpl<_GetBusinessFeesData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetBusinessFeesDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetBusinessFeesData&&(identical(other.id, id) || other.id == id)&&(identical(other.businessId, businessId) || other.businessId == businessId)&&(identical(other.withdrawal, withdrawal) || other.withdrawal == withdrawal)&&(identical(other.billPayment, billPayment) || other.billPayment == billPayment)&&(identical(other.transfers, transfers) || other.transfers == transfers)&&(identical(other.blueToBlue, blueToBlue) || other.blueToBlue == blueToBlue)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,businessId,withdrawal,billPayment,transfers,blueToBlue,createdAt,updatedAt);

@override
String toString() {
  return 'GetBusinessFeesData(id: $id, businessId: $businessId, withdrawal: $withdrawal, billPayment: $billPayment, transfers: $transfers, blueToBlue: $blueToBlue, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$GetBusinessFeesDataCopyWith<$Res> implements $GetBusinessFeesDataCopyWith<$Res> {
  factory _$GetBusinessFeesDataCopyWith(_GetBusinessFeesData value, $Res Function(_GetBusinessFeesData) _then) = __$GetBusinessFeesDataCopyWithImpl;
@override @useResult
$Res call({
 int id, int businessId, double withdrawal, double billPayment, double transfers, double blueToBlue, String? createdAt, String? updatedAt
});




}
/// @nodoc
class __$GetBusinessFeesDataCopyWithImpl<$Res>
    implements _$GetBusinessFeesDataCopyWith<$Res> {
  __$GetBusinessFeesDataCopyWithImpl(this._self, this._then);

  final _GetBusinessFeesData _self;
  final $Res Function(_GetBusinessFeesData) _then;

/// Create a copy of GetBusinessFeesData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? businessId = null,Object? withdrawal = null,Object? billPayment = null,Object? transfers = null,Object? blueToBlue = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_GetBusinessFeesData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,businessId: null == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as int,withdrawal: null == withdrawal ? _self.withdrawal : withdrawal // ignore: cast_nullable_to_non_nullable
as double,billPayment: null == billPayment ? _self.billPayment : billPayment // ignore: cast_nullable_to_non_nullable
as double,transfers: null == transfers ? _self.transfers : transfers // ignore: cast_nullable_to_non_nullable
as double,blueToBlue: null == blueToBlue ? _self.blueToBlue : blueToBlue // ignore: cast_nullable_to_non_nullable
as double,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
