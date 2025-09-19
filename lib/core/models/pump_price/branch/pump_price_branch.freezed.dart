// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pump_price_branch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreatePumpPriceBranchRequest {

 String get name; String get address; double get fuelPrice; double get latitude; double get longitude; String get opening; String get closing;
/// Create a copy of CreatePumpPriceBranchRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePumpPriceBranchRequestCopyWith<CreatePumpPriceBranchRequest> get copyWith => _$CreatePumpPriceBranchRequestCopyWithImpl<CreatePumpPriceBranchRequest>(this as CreatePumpPriceBranchRequest, _$identity);

  /// Serializes this CreatePumpPriceBranchRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePumpPriceBranchRequest&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.fuelPrice, fuelPrice) || other.fuelPrice == fuelPrice)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.opening, opening) || other.opening == opening)&&(identical(other.closing, closing) || other.closing == closing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,address,fuelPrice,latitude,longitude,opening,closing);

@override
String toString() {
  return 'CreatePumpPriceBranchRequest(name: $name, address: $address, fuelPrice: $fuelPrice, latitude: $latitude, longitude: $longitude, opening: $opening, closing: $closing)';
}


}

/// @nodoc
abstract mixin class $CreatePumpPriceBranchRequestCopyWith<$Res>  {
  factory $CreatePumpPriceBranchRequestCopyWith(CreatePumpPriceBranchRequest value, $Res Function(CreatePumpPriceBranchRequest) _then) = _$CreatePumpPriceBranchRequestCopyWithImpl;
@useResult
$Res call({
 String name, String address, double fuelPrice, double latitude, double longitude, String opening, String closing
});




}
/// @nodoc
class _$CreatePumpPriceBranchRequestCopyWithImpl<$Res>
    implements $CreatePumpPriceBranchRequestCopyWith<$Res> {
  _$CreatePumpPriceBranchRequestCopyWithImpl(this._self, this._then);

  final CreatePumpPriceBranchRequest _self;
  final $Res Function(CreatePumpPriceBranchRequest) _then;

/// Create a copy of CreatePumpPriceBranchRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? address = null,Object? fuelPrice = null,Object? latitude = null,Object? longitude = null,Object? opening = null,Object? closing = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,fuelPrice: null == fuelPrice ? _self.fuelPrice : fuelPrice // ignore: cast_nullable_to_non_nullable
as double,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,opening: null == opening ? _self.opening : opening // ignore: cast_nullable_to_non_nullable
as String,closing: null == closing ? _self.closing : closing // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreatePumpPriceBranchRequest].
extension CreatePumpPriceBranchRequestPatterns on CreatePumpPriceBranchRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatePumpPriceBranchRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatePumpPriceBranchRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatePumpPriceBranchRequest value)  $default,){
final _that = this;
switch (_that) {
case _CreatePumpPriceBranchRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatePumpPriceBranchRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CreatePumpPriceBranchRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String address,  double fuelPrice,  double latitude,  double longitude,  String opening,  String closing)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreatePumpPriceBranchRequest() when $default != null:
return $default(_that.name,_that.address,_that.fuelPrice,_that.latitude,_that.longitude,_that.opening,_that.closing);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String address,  double fuelPrice,  double latitude,  double longitude,  String opening,  String closing)  $default,) {final _that = this;
switch (_that) {
case _CreatePumpPriceBranchRequest():
return $default(_that.name,_that.address,_that.fuelPrice,_that.latitude,_that.longitude,_that.opening,_that.closing);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String address,  double fuelPrice,  double latitude,  double longitude,  String opening,  String closing)?  $default,) {final _that = this;
switch (_that) {
case _CreatePumpPriceBranchRequest() when $default != null:
return $default(_that.name,_that.address,_that.fuelPrice,_that.latitude,_that.longitude,_that.opening,_that.closing);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreatePumpPriceBranchRequest implements CreatePumpPriceBranchRequest {
  const _CreatePumpPriceBranchRequest({required this.name, required this.address, required this.fuelPrice, required this.latitude, required this.longitude, required this.opening, required this.closing});
  factory _CreatePumpPriceBranchRequest.fromJson(Map<String, dynamic> json) => _$CreatePumpPriceBranchRequestFromJson(json);

@override final  String name;
@override final  String address;
@override final  double fuelPrice;
@override final  double latitude;
@override final  double longitude;
@override final  String opening;
@override final  String closing;

/// Create a copy of CreatePumpPriceBranchRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatePumpPriceBranchRequestCopyWith<_CreatePumpPriceBranchRequest> get copyWith => __$CreatePumpPriceBranchRequestCopyWithImpl<_CreatePumpPriceBranchRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreatePumpPriceBranchRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatePumpPriceBranchRequest&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.fuelPrice, fuelPrice) || other.fuelPrice == fuelPrice)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.opening, opening) || other.opening == opening)&&(identical(other.closing, closing) || other.closing == closing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,address,fuelPrice,latitude,longitude,opening,closing);

@override
String toString() {
  return 'CreatePumpPriceBranchRequest(name: $name, address: $address, fuelPrice: $fuelPrice, latitude: $latitude, longitude: $longitude, opening: $opening, closing: $closing)';
}


}

/// @nodoc
abstract mixin class _$CreatePumpPriceBranchRequestCopyWith<$Res> implements $CreatePumpPriceBranchRequestCopyWith<$Res> {
  factory _$CreatePumpPriceBranchRequestCopyWith(_CreatePumpPriceBranchRequest value, $Res Function(_CreatePumpPriceBranchRequest) _then) = __$CreatePumpPriceBranchRequestCopyWithImpl;
@override @useResult
$Res call({
 String name, String address, double fuelPrice, double latitude, double longitude, String opening, String closing
});




}
/// @nodoc
class __$CreatePumpPriceBranchRequestCopyWithImpl<$Res>
    implements _$CreatePumpPriceBranchRequestCopyWith<$Res> {
  __$CreatePumpPriceBranchRequestCopyWithImpl(this._self, this._then);

  final _CreatePumpPriceBranchRequest _self;
  final $Res Function(_CreatePumpPriceBranchRequest) _then;

/// Create a copy of CreatePumpPriceBranchRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? address = null,Object? fuelPrice = null,Object? latitude = null,Object? longitude = null,Object? opening = null,Object? closing = null,}) {
  return _then(_CreatePumpPriceBranchRequest(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,fuelPrice: null == fuelPrice ? _self.fuelPrice : fuelPrice // ignore: cast_nullable_to_non_nullable
as double,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,opening: null == opening ? _self.opening : opening // ignore: cast_nullable_to_non_nullable
as String,closing: null == closing ? _self.closing : closing // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$EditPumpPriceBranchRequest {

 String? get name; String? get address; double? get fuelPrice; double? get latitude; double? get longitude; String? get opening; String? get closing;
/// Create a copy of EditPumpPriceBranchRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditPumpPriceBranchRequestCopyWith<EditPumpPriceBranchRequest> get copyWith => _$EditPumpPriceBranchRequestCopyWithImpl<EditPumpPriceBranchRequest>(this as EditPumpPriceBranchRequest, _$identity);

  /// Serializes this EditPumpPriceBranchRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditPumpPriceBranchRequest&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.fuelPrice, fuelPrice) || other.fuelPrice == fuelPrice)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.opening, opening) || other.opening == opening)&&(identical(other.closing, closing) || other.closing == closing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,address,fuelPrice,latitude,longitude,opening,closing);

@override
String toString() {
  return 'EditPumpPriceBranchRequest(name: $name, address: $address, fuelPrice: $fuelPrice, latitude: $latitude, longitude: $longitude, opening: $opening, closing: $closing)';
}


}

/// @nodoc
abstract mixin class $EditPumpPriceBranchRequestCopyWith<$Res>  {
  factory $EditPumpPriceBranchRequestCopyWith(EditPumpPriceBranchRequest value, $Res Function(EditPumpPriceBranchRequest) _then) = _$EditPumpPriceBranchRequestCopyWithImpl;
@useResult
$Res call({
 String? name, String? address, double? fuelPrice, double? latitude, double? longitude, String? opening, String? closing
});




}
/// @nodoc
class _$EditPumpPriceBranchRequestCopyWithImpl<$Res>
    implements $EditPumpPriceBranchRequestCopyWith<$Res> {
  _$EditPumpPriceBranchRequestCopyWithImpl(this._self, this._then);

  final EditPumpPriceBranchRequest _self;
  final $Res Function(EditPumpPriceBranchRequest) _then;

/// Create a copy of EditPumpPriceBranchRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? address = freezed,Object? fuelPrice = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? opening = freezed,Object? closing = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,fuelPrice: freezed == fuelPrice ? _self.fuelPrice : fuelPrice // ignore: cast_nullable_to_non_nullable
as double?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,opening: freezed == opening ? _self.opening : opening // ignore: cast_nullable_to_non_nullable
as String?,closing: freezed == closing ? _self.closing : closing // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [EditPumpPriceBranchRequest].
extension EditPumpPriceBranchRequestPatterns on EditPumpPriceBranchRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EditPumpPriceBranchRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EditPumpPriceBranchRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EditPumpPriceBranchRequest value)  $default,){
final _that = this;
switch (_that) {
case _EditPumpPriceBranchRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EditPumpPriceBranchRequest value)?  $default,){
final _that = this;
switch (_that) {
case _EditPumpPriceBranchRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? address,  double? fuelPrice,  double? latitude,  double? longitude,  String? opening,  String? closing)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EditPumpPriceBranchRequest() when $default != null:
return $default(_that.name,_that.address,_that.fuelPrice,_that.latitude,_that.longitude,_that.opening,_that.closing);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? address,  double? fuelPrice,  double? latitude,  double? longitude,  String? opening,  String? closing)  $default,) {final _that = this;
switch (_that) {
case _EditPumpPriceBranchRequest():
return $default(_that.name,_that.address,_that.fuelPrice,_that.latitude,_that.longitude,_that.opening,_that.closing);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? address,  double? fuelPrice,  double? latitude,  double? longitude,  String? opening,  String? closing)?  $default,) {final _that = this;
switch (_that) {
case _EditPumpPriceBranchRequest() when $default != null:
return $default(_that.name,_that.address,_that.fuelPrice,_that.latitude,_that.longitude,_that.opening,_that.closing);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EditPumpPriceBranchRequest implements EditPumpPriceBranchRequest {
  const _EditPumpPriceBranchRequest({this.name, this.address, this.fuelPrice, this.latitude, this.longitude, this.opening, this.closing});
  factory _EditPumpPriceBranchRequest.fromJson(Map<String, dynamic> json) => _$EditPumpPriceBranchRequestFromJson(json);

@override final  String? name;
@override final  String? address;
@override final  double? fuelPrice;
@override final  double? latitude;
@override final  double? longitude;
@override final  String? opening;
@override final  String? closing;

/// Create a copy of EditPumpPriceBranchRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditPumpPriceBranchRequestCopyWith<_EditPumpPriceBranchRequest> get copyWith => __$EditPumpPriceBranchRequestCopyWithImpl<_EditPumpPriceBranchRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EditPumpPriceBranchRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditPumpPriceBranchRequest&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.fuelPrice, fuelPrice) || other.fuelPrice == fuelPrice)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.opening, opening) || other.opening == opening)&&(identical(other.closing, closing) || other.closing == closing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,address,fuelPrice,latitude,longitude,opening,closing);

@override
String toString() {
  return 'EditPumpPriceBranchRequest(name: $name, address: $address, fuelPrice: $fuelPrice, latitude: $latitude, longitude: $longitude, opening: $opening, closing: $closing)';
}


}

/// @nodoc
abstract mixin class _$EditPumpPriceBranchRequestCopyWith<$Res> implements $EditPumpPriceBranchRequestCopyWith<$Res> {
  factory _$EditPumpPriceBranchRequestCopyWith(_EditPumpPriceBranchRequest value, $Res Function(_EditPumpPriceBranchRequest) _then) = __$EditPumpPriceBranchRequestCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? address, double? fuelPrice, double? latitude, double? longitude, String? opening, String? closing
});




}
/// @nodoc
class __$EditPumpPriceBranchRequestCopyWithImpl<$Res>
    implements _$EditPumpPriceBranchRequestCopyWith<$Res> {
  __$EditPumpPriceBranchRequestCopyWithImpl(this._self, this._then);

  final _EditPumpPriceBranchRequest _self;
  final $Res Function(_EditPumpPriceBranchRequest) _then;

/// Create a copy of EditPumpPriceBranchRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? address = freezed,Object? fuelPrice = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? opening = freezed,Object? closing = freezed,}) {
  return _then(_EditPumpPriceBranchRequest(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,fuelPrice: freezed == fuelPrice ? _self.fuelPrice : fuelPrice // ignore: cast_nullable_to_non_nullable
as double?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,opening: freezed == opening ? _self.opening : opening // ignore: cast_nullable_to_non_nullable
as String?,closing: freezed == closing ? _self.closing : closing // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CreatePumpPriceBranchResponse {

 String get message; String get status; CreateFillingStationData? get data;
/// Create a copy of CreatePumpPriceBranchResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePumpPriceBranchResponseCopyWith<CreatePumpPriceBranchResponse> get copyWith => _$CreatePumpPriceBranchResponseCopyWithImpl<CreatePumpPriceBranchResponse>(this as CreatePumpPriceBranchResponse, _$identity);

  /// Serializes this CreatePumpPriceBranchResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePumpPriceBranchResponse&&(identical(other.message, message) || other.message == message)&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,status,data);

@override
String toString() {
  return 'CreatePumpPriceBranchResponse(message: $message, status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class $CreatePumpPriceBranchResponseCopyWith<$Res>  {
  factory $CreatePumpPriceBranchResponseCopyWith(CreatePumpPriceBranchResponse value, $Res Function(CreatePumpPriceBranchResponse) _then) = _$CreatePumpPriceBranchResponseCopyWithImpl;
@useResult
$Res call({
 String message, String status, CreateFillingStationData? data
});


$CreateFillingStationDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$CreatePumpPriceBranchResponseCopyWithImpl<$Res>
    implements $CreatePumpPriceBranchResponseCopyWith<$Res> {
  _$CreatePumpPriceBranchResponseCopyWithImpl(this._self, this._then);

  final CreatePumpPriceBranchResponse _self;
  final $Res Function(CreatePumpPriceBranchResponse) _then;

/// Create a copy of CreatePumpPriceBranchResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? status = null,Object? data = freezed,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CreateFillingStationData?,
  ));
}
/// Create a copy of CreatePumpPriceBranchResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateFillingStationDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $CreateFillingStationDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreatePumpPriceBranchResponse].
extension CreatePumpPriceBranchResponsePatterns on CreatePumpPriceBranchResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatePumpPriceBranchResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatePumpPriceBranchResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatePumpPriceBranchResponse value)  $default,){
final _that = this;
switch (_that) {
case _CreatePumpPriceBranchResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatePumpPriceBranchResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CreatePumpPriceBranchResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message,  String status,  CreateFillingStationData? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreatePumpPriceBranchResponse() when $default != null:
return $default(_that.message,_that.status,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message,  String status,  CreateFillingStationData? data)  $default,) {final _that = this;
switch (_that) {
case _CreatePumpPriceBranchResponse():
return $default(_that.message,_that.status,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message,  String status,  CreateFillingStationData? data)?  $default,) {final _that = this;
switch (_that) {
case _CreatePumpPriceBranchResponse() when $default != null:
return $default(_that.message,_that.status,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreatePumpPriceBranchResponse implements CreatePumpPriceBranchResponse {
  const _CreatePumpPriceBranchResponse({this.message = '', this.status = 'fail', this.data});
  factory _CreatePumpPriceBranchResponse.fromJson(Map<String, dynamic> json) => _$CreatePumpPriceBranchResponseFromJson(json);

@override@JsonKey() final  String message;
@override@JsonKey() final  String status;
@override final  CreateFillingStationData? data;

/// Create a copy of CreatePumpPriceBranchResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatePumpPriceBranchResponseCopyWith<_CreatePumpPriceBranchResponse> get copyWith => __$CreatePumpPriceBranchResponseCopyWithImpl<_CreatePumpPriceBranchResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreatePumpPriceBranchResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatePumpPriceBranchResponse&&(identical(other.message, message) || other.message == message)&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,status,data);

@override
String toString() {
  return 'CreatePumpPriceBranchResponse(message: $message, status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class _$CreatePumpPriceBranchResponseCopyWith<$Res> implements $CreatePumpPriceBranchResponseCopyWith<$Res> {
  factory _$CreatePumpPriceBranchResponseCopyWith(_CreatePumpPriceBranchResponse value, $Res Function(_CreatePumpPriceBranchResponse) _then) = __$CreatePumpPriceBranchResponseCopyWithImpl;
@override @useResult
$Res call({
 String message, String status, CreateFillingStationData? data
});


@override $CreateFillingStationDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$CreatePumpPriceBranchResponseCopyWithImpl<$Res>
    implements _$CreatePumpPriceBranchResponseCopyWith<$Res> {
  __$CreatePumpPriceBranchResponseCopyWithImpl(this._self, this._then);

  final _CreatePumpPriceBranchResponse _self;
  final $Res Function(_CreatePumpPriceBranchResponse) _then;

/// Create a copy of CreatePumpPriceBranchResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? status = null,Object? data = freezed,}) {
  return _then(_CreatePumpPriceBranchResponse(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CreateFillingStationData?,
  ));
}

/// Create a copy of CreatePumpPriceBranchResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateFillingStationDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $CreateFillingStationDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$CreateFillingStationData {

 String get id; String get branchId; double get fuelPrice; String get opening; String get closing; double get longitude; double get latitude; String get address; String? get createdAt; String? get updatedAt;
/// Create a copy of CreateFillingStationData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateFillingStationDataCopyWith<CreateFillingStationData> get copyWith => _$CreateFillingStationDataCopyWithImpl<CreateFillingStationData>(this as CreateFillingStationData, _$identity);

  /// Serializes this CreateFillingStationData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateFillingStationData&&(identical(other.id, id) || other.id == id)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.fuelPrice, fuelPrice) || other.fuelPrice == fuelPrice)&&(identical(other.opening, opening) || other.opening == opening)&&(identical(other.closing, closing) || other.closing == closing)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.address, address) || other.address == address)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,branchId,fuelPrice,opening,closing,longitude,latitude,address,createdAt,updatedAt);

@override
String toString() {
  return 'CreateFillingStationData(id: $id, branchId: $branchId, fuelPrice: $fuelPrice, opening: $opening, closing: $closing, longitude: $longitude, latitude: $latitude, address: $address, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $CreateFillingStationDataCopyWith<$Res>  {
  factory $CreateFillingStationDataCopyWith(CreateFillingStationData value, $Res Function(CreateFillingStationData) _then) = _$CreateFillingStationDataCopyWithImpl;
@useResult
$Res call({
 String id, String branchId, double fuelPrice, String opening, String closing, double longitude, double latitude, String address, String? createdAt, String? updatedAt
});




}
/// @nodoc
class _$CreateFillingStationDataCopyWithImpl<$Res>
    implements $CreateFillingStationDataCopyWith<$Res> {
  _$CreateFillingStationDataCopyWithImpl(this._self, this._then);

  final CreateFillingStationData _self;
  final $Res Function(CreateFillingStationData) _then;

/// Create a copy of CreateFillingStationData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? branchId = null,Object? fuelPrice = null,Object? opening = null,Object? closing = null,Object? longitude = null,Object? latitude = null,Object? address = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String,fuelPrice: null == fuelPrice ? _self.fuelPrice : fuelPrice // ignore: cast_nullable_to_non_nullable
as double,opening: null == opening ? _self.opening : opening // ignore: cast_nullable_to_non_nullable
as String,closing: null == closing ? _self.closing : closing // ignore: cast_nullable_to_non_nullable
as String,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateFillingStationData].
extension CreateFillingStationDataPatterns on CreateFillingStationData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateFillingStationData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateFillingStationData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateFillingStationData value)  $default,){
final _that = this;
switch (_that) {
case _CreateFillingStationData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateFillingStationData value)?  $default,){
final _that = this;
switch (_that) {
case _CreateFillingStationData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String branchId,  double fuelPrice,  String opening,  String closing,  double longitude,  double latitude,  String address,  String? createdAt,  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateFillingStationData() when $default != null:
return $default(_that.id,_that.branchId,_that.fuelPrice,_that.opening,_that.closing,_that.longitude,_that.latitude,_that.address,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String branchId,  double fuelPrice,  String opening,  String closing,  double longitude,  double latitude,  String address,  String? createdAt,  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _CreateFillingStationData():
return $default(_that.id,_that.branchId,_that.fuelPrice,_that.opening,_that.closing,_that.longitude,_that.latitude,_that.address,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String branchId,  double fuelPrice,  String opening,  String closing,  double longitude,  double latitude,  String address,  String? createdAt,  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _CreateFillingStationData() when $default != null:
return $default(_that.id,_that.branchId,_that.fuelPrice,_that.opening,_that.closing,_that.longitude,_that.latitude,_that.address,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateFillingStationData implements CreateFillingStationData {
  const _CreateFillingStationData({required this.id, required this.branchId, required this.fuelPrice, required this.opening, required this.closing, required this.longitude, required this.latitude, required this.address, this.createdAt, this.updatedAt});
  factory _CreateFillingStationData.fromJson(Map<String, dynamic> json) => _$CreateFillingStationDataFromJson(json);

@override final  String id;
@override final  String branchId;
@override final  double fuelPrice;
@override final  String opening;
@override final  String closing;
@override final  double longitude;
@override final  double latitude;
@override final  String address;
@override final  String? createdAt;
@override final  String? updatedAt;

/// Create a copy of CreateFillingStationData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateFillingStationDataCopyWith<_CreateFillingStationData> get copyWith => __$CreateFillingStationDataCopyWithImpl<_CreateFillingStationData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateFillingStationDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateFillingStationData&&(identical(other.id, id) || other.id == id)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.fuelPrice, fuelPrice) || other.fuelPrice == fuelPrice)&&(identical(other.opening, opening) || other.opening == opening)&&(identical(other.closing, closing) || other.closing == closing)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.address, address) || other.address == address)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,branchId,fuelPrice,opening,closing,longitude,latitude,address,createdAt,updatedAt);

@override
String toString() {
  return 'CreateFillingStationData(id: $id, branchId: $branchId, fuelPrice: $fuelPrice, opening: $opening, closing: $closing, longitude: $longitude, latitude: $latitude, address: $address, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$CreateFillingStationDataCopyWith<$Res> implements $CreateFillingStationDataCopyWith<$Res> {
  factory _$CreateFillingStationDataCopyWith(_CreateFillingStationData value, $Res Function(_CreateFillingStationData) _then) = __$CreateFillingStationDataCopyWithImpl;
@override @useResult
$Res call({
 String id, String branchId, double fuelPrice, String opening, String closing, double longitude, double latitude, String address, String? createdAt, String? updatedAt
});




}
/// @nodoc
class __$CreateFillingStationDataCopyWithImpl<$Res>
    implements _$CreateFillingStationDataCopyWith<$Res> {
  __$CreateFillingStationDataCopyWithImpl(this._self, this._then);

  final _CreateFillingStationData _self;
  final $Res Function(_CreateFillingStationData) _then;

/// Create a copy of CreateFillingStationData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? branchId = null,Object? fuelPrice = null,Object? opening = null,Object? closing = null,Object? longitude = null,Object? latitude = null,Object? address = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_CreateFillingStationData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String,fuelPrice: null == fuelPrice ? _self.fuelPrice : fuelPrice // ignore: cast_nullable_to_non_nullable
as double,opening: null == opening ? _self.opening : opening // ignore: cast_nullable_to_non_nullable
as String,closing: null == closing ? _self.closing : closing // ignore: cast_nullable_to_non_nullable
as String,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$EditPumpPriceBranchResponse {

 String get message; String get status; EditFillingStationData? get data;
/// Create a copy of EditPumpPriceBranchResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditPumpPriceBranchResponseCopyWith<EditPumpPriceBranchResponse> get copyWith => _$EditPumpPriceBranchResponseCopyWithImpl<EditPumpPriceBranchResponse>(this as EditPumpPriceBranchResponse, _$identity);

  /// Serializes this EditPumpPriceBranchResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditPumpPriceBranchResponse&&(identical(other.message, message) || other.message == message)&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,status,data);

@override
String toString() {
  return 'EditPumpPriceBranchResponse(message: $message, status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class $EditPumpPriceBranchResponseCopyWith<$Res>  {
  factory $EditPumpPriceBranchResponseCopyWith(EditPumpPriceBranchResponse value, $Res Function(EditPumpPriceBranchResponse) _then) = _$EditPumpPriceBranchResponseCopyWithImpl;
@useResult
$Res call({
 String message, String status, EditFillingStationData? data
});


$EditFillingStationDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$EditPumpPriceBranchResponseCopyWithImpl<$Res>
    implements $EditPumpPriceBranchResponseCopyWith<$Res> {
  _$EditPumpPriceBranchResponseCopyWithImpl(this._self, this._then);

  final EditPumpPriceBranchResponse _self;
  final $Res Function(EditPumpPriceBranchResponse) _then;

/// Create a copy of EditPumpPriceBranchResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? status = null,Object? data = freezed,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as EditFillingStationData?,
  ));
}
/// Create a copy of EditPumpPriceBranchResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EditFillingStationDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $EditFillingStationDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [EditPumpPriceBranchResponse].
extension EditPumpPriceBranchResponsePatterns on EditPumpPriceBranchResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EditPumpPriceBranchResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EditPumpPriceBranchResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EditPumpPriceBranchResponse value)  $default,){
final _that = this;
switch (_that) {
case _EditPumpPriceBranchResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EditPumpPriceBranchResponse value)?  $default,){
final _that = this;
switch (_that) {
case _EditPumpPriceBranchResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message,  String status,  EditFillingStationData? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EditPumpPriceBranchResponse() when $default != null:
return $default(_that.message,_that.status,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message,  String status,  EditFillingStationData? data)  $default,) {final _that = this;
switch (_that) {
case _EditPumpPriceBranchResponse():
return $default(_that.message,_that.status,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message,  String status,  EditFillingStationData? data)?  $default,) {final _that = this;
switch (_that) {
case _EditPumpPriceBranchResponse() when $default != null:
return $default(_that.message,_that.status,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EditPumpPriceBranchResponse implements EditPumpPriceBranchResponse {
  const _EditPumpPriceBranchResponse({this.message = '', this.status = 'fail', this.data});
  factory _EditPumpPriceBranchResponse.fromJson(Map<String, dynamic> json) => _$EditPumpPriceBranchResponseFromJson(json);

@override@JsonKey() final  String message;
@override@JsonKey() final  String status;
@override final  EditFillingStationData? data;

/// Create a copy of EditPumpPriceBranchResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditPumpPriceBranchResponseCopyWith<_EditPumpPriceBranchResponse> get copyWith => __$EditPumpPriceBranchResponseCopyWithImpl<_EditPumpPriceBranchResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EditPumpPriceBranchResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditPumpPriceBranchResponse&&(identical(other.message, message) || other.message == message)&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,status,data);

@override
String toString() {
  return 'EditPumpPriceBranchResponse(message: $message, status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class _$EditPumpPriceBranchResponseCopyWith<$Res> implements $EditPumpPriceBranchResponseCopyWith<$Res> {
  factory _$EditPumpPriceBranchResponseCopyWith(_EditPumpPriceBranchResponse value, $Res Function(_EditPumpPriceBranchResponse) _then) = __$EditPumpPriceBranchResponseCopyWithImpl;
@override @useResult
$Res call({
 String message, String status, EditFillingStationData? data
});


@override $EditFillingStationDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$EditPumpPriceBranchResponseCopyWithImpl<$Res>
    implements _$EditPumpPriceBranchResponseCopyWith<$Res> {
  __$EditPumpPriceBranchResponseCopyWithImpl(this._self, this._then);

  final _EditPumpPriceBranchResponse _self;
  final $Res Function(_EditPumpPriceBranchResponse) _then;

/// Create a copy of EditPumpPriceBranchResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? status = null,Object? data = freezed,}) {
  return _then(_EditPumpPriceBranchResponse(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as EditFillingStationData?,
  ));
}

/// Create a copy of EditPumpPriceBranchResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EditFillingStationDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $EditFillingStationDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$EditFillingStationData {

 String get id; String get branchId; double get fuelPrice; String get opening; String get closing; String get longitude; String get latitude; String get address; String? get createdAt; String? get updatedAt; String? get deletedAt;
/// Create a copy of EditFillingStationData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditFillingStationDataCopyWith<EditFillingStationData> get copyWith => _$EditFillingStationDataCopyWithImpl<EditFillingStationData>(this as EditFillingStationData, _$identity);

  /// Serializes this EditFillingStationData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditFillingStationData&&(identical(other.id, id) || other.id == id)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.fuelPrice, fuelPrice) || other.fuelPrice == fuelPrice)&&(identical(other.opening, opening) || other.opening == opening)&&(identical(other.closing, closing) || other.closing == closing)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.address, address) || other.address == address)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,branchId,fuelPrice,opening,closing,longitude,latitude,address,createdAt,updatedAt,deletedAt);

@override
String toString() {
  return 'EditFillingStationData(id: $id, branchId: $branchId, fuelPrice: $fuelPrice, opening: $opening, closing: $closing, longitude: $longitude, latitude: $latitude, address: $address, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
}


}

/// @nodoc
abstract mixin class $EditFillingStationDataCopyWith<$Res>  {
  factory $EditFillingStationDataCopyWith(EditFillingStationData value, $Res Function(EditFillingStationData) _then) = _$EditFillingStationDataCopyWithImpl;
@useResult
$Res call({
 String id, String branchId, double fuelPrice, String opening, String closing, String longitude, String latitude, String address, String? createdAt, String? updatedAt, String? deletedAt
});




}
/// @nodoc
class _$EditFillingStationDataCopyWithImpl<$Res>
    implements $EditFillingStationDataCopyWith<$Res> {
  _$EditFillingStationDataCopyWithImpl(this._self, this._then);

  final EditFillingStationData _self;
  final $Res Function(EditFillingStationData) _then;

/// Create a copy of EditFillingStationData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? branchId = null,Object? fuelPrice = null,Object? opening = null,Object? closing = null,Object? longitude = null,Object? latitude = null,Object? address = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? deletedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String,fuelPrice: null == fuelPrice ? _self.fuelPrice : fuelPrice // ignore: cast_nullable_to_non_nullable
as double,opening: null == opening ? _self.opening : opening // ignore: cast_nullable_to_non_nullable
as String,closing: null == closing ? _self.closing : closing // ignore: cast_nullable_to_non_nullable
as String,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [EditFillingStationData].
extension EditFillingStationDataPatterns on EditFillingStationData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EditFillingStationData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EditFillingStationData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EditFillingStationData value)  $default,){
final _that = this;
switch (_that) {
case _EditFillingStationData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EditFillingStationData value)?  $default,){
final _that = this;
switch (_that) {
case _EditFillingStationData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String branchId,  double fuelPrice,  String opening,  String closing,  String longitude,  String latitude,  String address,  String? createdAt,  String? updatedAt,  String? deletedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EditFillingStationData() when $default != null:
return $default(_that.id,_that.branchId,_that.fuelPrice,_that.opening,_that.closing,_that.longitude,_that.latitude,_that.address,_that.createdAt,_that.updatedAt,_that.deletedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String branchId,  double fuelPrice,  String opening,  String closing,  String longitude,  String latitude,  String address,  String? createdAt,  String? updatedAt,  String? deletedAt)  $default,) {final _that = this;
switch (_that) {
case _EditFillingStationData():
return $default(_that.id,_that.branchId,_that.fuelPrice,_that.opening,_that.closing,_that.longitude,_that.latitude,_that.address,_that.createdAt,_that.updatedAt,_that.deletedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String branchId,  double fuelPrice,  String opening,  String closing,  String longitude,  String latitude,  String address,  String? createdAt,  String? updatedAt,  String? deletedAt)?  $default,) {final _that = this;
switch (_that) {
case _EditFillingStationData() when $default != null:
return $default(_that.id,_that.branchId,_that.fuelPrice,_that.opening,_that.closing,_that.longitude,_that.latitude,_that.address,_that.createdAt,_that.updatedAt,_that.deletedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EditFillingStationData implements EditFillingStationData {
  const _EditFillingStationData({required this.id, required this.branchId, required this.fuelPrice, required this.opening, required this.closing, required this.longitude, required this.latitude, required this.address, this.createdAt, this.updatedAt, this.deletedAt});
  factory _EditFillingStationData.fromJson(Map<String, dynamic> json) => _$EditFillingStationDataFromJson(json);

@override final  String id;
@override final  String branchId;
@override final  double fuelPrice;
@override final  String opening;
@override final  String closing;
@override final  String longitude;
@override final  String latitude;
@override final  String address;
@override final  String? createdAt;
@override final  String? updatedAt;
@override final  String? deletedAt;

/// Create a copy of EditFillingStationData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditFillingStationDataCopyWith<_EditFillingStationData> get copyWith => __$EditFillingStationDataCopyWithImpl<_EditFillingStationData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EditFillingStationDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditFillingStationData&&(identical(other.id, id) || other.id == id)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.fuelPrice, fuelPrice) || other.fuelPrice == fuelPrice)&&(identical(other.opening, opening) || other.opening == opening)&&(identical(other.closing, closing) || other.closing == closing)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.address, address) || other.address == address)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,branchId,fuelPrice,opening,closing,longitude,latitude,address,createdAt,updatedAt,deletedAt);

@override
String toString() {
  return 'EditFillingStationData(id: $id, branchId: $branchId, fuelPrice: $fuelPrice, opening: $opening, closing: $closing, longitude: $longitude, latitude: $latitude, address: $address, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
}


}

/// @nodoc
abstract mixin class _$EditFillingStationDataCopyWith<$Res> implements $EditFillingStationDataCopyWith<$Res> {
  factory _$EditFillingStationDataCopyWith(_EditFillingStationData value, $Res Function(_EditFillingStationData) _then) = __$EditFillingStationDataCopyWithImpl;
@override @useResult
$Res call({
 String id, String branchId, double fuelPrice, String opening, String closing, String longitude, String latitude, String address, String? createdAt, String? updatedAt, String? deletedAt
});




}
/// @nodoc
class __$EditFillingStationDataCopyWithImpl<$Res>
    implements _$EditFillingStationDataCopyWith<$Res> {
  __$EditFillingStationDataCopyWithImpl(this._self, this._then);

  final _EditFillingStationData _self;
  final $Res Function(_EditFillingStationData) _then;

/// Create a copy of EditFillingStationData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? branchId = null,Object? fuelPrice = null,Object? opening = null,Object? closing = null,Object? longitude = null,Object? latitude = null,Object? address = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? deletedAt = freezed,}) {
  return _then(_EditFillingStationData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String,fuelPrice: null == fuelPrice ? _self.fuelPrice : fuelPrice // ignore: cast_nullable_to_non_nullable
as double,opening: null == opening ? _self.opening : opening // ignore: cast_nullable_to_non_nullable
as String,closing: null == closing ? _self.closing : closing // ignore: cast_nullable_to_non_nullable
as String,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$GetFillingStationsResponse {

 String get message; String get status; GetFillingStationsData get data;
/// Create a copy of GetFillingStationsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetFillingStationsResponseCopyWith<GetFillingStationsResponse> get copyWith => _$GetFillingStationsResponseCopyWithImpl<GetFillingStationsResponse>(this as GetFillingStationsResponse, _$identity);

  /// Serializes this GetFillingStationsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetFillingStationsResponse&&(identical(other.message, message) || other.message == message)&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,status,data);

@override
String toString() {
  return 'GetFillingStationsResponse(message: $message, status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class $GetFillingStationsResponseCopyWith<$Res>  {
  factory $GetFillingStationsResponseCopyWith(GetFillingStationsResponse value, $Res Function(GetFillingStationsResponse) _then) = _$GetFillingStationsResponseCopyWithImpl;
@useResult
$Res call({
 String message, String status, GetFillingStationsData data
});


$GetFillingStationsDataCopyWith<$Res> get data;

}
/// @nodoc
class _$GetFillingStationsResponseCopyWithImpl<$Res>
    implements $GetFillingStationsResponseCopyWith<$Res> {
  _$GetFillingStationsResponseCopyWithImpl(this._self, this._then);

  final GetFillingStationsResponse _self;
  final $Res Function(GetFillingStationsResponse) _then;

/// Create a copy of GetFillingStationsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? status = null,Object? data = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as GetFillingStationsData,
  ));
}
/// Create a copy of GetFillingStationsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GetFillingStationsDataCopyWith<$Res> get data {
  
  return $GetFillingStationsDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [GetFillingStationsResponse].
extension GetFillingStationsResponsePatterns on GetFillingStationsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetFillingStationsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetFillingStationsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetFillingStationsResponse value)  $default,){
final _that = this;
switch (_that) {
case _GetFillingStationsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetFillingStationsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _GetFillingStationsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message,  String status,  GetFillingStationsData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetFillingStationsResponse() when $default != null:
return $default(_that.message,_that.status,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message,  String status,  GetFillingStationsData data)  $default,) {final _that = this;
switch (_that) {
case _GetFillingStationsResponse():
return $default(_that.message,_that.status,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message,  String status,  GetFillingStationsData data)?  $default,) {final _that = this;
switch (_that) {
case _GetFillingStationsResponse() when $default != null:
return $default(_that.message,_that.status,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetFillingStationsResponse implements GetFillingStationsResponse {
  const _GetFillingStationsResponse({this.message = '', this.status = 'fail', this.data = const GetFillingStationsData()});
  factory _GetFillingStationsResponse.fromJson(Map<String, dynamic> json) => _$GetFillingStationsResponseFromJson(json);

@override@JsonKey() final  String message;
@override@JsonKey() final  String status;
@override@JsonKey() final  GetFillingStationsData data;

/// Create a copy of GetFillingStationsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetFillingStationsResponseCopyWith<_GetFillingStationsResponse> get copyWith => __$GetFillingStationsResponseCopyWithImpl<_GetFillingStationsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetFillingStationsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetFillingStationsResponse&&(identical(other.message, message) || other.message == message)&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,status,data);

@override
String toString() {
  return 'GetFillingStationsResponse(message: $message, status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class _$GetFillingStationsResponseCopyWith<$Res> implements $GetFillingStationsResponseCopyWith<$Res> {
  factory _$GetFillingStationsResponseCopyWith(_GetFillingStationsResponse value, $Res Function(_GetFillingStationsResponse) _then) = __$GetFillingStationsResponseCopyWithImpl;
@override @useResult
$Res call({
 String message, String status, GetFillingStationsData data
});


@override $GetFillingStationsDataCopyWith<$Res> get data;

}
/// @nodoc
class __$GetFillingStationsResponseCopyWithImpl<$Res>
    implements _$GetFillingStationsResponseCopyWith<$Res> {
  __$GetFillingStationsResponseCopyWithImpl(this._self, this._then);

  final _GetFillingStationsResponse _self;
  final $Res Function(_GetFillingStationsResponse) _then;

/// Create a copy of GetFillingStationsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? status = null,Object? data = null,}) {
  return _then(_GetFillingStationsResponse(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as GetFillingStationsData,
  ));
}

/// Create a copy of GetFillingStationsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GetFillingStationsDataCopyWith<$Res> get data {
  
  return $GetFillingStationsDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$GetFillingStationsData {

 GetFillingStationsMeta get meta; List<FillingStation> get data;
/// Create a copy of GetFillingStationsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetFillingStationsDataCopyWith<GetFillingStationsData> get copyWith => _$GetFillingStationsDataCopyWithImpl<GetFillingStationsData>(this as GetFillingStationsData, _$identity);

  /// Serializes this GetFillingStationsData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetFillingStationsData&&(identical(other.meta, meta) || other.meta == meta)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,meta,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'GetFillingStationsData(meta: $meta, data: $data)';
}


}

/// @nodoc
abstract mixin class $GetFillingStationsDataCopyWith<$Res>  {
  factory $GetFillingStationsDataCopyWith(GetFillingStationsData value, $Res Function(GetFillingStationsData) _then) = _$GetFillingStationsDataCopyWithImpl;
@useResult
$Res call({
 GetFillingStationsMeta meta, List<FillingStation> data
});


$GetFillingStationsMetaCopyWith<$Res> get meta;

}
/// @nodoc
class _$GetFillingStationsDataCopyWithImpl<$Res>
    implements $GetFillingStationsDataCopyWith<$Res> {
  _$GetFillingStationsDataCopyWithImpl(this._self, this._then);

  final GetFillingStationsData _self;
  final $Res Function(GetFillingStationsData) _then;

/// Create a copy of GetFillingStationsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? meta = null,Object? data = null,}) {
  return _then(_self.copyWith(
meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as GetFillingStationsMeta,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<FillingStation>,
  ));
}
/// Create a copy of GetFillingStationsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GetFillingStationsMetaCopyWith<$Res> get meta {
  
  return $GetFillingStationsMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [GetFillingStationsData].
extension GetFillingStationsDataPatterns on GetFillingStationsData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetFillingStationsData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetFillingStationsData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetFillingStationsData value)  $default,){
final _that = this;
switch (_that) {
case _GetFillingStationsData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetFillingStationsData value)?  $default,){
final _that = this;
switch (_that) {
case _GetFillingStationsData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GetFillingStationsMeta meta,  List<FillingStation> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetFillingStationsData() when $default != null:
return $default(_that.meta,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GetFillingStationsMeta meta,  List<FillingStation> data)  $default,) {final _that = this;
switch (_that) {
case _GetFillingStationsData():
return $default(_that.meta,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GetFillingStationsMeta meta,  List<FillingStation> data)?  $default,) {final _that = this;
switch (_that) {
case _GetFillingStationsData() when $default != null:
return $default(_that.meta,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetFillingStationsData implements GetFillingStationsData {
  const _GetFillingStationsData({this.meta = const GetFillingStationsMeta(), final  List<FillingStation> data = const []}): _data = data;
  factory _GetFillingStationsData.fromJson(Map<String, dynamic> json) => _$GetFillingStationsDataFromJson(json);

@override@JsonKey() final  GetFillingStationsMeta meta;
 final  List<FillingStation> _data;
@override@JsonKey() List<FillingStation> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of GetFillingStationsData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetFillingStationsDataCopyWith<_GetFillingStationsData> get copyWith => __$GetFillingStationsDataCopyWithImpl<_GetFillingStationsData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetFillingStationsDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetFillingStationsData&&(identical(other.meta, meta) || other.meta == meta)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,meta,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'GetFillingStationsData(meta: $meta, data: $data)';
}


}

/// @nodoc
abstract mixin class _$GetFillingStationsDataCopyWith<$Res> implements $GetFillingStationsDataCopyWith<$Res> {
  factory _$GetFillingStationsDataCopyWith(_GetFillingStationsData value, $Res Function(_GetFillingStationsData) _then) = __$GetFillingStationsDataCopyWithImpl;
@override @useResult
$Res call({
 GetFillingStationsMeta meta, List<FillingStation> data
});


@override $GetFillingStationsMetaCopyWith<$Res> get meta;

}
/// @nodoc
class __$GetFillingStationsDataCopyWithImpl<$Res>
    implements _$GetFillingStationsDataCopyWith<$Res> {
  __$GetFillingStationsDataCopyWithImpl(this._self, this._then);

  final _GetFillingStationsData _self;
  final $Res Function(_GetFillingStationsData) _then;

/// Create a copy of GetFillingStationsData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? meta = null,Object? data = null,}) {
  return _then(_GetFillingStationsData(
meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as GetFillingStationsMeta,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<FillingStation>,
  ));
}

/// Create a copy of GetFillingStationsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GetFillingStationsMetaCopyWith<$Res> get meta {
  
  return $GetFillingStationsMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$GetFillingStationsMeta {

 int get total; int get page; int get limit; int get pages;
/// Create a copy of GetFillingStationsMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetFillingStationsMetaCopyWith<GetFillingStationsMeta> get copyWith => _$GetFillingStationsMetaCopyWithImpl<GetFillingStationsMeta>(this as GetFillingStationsMeta, _$identity);

  /// Serializes this GetFillingStationsMeta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetFillingStationsMeta&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.pages, pages) || other.pages == pages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,page,limit,pages);

@override
String toString() {
  return 'GetFillingStationsMeta(total: $total, page: $page, limit: $limit, pages: $pages)';
}


}

/// @nodoc
abstract mixin class $GetFillingStationsMetaCopyWith<$Res>  {
  factory $GetFillingStationsMetaCopyWith(GetFillingStationsMeta value, $Res Function(GetFillingStationsMeta) _then) = _$GetFillingStationsMetaCopyWithImpl;
@useResult
$Res call({
 int total, int page, int limit, int pages
});




}
/// @nodoc
class _$GetFillingStationsMetaCopyWithImpl<$Res>
    implements $GetFillingStationsMetaCopyWith<$Res> {
  _$GetFillingStationsMetaCopyWithImpl(this._self, this._then);

  final GetFillingStationsMeta _self;
  final $Res Function(GetFillingStationsMeta) _then;

/// Create a copy of GetFillingStationsMeta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? page = null,Object? limit = null,Object? pages = null,}) {
  return _then(_self.copyWith(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,pages: null == pages ? _self.pages : pages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [GetFillingStationsMeta].
extension GetFillingStationsMetaPatterns on GetFillingStationsMeta {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetFillingStationsMeta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetFillingStationsMeta() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetFillingStationsMeta value)  $default,){
final _that = this;
switch (_that) {
case _GetFillingStationsMeta():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetFillingStationsMeta value)?  $default,){
final _that = this;
switch (_that) {
case _GetFillingStationsMeta() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  int page,  int limit,  int pages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetFillingStationsMeta() when $default != null:
return $default(_that.total,_that.page,_that.limit,_that.pages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  int page,  int limit,  int pages)  $default,) {final _that = this;
switch (_that) {
case _GetFillingStationsMeta():
return $default(_that.total,_that.page,_that.limit,_that.pages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  int page,  int limit,  int pages)?  $default,) {final _that = this;
switch (_that) {
case _GetFillingStationsMeta() when $default != null:
return $default(_that.total,_that.page,_that.limit,_that.pages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetFillingStationsMeta implements GetFillingStationsMeta {
  const _GetFillingStationsMeta({this.total = 0, this.page = 1, this.limit = 0, this.pages = 1});
  factory _GetFillingStationsMeta.fromJson(Map<String, dynamic> json) => _$GetFillingStationsMetaFromJson(json);

@override@JsonKey() final  int total;
@override@JsonKey() final  int page;
@override@JsonKey() final  int limit;
@override@JsonKey() final  int pages;

/// Create a copy of GetFillingStationsMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetFillingStationsMetaCopyWith<_GetFillingStationsMeta> get copyWith => __$GetFillingStationsMetaCopyWithImpl<_GetFillingStationsMeta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetFillingStationsMetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetFillingStationsMeta&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.pages, pages) || other.pages == pages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,page,limit,pages);

@override
String toString() {
  return 'GetFillingStationsMeta(total: $total, page: $page, limit: $limit, pages: $pages)';
}


}

/// @nodoc
abstract mixin class _$GetFillingStationsMetaCopyWith<$Res> implements $GetFillingStationsMetaCopyWith<$Res> {
  factory _$GetFillingStationsMetaCopyWith(_GetFillingStationsMeta value, $Res Function(_GetFillingStationsMeta) _then) = __$GetFillingStationsMetaCopyWithImpl;
@override @useResult
$Res call({
 int total, int page, int limit, int pages
});




}
/// @nodoc
class __$GetFillingStationsMetaCopyWithImpl<$Res>
    implements _$GetFillingStationsMetaCopyWith<$Res> {
  __$GetFillingStationsMetaCopyWithImpl(this._self, this._then);

  final _GetFillingStationsMeta _self;
  final $Res Function(_GetFillingStationsMeta) _then;

/// Create a copy of GetFillingStationsMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? page = null,Object? limit = null,Object? pages = null,}) {
  return _then(_GetFillingStationsMeta(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,pages: null == pages ? _self.pages : pages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$FillingStation {

 String get id; String get branchId; String get name; String get fuelPrice; String get opening; String get closing; String get longitude; String get latitude; String get address; double get totalTransactions; double get percentageIncrease; String? get createdAt; String? get updatedAt;
/// Create a copy of FillingStation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FillingStationCopyWith<FillingStation> get copyWith => _$FillingStationCopyWithImpl<FillingStation>(this as FillingStation, _$identity);

  /// Serializes this FillingStation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FillingStation&&(identical(other.id, id) || other.id == id)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.name, name) || other.name == name)&&(identical(other.fuelPrice, fuelPrice) || other.fuelPrice == fuelPrice)&&(identical(other.opening, opening) || other.opening == opening)&&(identical(other.closing, closing) || other.closing == closing)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.address, address) || other.address == address)&&(identical(other.totalTransactions, totalTransactions) || other.totalTransactions == totalTransactions)&&(identical(other.percentageIncrease, percentageIncrease) || other.percentageIncrease == percentageIncrease)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,branchId,name,fuelPrice,opening,closing,longitude,latitude,address,totalTransactions,percentageIncrease,createdAt,updatedAt);

@override
String toString() {
  return 'FillingStation(id: $id, branchId: $branchId, name: $name, fuelPrice: $fuelPrice, opening: $opening, closing: $closing, longitude: $longitude, latitude: $latitude, address: $address, totalTransactions: $totalTransactions, percentageIncrease: $percentageIncrease, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $FillingStationCopyWith<$Res>  {
  factory $FillingStationCopyWith(FillingStation value, $Res Function(FillingStation) _then) = _$FillingStationCopyWithImpl;
@useResult
$Res call({
 String id, String branchId, String name, String fuelPrice, String opening, String closing, String longitude, String latitude, String address, double totalTransactions, double percentageIncrease, String? createdAt, String? updatedAt
});




}
/// @nodoc
class _$FillingStationCopyWithImpl<$Res>
    implements $FillingStationCopyWith<$Res> {
  _$FillingStationCopyWithImpl(this._self, this._then);

  final FillingStation _self;
  final $Res Function(FillingStation) _then;

/// Create a copy of FillingStation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? branchId = null,Object? name = null,Object? fuelPrice = null,Object? opening = null,Object? closing = null,Object? longitude = null,Object? latitude = null,Object? address = null,Object? totalTransactions = null,Object? percentageIncrease = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,fuelPrice: null == fuelPrice ? _self.fuelPrice : fuelPrice // ignore: cast_nullable_to_non_nullable
as String,opening: null == opening ? _self.opening : opening // ignore: cast_nullable_to_non_nullable
as String,closing: null == closing ? _self.closing : closing // ignore: cast_nullable_to_non_nullable
as String,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,totalTransactions: null == totalTransactions ? _self.totalTransactions : totalTransactions // ignore: cast_nullable_to_non_nullable
as double,percentageIncrease: null == percentageIncrease ? _self.percentageIncrease : percentageIncrease // ignore: cast_nullable_to_non_nullable
as double,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FillingStation].
extension FillingStationPatterns on FillingStation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FillingStation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FillingStation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FillingStation value)  $default,){
final _that = this;
switch (_that) {
case _FillingStation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FillingStation value)?  $default,){
final _that = this;
switch (_that) {
case _FillingStation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String branchId,  String name,  String fuelPrice,  String opening,  String closing,  String longitude,  String latitude,  String address,  double totalTransactions,  double percentageIncrease,  String? createdAt,  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FillingStation() when $default != null:
return $default(_that.id,_that.branchId,_that.name,_that.fuelPrice,_that.opening,_that.closing,_that.longitude,_that.latitude,_that.address,_that.totalTransactions,_that.percentageIncrease,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String branchId,  String name,  String fuelPrice,  String opening,  String closing,  String longitude,  String latitude,  String address,  double totalTransactions,  double percentageIncrease,  String? createdAt,  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _FillingStation():
return $default(_that.id,_that.branchId,_that.name,_that.fuelPrice,_that.opening,_that.closing,_that.longitude,_that.latitude,_that.address,_that.totalTransactions,_that.percentageIncrease,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String branchId,  String name,  String fuelPrice,  String opening,  String closing,  String longitude,  String latitude,  String address,  double totalTransactions,  double percentageIncrease,  String? createdAt,  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _FillingStation() when $default != null:
return $default(_that.id,_that.branchId,_that.name,_that.fuelPrice,_that.opening,_that.closing,_that.longitude,_that.latitude,_that.address,_that.totalTransactions,_that.percentageIncrease,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FillingStation implements FillingStation {
  const _FillingStation({required this.id, required this.branchId, this.name = '', required this.fuelPrice, required this.opening, required this.closing, required this.longitude, required this.latitude, required this.address, this.totalTransactions = 0, this.percentageIncrease = 0, this.createdAt, this.updatedAt});
  factory _FillingStation.fromJson(Map<String, dynamic> json) => _$FillingStationFromJson(json);

@override final  String id;
@override final  String branchId;
@override@JsonKey() final  String name;
@override final  String fuelPrice;
@override final  String opening;
@override final  String closing;
@override final  String longitude;
@override final  String latitude;
@override final  String address;
@override@JsonKey() final  double totalTransactions;
@override@JsonKey() final  double percentageIncrease;
@override final  String? createdAt;
@override final  String? updatedAt;

/// Create a copy of FillingStation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FillingStationCopyWith<_FillingStation> get copyWith => __$FillingStationCopyWithImpl<_FillingStation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FillingStationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FillingStation&&(identical(other.id, id) || other.id == id)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.name, name) || other.name == name)&&(identical(other.fuelPrice, fuelPrice) || other.fuelPrice == fuelPrice)&&(identical(other.opening, opening) || other.opening == opening)&&(identical(other.closing, closing) || other.closing == closing)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.address, address) || other.address == address)&&(identical(other.totalTransactions, totalTransactions) || other.totalTransactions == totalTransactions)&&(identical(other.percentageIncrease, percentageIncrease) || other.percentageIncrease == percentageIncrease)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,branchId,name,fuelPrice,opening,closing,longitude,latitude,address,totalTransactions,percentageIncrease,createdAt,updatedAt);

@override
String toString() {
  return 'FillingStation(id: $id, branchId: $branchId, name: $name, fuelPrice: $fuelPrice, opening: $opening, closing: $closing, longitude: $longitude, latitude: $latitude, address: $address, totalTransactions: $totalTransactions, percentageIncrease: $percentageIncrease, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$FillingStationCopyWith<$Res> implements $FillingStationCopyWith<$Res> {
  factory _$FillingStationCopyWith(_FillingStation value, $Res Function(_FillingStation) _then) = __$FillingStationCopyWithImpl;
@override @useResult
$Res call({
 String id, String branchId, String name, String fuelPrice, String opening, String closing, String longitude, String latitude, String address, double totalTransactions, double percentageIncrease, String? createdAt, String? updatedAt
});




}
/// @nodoc
class __$FillingStationCopyWithImpl<$Res>
    implements _$FillingStationCopyWith<$Res> {
  __$FillingStationCopyWithImpl(this._self, this._then);

  final _FillingStation _self;
  final $Res Function(_FillingStation) _then;

/// Create a copy of FillingStation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? branchId = null,Object? name = null,Object? fuelPrice = null,Object? opening = null,Object? closing = null,Object? longitude = null,Object? latitude = null,Object? address = null,Object? totalTransactions = null,Object? percentageIncrease = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_FillingStation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,fuelPrice: null == fuelPrice ? _self.fuelPrice : fuelPrice // ignore: cast_nullable_to_non_nullable
as String,opening: null == opening ? _self.opening : opening // ignore: cast_nullable_to_non_nullable
as String,closing: null == closing ? _self.closing : closing // ignore: cast_nullable_to_non_nullable
as String,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,totalTransactions: null == totalTransactions ? _self.totalTransactions : totalTransactions // ignore: cast_nullable_to_non_nullable
as double,percentageIncrease: null == percentageIncrease ? _self.percentageIncrease : percentageIncrease // ignore: cast_nullable_to_non_nullable
as double,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
