// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'places_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlaceResponse {

 List<String> get htmlAttributions; String? get nextPageToken; List<PlaceResult> get results;
/// Create a copy of PlaceResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlaceResponseCopyWith<PlaceResponse> get copyWith => _$PlaceResponseCopyWithImpl<PlaceResponse>(this as PlaceResponse, _$identity);

  /// Serializes this PlaceResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlaceResponse&&const DeepCollectionEquality().equals(other.htmlAttributions, htmlAttributions)&&(identical(other.nextPageToken, nextPageToken) || other.nextPageToken == nextPageToken)&&const DeepCollectionEquality().equals(other.results, results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(htmlAttributions),nextPageToken,const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'PlaceResponse(htmlAttributions: $htmlAttributions, nextPageToken: $nextPageToken, results: $results)';
}


}

/// @nodoc
abstract mixin class $PlaceResponseCopyWith<$Res>  {
  factory $PlaceResponseCopyWith(PlaceResponse value, $Res Function(PlaceResponse) _then) = _$PlaceResponseCopyWithImpl;
@useResult
$Res call({
 List<String> htmlAttributions, String? nextPageToken, List<PlaceResult> results
});




}
/// @nodoc
class _$PlaceResponseCopyWithImpl<$Res>
    implements $PlaceResponseCopyWith<$Res> {
  _$PlaceResponseCopyWithImpl(this._self, this._then);

  final PlaceResponse _self;
  final $Res Function(PlaceResponse) _then;

/// Create a copy of PlaceResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? htmlAttributions = null,Object? nextPageToken = freezed,Object? results = null,}) {
  return _then(_self.copyWith(
htmlAttributions: null == htmlAttributions ? _self.htmlAttributions : htmlAttributions // ignore: cast_nullable_to_non_nullable
as List<String>,nextPageToken: freezed == nextPageToken ? _self.nextPageToken : nextPageToken // ignore: cast_nullable_to_non_nullable
as String?,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<PlaceResult>,
  ));
}

}


/// Adds pattern-matching-related methods to [PlaceResponse].
extension PlaceResponsePatterns on PlaceResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlaceResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlaceResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlaceResponse value)  $default,){
final _that = this;
switch (_that) {
case _PlaceResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlaceResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PlaceResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> htmlAttributions,  String? nextPageToken,  List<PlaceResult> results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlaceResponse() when $default != null:
return $default(_that.htmlAttributions,_that.nextPageToken,_that.results);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> htmlAttributions,  String? nextPageToken,  List<PlaceResult> results)  $default,) {final _that = this;
switch (_that) {
case _PlaceResponse():
return $default(_that.htmlAttributions,_that.nextPageToken,_that.results);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> htmlAttributions,  String? nextPageToken,  List<PlaceResult> results)?  $default,) {final _that = this;
switch (_that) {
case _PlaceResponse() when $default != null:
return $default(_that.htmlAttributions,_that.nextPageToken,_that.results);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlaceResponse implements PlaceResponse {
  const _PlaceResponse({required final  List<String> htmlAttributions, this.nextPageToken, required final  List<PlaceResult> results}): _htmlAttributions = htmlAttributions,_results = results;
  factory _PlaceResponse.fromJson(Map<String, dynamic> json) => _$PlaceResponseFromJson(json);

 final  List<String> _htmlAttributions;
@override List<String> get htmlAttributions {
  if (_htmlAttributions is EqualUnmodifiableListView) return _htmlAttributions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_htmlAttributions);
}

@override final  String? nextPageToken;
 final  List<PlaceResult> _results;
@override List<PlaceResult> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}


/// Create a copy of PlaceResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlaceResponseCopyWith<_PlaceResponse> get copyWith => __$PlaceResponseCopyWithImpl<_PlaceResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlaceResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlaceResponse&&const DeepCollectionEquality().equals(other._htmlAttributions, _htmlAttributions)&&(identical(other.nextPageToken, nextPageToken) || other.nextPageToken == nextPageToken)&&const DeepCollectionEquality().equals(other._results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_htmlAttributions),nextPageToken,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'PlaceResponse(htmlAttributions: $htmlAttributions, nextPageToken: $nextPageToken, results: $results)';
}


}

/// @nodoc
abstract mixin class _$PlaceResponseCopyWith<$Res> implements $PlaceResponseCopyWith<$Res> {
  factory _$PlaceResponseCopyWith(_PlaceResponse value, $Res Function(_PlaceResponse) _then) = __$PlaceResponseCopyWithImpl;
@override @useResult
$Res call({
 List<String> htmlAttributions, String? nextPageToken, List<PlaceResult> results
});




}
/// @nodoc
class __$PlaceResponseCopyWithImpl<$Res>
    implements _$PlaceResponseCopyWith<$Res> {
  __$PlaceResponseCopyWithImpl(this._self, this._then);

  final _PlaceResponse _self;
  final $Res Function(_PlaceResponse) _then;

/// Create a copy of PlaceResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? htmlAttributions = null,Object? nextPageToken = freezed,Object? results = null,}) {
  return _then(_PlaceResponse(
htmlAttributions: null == htmlAttributions ? _self._htmlAttributions : htmlAttributions // ignore: cast_nullable_to_non_nullable
as List<String>,nextPageToken: freezed == nextPageToken ? _self.nextPageToken : nextPageToken // ignore: cast_nullable_to_non_nullable
as String?,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<PlaceResult>,
  ));
}


}


/// @nodoc
mixin _$PlaceResult {

 String get businessStatus; String get formattedAddress; Geometry get geometry; String get icon; String get iconBackgroundColor; String get iconMaskBaseUri; String get name; OpeningHours? get openingHours; List<Photo>? get photos; String get placeId; String? get reference; List<String>? get types; int? get userRatingsTotal; double? get rating; PlusCode? get plusCode;
/// Create a copy of PlaceResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlaceResultCopyWith<PlaceResult> get copyWith => _$PlaceResultCopyWithImpl<PlaceResult>(this as PlaceResult, _$identity);

  /// Serializes this PlaceResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlaceResult&&(identical(other.businessStatus, businessStatus) || other.businessStatus == businessStatus)&&(identical(other.formattedAddress, formattedAddress) || other.formattedAddress == formattedAddress)&&(identical(other.geometry, geometry) || other.geometry == geometry)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.iconBackgroundColor, iconBackgroundColor) || other.iconBackgroundColor == iconBackgroundColor)&&(identical(other.iconMaskBaseUri, iconMaskBaseUri) || other.iconMaskBaseUri == iconMaskBaseUri)&&(identical(other.name, name) || other.name == name)&&(identical(other.openingHours, openingHours) || other.openingHours == openingHours)&&const DeepCollectionEquality().equals(other.photos, photos)&&(identical(other.placeId, placeId) || other.placeId == placeId)&&(identical(other.reference, reference) || other.reference == reference)&&const DeepCollectionEquality().equals(other.types, types)&&(identical(other.userRatingsTotal, userRatingsTotal) || other.userRatingsTotal == userRatingsTotal)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.plusCode, plusCode) || other.plusCode == plusCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,businessStatus,formattedAddress,geometry,icon,iconBackgroundColor,iconMaskBaseUri,name,openingHours,const DeepCollectionEquality().hash(photos),placeId,reference,const DeepCollectionEquality().hash(types),userRatingsTotal,rating,plusCode);

@override
String toString() {
  return 'PlaceResult(businessStatus: $businessStatus, formattedAddress: $formattedAddress, geometry: $geometry, icon: $icon, iconBackgroundColor: $iconBackgroundColor, iconMaskBaseUri: $iconMaskBaseUri, name: $name, openingHours: $openingHours, photos: $photos, placeId: $placeId, reference: $reference, types: $types, userRatingsTotal: $userRatingsTotal, rating: $rating, plusCode: $plusCode)';
}


}

/// @nodoc
abstract mixin class $PlaceResultCopyWith<$Res>  {
  factory $PlaceResultCopyWith(PlaceResult value, $Res Function(PlaceResult) _then) = _$PlaceResultCopyWithImpl;
@useResult
$Res call({
 String businessStatus, String formattedAddress, Geometry geometry, String icon, String iconBackgroundColor, String iconMaskBaseUri, String name, OpeningHours? openingHours, List<Photo>? photos, String placeId, String? reference, List<String>? types, int? userRatingsTotal, double? rating, PlusCode? plusCode
});


$GeometryCopyWith<$Res> get geometry;$OpeningHoursCopyWith<$Res>? get openingHours;$PlusCodeCopyWith<$Res>? get plusCode;

}
/// @nodoc
class _$PlaceResultCopyWithImpl<$Res>
    implements $PlaceResultCopyWith<$Res> {
  _$PlaceResultCopyWithImpl(this._self, this._then);

  final PlaceResult _self;
  final $Res Function(PlaceResult) _then;

/// Create a copy of PlaceResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? businessStatus = null,Object? formattedAddress = null,Object? geometry = null,Object? icon = null,Object? iconBackgroundColor = null,Object? iconMaskBaseUri = null,Object? name = null,Object? openingHours = freezed,Object? photos = freezed,Object? placeId = null,Object? reference = freezed,Object? types = freezed,Object? userRatingsTotal = freezed,Object? rating = freezed,Object? plusCode = freezed,}) {
  return _then(_self.copyWith(
businessStatus: null == businessStatus ? _self.businessStatus : businessStatus // ignore: cast_nullable_to_non_nullable
as String,formattedAddress: null == formattedAddress ? _self.formattedAddress : formattedAddress // ignore: cast_nullable_to_non_nullable
as String,geometry: null == geometry ? _self.geometry : geometry // ignore: cast_nullable_to_non_nullable
as Geometry,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,iconBackgroundColor: null == iconBackgroundColor ? _self.iconBackgroundColor : iconBackgroundColor // ignore: cast_nullable_to_non_nullable
as String,iconMaskBaseUri: null == iconMaskBaseUri ? _self.iconMaskBaseUri : iconMaskBaseUri // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,openingHours: freezed == openingHours ? _self.openingHours : openingHours // ignore: cast_nullable_to_non_nullable
as OpeningHours?,photos: freezed == photos ? _self.photos : photos // ignore: cast_nullable_to_non_nullable
as List<Photo>?,placeId: null == placeId ? _self.placeId : placeId // ignore: cast_nullable_to_non_nullable
as String,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,types: freezed == types ? _self.types : types // ignore: cast_nullable_to_non_nullable
as List<String>?,userRatingsTotal: freezed == userRatingsTotal ? _self.userRatingsTotal : userRatingsTotal // ignore: cast_nullable_to_non_nullable
as int?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,plusCode: freezed == plusCode ? _self.plusCode : plusCode // ignore: cast_nullable_to_non_nullable
as PlusCode?,
  ));
}
/// Create a copy of PlaceResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeometryCopyWith<$Res> get geometry {
  
  return $GeometryCopyWith<$Res>(_self.geometry, (value) {
    return _then(_self.copyWith(geometry: value));
  });
}/// Create a copy of PlaceResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OpeningHoursCopyWith<$Res>? get openingHours {
    if (_self.openingHours == null) {
    return null;
  }

  return $OpeningHoursCopyWith<$Res>(_self.openingHours!, (value) {
    return _then(_self.copyWith(openingHours: value));
  });
}/// Create a copy of PlaceResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlusCodeCopyWith<$Res>? get plusCode {
    if (_self.plusCode == null) {
    return null;
  }

  return $PlusCodeCopyWith<$Res>(_self.plusCode!, (value) {
    return _then(_self.copyWith(plusCode: value));
  });
}
}


/// Adds pattern-matching-related methods to [PlaceResult].
extension PlaceResultPatterns on PlaceResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlaceResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlaceResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlaceResult value)  $default,){
final _that = this;
switch (_that) {
case _PlaceResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlaceResult value)?  $default,){
final _that = this;
switch (_that) {
case _PlaceResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String businessStatus,  String formattedAddress,  Geometry geometry,  String icon,  String iconBackgroundColor,  String iconMaskBaseUri,  String name,  OpeningHours? openingHours,  List<Photo>? photos,  String placeId,  String? reference,  List<String>? types,  int? userRatingsTotal,  double? rating,  PlusCode? plusCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlaceResult() when $default != null:
return $default(_that.businessStatus,_that.formattedAddress,_that.geometry,_that.icon,_that.iconBackgroundColor,_that.iconMaskBaseUri,_that.name,_that.openingHours,_that.photos,_that.placeId,_that.reference,_that.types,_that.userRatingsTotal,_that.rating,_that.plusCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String businessStatus,  String formattedAddress,  Geometry geometry,  String icon,  String iconBackgroundColor,  String iconMaskBaseUri,  String name,  OpeningHours? openingHours,  List<Photo>? photos,  String placeId,  String? reference,  List<String>? types,  int? userRatingsTotal,  double? rating,  PlusCode? plusCode)  $default,) {final _that = this;
switch (_that) {
case _PlaceResult():
return $default(_that.businessStatus,_that.formattedAddress,_that.geometry,_that.icon,_that.iconBackgroundColor,_that.iconMaskBaseUri,_that.name,_that.openingHours,_that.photos,_that.placeId,_that.reference,_that.types,_that.userRatingsTotal,_that.rating,_that.plusCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String businessStatus,  String formattedAddress,  Geometry geometry,  String icon,  String iconBackgroundColor,  String iconMaskBaseUri,  String name,  OpeningHours? openingHours,  List<Photo>? photos,  String placeId,  String? reference,  List<String>? types,  int? userRatingsTotal,  double? rating,  PlusCode? plusCode)?  $default,) {final _that = this;
switch (_that) {
case _PlaceResult() when $default != null:
return $default(_that.businessStatus,_that.formattedAddress,_that.geometry,_that.icon,_that.iconBackgroundColor,_that.iconMaskBaseUri,_that.name,_that.openingHours,_that.photos,_that.placeId,_that.reference,_that.types,_that.userRatingsTotal,_that.rating,_that.plusCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlaceResult implements PlaceResult {
  const _PlaceResult({required this.businessStatus, required this.formattedAddress, required this.geometry, required this.icon, required this.iconBackgroundColor, required this.iconMaskBaseUri, required this.name, this.openingHours, final  List<Photo>? photos, required this.placeId, this.reference, final  List<String>? types, this.userRatingsTotal, this.rating, this.plusCode}): _photos = photos,_types = types;
  factory _PlaceResult.fromJson(Map<String, dynamic> json) => _$PlaceResultFromJson(json);

@override final  String businessStatus;
@override final  String formattedAddress;
@override final  Geometry geometry;
@override final  String icon;
@override final  String iconBackgroundColor;
@override final  String iconMaskBaseUri;
@override final  String name;
@override final  OpeningHours? openingHours;
 final  List<Photo>? _photos;
@override List<Photo>? get photos {
  final value = _photos;
  if (value == null) return null;
  if (_photos is EqualUnmodifiableListView) return _photos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String placeId;
@override final  String? reference;
 final  List<String>? _types;
@override List<String>? get types {
  final value = _types;
  if (value == null) return null;
  if (_types is EqualUnmodifiableListView) return _types;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? userRatingsTotal;
@override final  double? rating;
@override final  PlusCode? plusCode;

/// Create a copy of PlaceResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlaceResultCopyWith<_PlaceResult> get copyWith => __$PlaceResultCopyWithImpl<_PlaceResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlaceResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlaceResult&&(identical(other.businessStatus, businessStatus) || other.businessStatus == businessStatus)&&(identical(other.formattedAddress, formattedAddress) || other.formattedAddress == formattedAddress)&&(identical(other.geometry, geometry) || other.geometry == geometry)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.iconBackgroundColor, iconBackgroundColor) || other.iconBackgroundColor == iconBackgroundColor)&&(identical(other.iconMaskBaseUri, iconMaskBaseUri) || other.iconMaskBaseUri == iconMaskBaseUri)&&(identical(other.name, name) || other.name == name)&&(identical(other.openingHours, openingHours) || other.openingHours == openingHours)&&const DeepCollectionEquality().equals(other._photos, _photos)&&(identical(other.placeId, placeId) || other.placeId == placeId)&&(identical(other.reference, reference) || other.reference == reference)&&const DeepCollectionEquality().equals(other._types, _types)&&(identical(other.userRatingsTotal, userRatingsTotal) || other.userRatingsTotal == userRatingsTotal)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.plusCode, plusCode) || other.plusCode == plusCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,businessStatus,formattedAddress,geometry,icon,iconBackgroundColor,iconMaskBaseUri,name,openingHours,const DeepCollectionEquality().hash(_photos),placeId,reference,const DeepCollectionEquality().hash(_types),userRatingsTotal,rating,plusCode);

@override
String toString() {
  return 'PlaceResult(businessStatus: $businessStatus, formattedAddress: $formattedAddress, geometry: $geometry, icon: $icon, iconBackgroundColor: $iconBackgroundColor, iconMaskBaseUri: $iconMaskBaseUri, name: $name, openingHours: $openingHours, photos: $photos, placeId: $placeId, reference: $reference, types: $types, userRatingsTotal: $userRatingsTotal, rating: $rating, plusCode: $plusCode)';
}


}

/// @nodoc
abstract mixin class _$PlaceResultCopyWith<$Res> implements $PlaceResultCopyWith<$Res> {
  factory _$PlaceResultCopyWith(_PlaceResult value, $Res Function(_PlaceResult) _then) = __$PlaceResultCopyWithImpl;
@override @useResult
$Res call({
 String businessStatus, String formattedAddress, Geometry geometry, String icon, String iconBackgroundColor, String iconMaskBaseUri, String name, OpeningHours? openingHours, List<Photo>? photos, String placeId, String? reference, List<String>? types, int? userRatingsTotal, double? rating, PlusCode? plusCode
});


@override $GeometryCopyWith<$Res> get geometry;@override $OpeningHoursCopyWith<$Res>? get openingHours;@override $PlusCodeCopyWith<$Res>? get plusCode;

}
/// @nodoc
class __$PlaceResultCopyWithImpl<$Res>
    implements _$PlaceResultCopyWith<$Res> {
  __$PlaceResultCopyWithImpl(this._self, this._then);

  final _PlaceResult _self;
  final $Res Function(_PlaceResult) _then;

/// Create a copy of PlaceResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? businessStatus = null,Object? formattedAddress = null,Object? geometry = null,Object? icon = null,Object? iconBackgroundColor = null,Object? iconMaskBaseUri = null,Object? name = null,Object? openingHours = freezed,Object? photos = freezed,Object? placeId = null,Object? reference = freezed,Object? types = freezed,Object? userRatingsTotal = freezed,Object? rating = freezed,Object? plusCode = freezed,}) {
  return _then(_PlaceResult(
businessStatus: null == businessStatus ? _self.businessStatus : businessStatus // ignore: cast_nullable_to_non_nullable
as String,formattedAddress: null == formattedAddress ? _self.formattedAddress : formattedAddress // ignore: cast_nullable_to_non_nullable
as String,geometry: null == geometry ? _self.geometry : geometry // ignore: cast_nullable_to_non_nullable
as Geometry,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,iconBackgroundColor: null == iconBackgroundColor ? _self.iconBackgroundColor : iconBackgroundColor // ignore: cast_nullable_to_non_nullable
as String,iconMaskBaseUri: null == iconMaskBaseUri ? _self.iconMaskBaseUri : iconMaskBaseUri // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,openingHours: freezed == openingHours ? _self.openingHours : openingHours // ignore: cast_nullable_to_non_nullable
as OpeningHours?,photos: freezed == photos ? _self._photos : photos // ignore: cast_nullable_to_non_nullable
as List<Photo>?,placeId: null == placeId ? _self.placeId : placeId // ignore: cast_nullable_to_non_nullable
as String,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,types: freezed == types ? _self._types : types // ignore: cast_nullable_to_non_nullable
as List<String>?,userRatingsTotal: freezed == userRatingsTotal ? _self.userRatingsTotal : userRatingsTotal // ignore: cast_nullable_to_non_nullable
as int?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,plusCode: freezed == plusCode ? _self.plusCode : plusCode // ignore: cast_nullable_to_non_nullable
as PlusCode?,
  ));
}

/// Create a copy of PlaceResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeometryCopyWith<$Res> get geometry {
  
  return $GeometryCopyWith<$Res>(_self.geometry, (value) {
    return _then(_self.copyWith(geometry: value));
  });
}/// Create a copy of PlaceResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OpeningHoursCopyWith<$Res>? get openingHours {
    if (_self.openingHours == null) {
    return null;
  }

  return $OpeningHoursCopyWith<$Res>(_self.openingHours!, (value) {
    return _then(_self.copyWith(openingHours: value));
  });
}/// Create a copy of PlaceResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlusCodeCopyWith<$Res>? get plusCode {
    if (_self.plusCode == null) {
    return null;
  }

  return $PlusCodeCopyWith<$Res>(_self.plusCode!, (value) {
    return _then(_self.copyWith(plusCode: value));
  });
}
}


/// @nodoc
mixin _$Geometry {

 LatLng get location; Viewport get viewport;
/// Create a copy of Geometry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeometryCopyWith<Geometry> get copyWith => _$GeometryCopyWithImpl<Geometry>(this as Geometry, _$identity);

  /// Serializes this Geometry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Geometry&&(identical(other.location, location) || other.location == location)&&(identical(other.viewport, viewport) || other.viewport == viewport));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,location,viewport);

@override
String toString() {
  return 'Geometry(location: $location, viewport: $viewport)';
}


}

/// @nodoc
abstract mixin class $GeometryCopyWith<$Res>  {
  factory $GeometryCopyWith(Geometry value, $Res Function(Geometry) _then) = _$GeometryCopyWithImpl;
@useResult
$Res call({
 LatLng location, Viewport viewport
});


$LatLngCopyWith<$Res> get location;$ViewportCopyWith<$Res> get viewport;

}
/// @nodoc
class _$GeometryCopyWithImpl<$Res>
    implements $GeometryCopyWith<$Res> {
  _$GeometryCopyWithImpl(this._self, this._then);

  final Geometry _self;
  final $Res Function(Geometry) _then;

/// Create a copy of Geometry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? location = null,Object? viewport = null,}) {
  return _then(_self.copyWith(
location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LatLng,viewport: null == viewport ? _self.viewport : viewport // ignore: cast_nullable_to_non_nullable
as Viewport,
  ));
}
/// Create a copy of Geometry
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LatLngCopyWith<$Res> get location {
  
  return $LatLngCopyWith<$Res>(_self.location, (value) {
    return _then(_self.copyWith(location: value));
  });
}/// Create a copy of Geometry
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ViewportCopyWith<$Res> get viewport {
  
  return $ViewportCopyWith<$Res>(_self.viewport, (value) {
    return _then(_self.copyWith(viewport: value));
  });
}
}


/// Adds pattern-matching-related methods to [Geometry].
extension GeometryPatterns on Geometry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Geometry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Geometry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Geometry value)  $default,){
final _that = this;
switch (_that) {
case _Geometry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Geometry value)?  $default,){
final _that = this;
switch (_that) {
case _Geometry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( LatLng location,  Viewport viewport)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Geometry() when $default != null:
return $default(_that.location,_that.viewport);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( LatLng location,  Viewport viewport)  $default,) {final _that = this;
switch (_that) {
case _Geometry():
return $default(_that.location,_that.viewport);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( LatLng location,  Viewport viewport)?  $default,) {final _that = this;
switch (_that) {
case _Geometry() when $default != null:
return $default(_that.location,_that.viewport);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Geometry implements Geometry {
  const _Geometry({required this.location, required this.viewport});
  factory _Geometry.fromJson(Map<String, dynamic> json) => _$GeometryFromJson(json);

@override final  LatLng location;
@override final  Viewport viewport;

/// Create a copy of Geometry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeometryCopyWith<_Geometry> get copyWith => __$GeometryCopyWithImpl<_Geometry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GeometryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Geometry&&(identical(other.location, location) || other.location == location)&&(identical(other.viewport, viewport) || other.viewport == viewport));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,location,viewport);

@override
String toString() {
  return 'Geometry(location: $location, viewport: $viewport)';
}


}

/// @nodoc
abstract mixin class _$GeometryCopyWith<$Res> implements $GeometryCopyWith<$Res> {
  factory _$GeometryCopyWith(_Geometry value, $Res Function(_Geometry) _then) = __$GeometryCopyWithImpl;
@override @useResult
$Res call({
 LatLng location, Viewport viewport
});


@override $LatLngCopyWith<$Res> get location;@override $ViewportCopyWith<$Res> get viewport;

}
/// @nodoc
class __$GeometryCopyWithImpl<$Res>
    implements _$GeometryCopyWith<$Res> {
  __$GeometryCopyWithImpl(this._self, this._then);

  final _Geometry _self;
  final $Res Function(_Geometry) _then;

/// Create a copy of Geometry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? location = null,Object? viewport = null,}) {
  return _then(_Geometry(
location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LatLng,viewport: null == viewport ? _self.viewport : viewport // ignore: cast_nullable_to_non_nullable
as Viewport,
  ));
}

/// Create a copy of Geometry
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LatLngCopyWith<$Res> get location {
  
  return $LatLngCopyWith<$Res>(_self.location, (value) {
    return _then(_self.copyWith(location: value));
  });
}/// Create a copy of Geometry
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ViewportCopyWith<$Res> get viewport {
  
  return $ViewportCopyWith<$Res>(_self.viewport, (value) {
    return _then(_self.copyWith(viewport: value));
  });
}
}


/// @nodoc
mixin _$LatLng {

 double get lat; double get lng;
/// Create a copy of LatLng
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LatLngCopyWith<LatLng> get copyWith => _$LatLngCopyWithImpl<LatLng>(this as LatLng, _$identity);

  /// Serializes this LatLng to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LatLng&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lat,lng);

@override
String toString() {
  return 'LatLng(lat: $lat, lng: $lng)';
}


}

/// @nodoc
abstract mixin class $LatLngCopyWith<$Res>  {
  factory $LatLngCopyWith(LatLng value, $Res Function(LatLng) _then) = _$LatLngCopyWithImpl;
@useResult
$Res call({
 double lat, double lng
});




}
/// @nodoc
class _$LatLngCopyWithImpl<$Res>
    implements $LatLngCopyWith<$Res> {
  _$LatLngCopyWithImpl(this._self, this._then);

  final LatLng _self;
  final $Res Function(LatLng) _then;

/// Create a copy of LatLng
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lat = null,Object? lng = null,}) {
  return _then(_self.copyWith(
lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [LatLng].
extension LatLngPatterns on LatLng {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LatLng value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LatLng() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LatLng value)  $default,){
final _that = this;
switch (_that) {
case _LatLng():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LatLng value)?  $default,){
final _that = this;
switch (_that) {
case _LatLng() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double lat,  double lng)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LatLng() when $default != null:
return $default(_that.lat,_that.lng);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double lat,  double lng)  $default,) {final _that = this;
switch (_that) {
case _LatLng():
return $default(_that.lat,_that.lng);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double lat,  double lng)?  $default,) {final _that = this;
switch (_that) {
case _LatLng() when $default != null:
return $default(_that.lat,_that.lng);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LatLng implements LatLng {
  const _LatLng({required this.lat, required this.lng});
  factory _LatLng.fromJson(Map<String, dynamic> json) => _$LatLngFromJson(json);

@override final  double lat;
@override final  double lng;

/// Create a copy of LatLng
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LatLngCopyWith<_LatLng> get copyWith => __$LatLngCopyWithImpl<_LatLng>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LatLngToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LatLng&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lat,lng);

@override
String toString() {
  return 'LatLng(lat: $lat, lng: $lng)';
}


}

/// @nodoc
abstract mixin class _$LatLngCopyWith<$Res> implements $LatLngCopyWith<$Res> {
  factory _$LatLngCopyWith(_LatLng value, $Res Function(_LatLng) _then) = __$LatLngCopyWithImpl;
@override @useResult
$Res call({
 double lat, double lng
});




}
/// @nodoc
class __$LatLngCopyWithImpl<$Res>
    implements _$LatLngCopyWith<$Res> {
  __$LatLngCopyWithImpl(this._self, this._then);

  final _LatLng _self;
  final $Res Function(_LatLng) _then;

/// Create a copy of LatLng
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lat = null,Object? lng = null,}) {
  return _then(_LatLng(
lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$Viewport {

 LatLng get northeast; LatLng get southwest;
/// Create a copy of Viewport
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ViewportCopyWith<Viewport> get copyWith => _$ViewportCopyWithImpl<Viewport>(this as Viewport, _$identity);

  /// Serializes this Viewport to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Viewport&&(identical(other.northeast, northeast) || other.northeast == northeast)&&(identical(other.southwest, southwest) || other.southwest == southwest));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,northeast,southwest);

@override
String toString() {
  return 'Viewport(northeast: $northeast, southwest: $southwest)';
}


}

/// @nodoc
abstract mixin class $ViewportCopyWith<$Res>  {
  factory $ViewportCopyWith(Viewport value, $Res Function(Viewport) _then) = _$ViewportCopyWithImpl;
@useResult
$Res call({
 LatLng northeast, LatLng southwest
});


$LatLngCopyWith<$Res> get northeast;$LatLngCopyWith<$Res> get southwest;

}
/// @nodoc
class _$ViewportCopyWithImpl<$Res>
    implements $ViewportCopyWith<$Res> {
  _$ViewportCopyWithImpl(this._self, this._then);

  final Viewport _self;
  final $Res Function(Viewport) _then;

/// Create a copy of Viewport
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? northeast = null,Object? southwest = null,}) {
  return _then(_self.copyWith(
northeast: null == northeast ? _self.northeast : northeast // ignore: cast_nullable_to_non_nullable
as LatLng,southwest: null == southwest ? _self.southwest : southwest // ignore: cast_nullable_to_non_nullable
as LatLng,
  ));
}
/// Create a copy of Viewport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LatLngCopyWith<$Res> get northeast {
  
  return $LatLngCopyWith<$Res>(_self.northeast, (value) {
    return _then(_self.copyWith(northeast: value));
  });
}/// Create a copy of Viewport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LatLngCopyWith<$Res> get southwest {
  
  return $LatLngCopyWith<$Res>(_self.southwest, (value) {
    return _then(_self.copyWith(southwest: value));
  });
}
}


/// Adds pattern-matching-related methods to [Viewport].
extension ViewportPatterns on Viewport {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Viewport value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Viewport() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Viewport value)  $default,){
final _that = this;
switch (_that) {
case _Viewport():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Viewport value)?  $default,){
final _that = this;
switch (_that) {
case _Viewport() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( LatLng northeast,  LatLng southwest)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Viewport() when $default != null:
return $default(_that.northeast,_that.southwest);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( LatLng northeast,  LatLng southwest)  $default,) {final _that = this;
switch (_that) {
case _Viewport():
return $default(_that.northeast,_that.southwest);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( LatLng northeast,  LatLng southwest)?  $default,) {final _that = this;
switch (_that) {
case _Viewport() when $default != null:
return $default(_that.northeast,_that.southwest);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Viewport implements Viewport {
  const _Viewport({required this.northeast, required this.southwest});
  factory _Viewport.fromJson(Map<String, dynamic> json) => _$ViewportFromJson(json);

@override final  LatLng northeast;
@override final  LatLng southwest;

/// Create a copy of Viewport
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ViewportCopyWith<_Viewport> get copyWith => __$ViewportCopyWithImpl<_Viewport>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ViewportToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Viewport&&(identical(other.northeast, northeast) || other.northeast == northeast)&&(identical(other.southwest, southwest) || other.southwest == southwest));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,northeast,southwest);

@override
String toString() {
  return 'Viewport(northeast: $northeast, southwest: $southwest)';
}


}

/// @nodoc
abstract mixin class _$ViewportCopyWith<$Res> implements $ViewportCopyWith<$Res> {
  factory _$ViewportCopyWith(_Viewport value, $Res Function(_Viewport) _then) = __$ViewportCopyWithImpl;
@override @useResult
$Res call({
 LatLng northeast, LatLng southwest
});


@override $LatLngCopyWith<$Res> get northeast;@override $LatLngCopyWith<$Res> get southwest;

}
/// @nodoc
class __$ViewportCopyWithImpl<$Res>
    implements _$ViewportCopyWith<$Res> {
  __$ViewportCopyWithImpl(this._self, this._then);

  final _Viewport _self;
  final $Res Function(_Viewport) _then;

/// Create a copy of Viewport
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? northeast = null,Object? southwest = null,}) {
  return _then(_Viewport(
northeast: null == northeast ? _self.northeast : northeast // ignore: cast_nullable_to_non_nullable
as LatLng,southwest: null == southwest ? _self.southwest : southwest // ignore: cast_nullable_to_non_nullable
as LatLng,
  ));
}

/// Create a copy of Viewport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LatLngCopyWith<$Res> get northeast {
  
  return $LatLngCopyWith<$Res>(_self.northeast, (value) {
    return _then(_self.copyWith(northeast: value));
  });
}/// Create a copy of Viewport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LatLngCopyWith<$Res> get southwest {
  
  return $LatLngCopyWith<$Res>(_self.southwest, (value) {
    return _then(_self.copyWith(southwest: value));
  });
}
}


/// @nodoc
mixin _$OpeningHours {

 bool? get openNow;
/// Create a copy of OpeningHours
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OpeningHoursCopyWith<OpeningHours> get copyWith => _$OpeningHoursCopyWithImpl<OpeningHours>(this as OpeningHours, _$identity);

  /// Serializes this OpeningHours to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OpeningHours&&(identical(other.openNow, openNow) || other.openNow == openNow));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,openNow);

@override
String toString() {
  return 'OpeningHours(openNow: $openNow)';
}


}

/// @nodoc
abstract mixin class $OpeningHoursCopyWith<$Res>  {
  factory $OpeningHoursCopyWith(OpeningHours value, $Res Function(OpeningHours) _then) = _$OpeningHoursCopyWithImpl;
@useResult
$Res call({
 bool? openNow
});




}
/// @nodoc
class _$OpeningHoursCopyWithImpl<$Res>
    implements $OpeningHoursCopyWith<$Res> {
  _$OpeningHoursCopyWithImpl(this._self, this._then);

  final OpeningHours _self;
  final $Res Function(OpeningHours) _then;

/// Create a copy of OpeningHours
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? openNow = freezed,}) {
  return _then(_self.copyWith(
openNow: freezed == openNow ? _self.openNow : openNow // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [OpeningHours].
extension OpeningHoursPatterns on OpeningHours {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OpeningHours value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OpeningHours() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OpeningHours value)  $default,){
final _that = this;
switch (_that) {
case _OpeningHours():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OpeningHours value)?  $default,){
final _that = this;
switch (_that) {
case _OpeningHours() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? openNow)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OpeningHours() when $default != null:
return $default(_that.openNow);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? openNow)  $default,) {final _that = this;
switch (_that) {
case _OpeningHours():
return $default(_that.openNow);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? openNow)?  $default,) {final _that = this;
switch (_that) {
case _OpeningHours() when $default != null:
return $default(_that.openNow);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OpeningHours implements OpeningHours {
  const _OpeningHours({this.openNow});
  factory _OpeningHours.fromJson(Map<String, dynamic> json) => _$OpeningHoursFromJson(json);

@override final  bool? openNow;

/// Create a copy of OpeningHours
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OpeningHoursCopyWith<_OpeningHours> get copyWith => __$OpeningHoursCopyWithImpl<_OpeningHours>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OpeningHoursToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OpeningHours&&(identical(other.openNow, openNow) || other.openNow == openNow));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,openNow);

@override
String toString() {
  return 'OpeningHours(openNow: $openNow)';
}


}

/// @nodoc
abstract mixin class _$OpeningHoursCopyWith<$Res> implements $OpeningHoursCopyWith<$Res> {
  factory _$OpeningHoursCopyWith(_OpeningHours value, $Res Function(_OpeningHours) _then) = __$OpeningHoursCopyWithImpl;
@override @useResult
$Res call({
 bool? openNow
});




}
/// @nodoc
class __$OpeningHoursCopyWithImpl<$Res>
    implements _$OpeningHoursCopyWith<$Res> {
  __$OpeningHoursCopyWithImpl(this._self, this._then);

  final _OpeningHours _self;
  final $Res Function(_OpeningHours) _then;

/// Create a copy of OpeningHours
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? openNow = freezed,}) {
  return _then(_OpeningHours(
openNow: freezed == openNow ? _self.openNow : openNow // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$Photo {

 int get height; int get width; List<String> get htmlAttributions; String get photoReference;
/// Create a copy of Photo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PhotoCopyWith<Photo> get copyWith => _$PhotoCopyWithImpl<Photo>(this as Photo, _$identity);

  /// Serializes this Photo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Photo&&(identical(other.height, height) || other.height == height)&&(identical(other.width, width) || other.width == width)&&const DeepCollectionEquality().equals(other.htmlAttributions, htmlAttributions)&&(identical(other.photoReference, photoReference) || other.photoReference == photoReference));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,height,width,const DeepCollectionEquality().hash(htmlAttributions),photoReference);

@override
String toString() {
  return 'Photo(height: $height, width: $width, htmlAttributions: $htmlAttributions, photoReference: $photoReference)';
}


}

/// @nodoc
abstract mixin class $PhotoCopyWith<$Res>  {
  factory $PhotoCopyWith(Photo value, $Res Function(Photo) _then) = _$PhotoCopyWithImpl;
@useResult
$Res call({
 int height, int width, List<String> htmlAttributions, String photoReference
});




}
/// @nodoc
class _$PhotoCopyWithImpl<$Res>
    implements $PhotoCopyWith<$Res> {
  _$PhotoCopyWithImpl(this._self, this._then);

  final Photo _self;
  final $Res Function(Photo) _then;

/// Create a copy of Photo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? height = null,Object? width = null,Object? htmlAttributions = null,Object? photoReference = null,}) {
  return _then(_self.copyWith(
height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int,htmlAttributions: null == htmlAttributions ? _self.htmlAttributions : htmlAttributions // ignore: cast_nullable_to_non_nullable
as List<String>,photoReference: null == photoReference ? _self.photoReference : photoReference // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Photo].
extension PhotoPatterns on Photo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Photo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Photo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Photo value)  $default,){
final _that = this;
switch (_that) {
case _Photo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Photo value)?  $default,){
final _that = this;
switch (_that) {
case _Photo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int height,  int width,  List<String> htmlAttributions,  String photoReference)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Photo() when $default != null:
return $default(_that.height,_that.width,_that.htmlAttributions,_that.photoReference);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int height,  int width,  List<String> htmlAttributions,  String photoReference)  $default,) {final _that = this;
switch (_that) {
case _Photo():
return $default(_that.height,_that.width,_that.htmlAttributions,_that.photoReference);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int height,  int width,  List<String> htmlAttributions,  String photoReference)?  $default,) {final _that = this;
switch (_that) {
case _Photo() when $default != null:
return $default(_that.height,_that.width,_that.htmlAttributions,_that.photoReference);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Photo implements Photo {
  const _Photo({required this.height, required this.width, required final  List<String> htmlAttributions, required this.photoReference}): _htmlAttributions = htmlAttributions;
  factory _Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);

@override final  int height;
@override final  int width;
 final  List<String> _htmlAttributions;
@override List<String> get htmlAttributions {
  if (_htmlAttributions is EqualUnmodifiableListView) return _htmlAttributions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_htmlAttributions);
}

@override final  String photoReference;

/// Create a copy of Photo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PhotoCopyWith<_Photo> get copyWith => __$PhotoCopyWithImpl<_Photo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PhotoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Photo&&(identical(other.height, height) || other.height == height)&&(identical(other.width, width) || other.width == width)&&const DeepCollectionEquality().equals(other._htmlAttributions, _htmlAttributions)&&(identical(other.photoReference, photoReference) || other.photoReference == photoReference));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,height,width,const DeepCollectionEquality().hash(_htmlAttributions),photoReference);

@override
String toString() {
  return 'Photo(height: $height, width: $width, htmlAttributions: $htmlAttributions, photoReference: $photoReference)';
}


}

/// @nodoc
abstract mixin class _$PhotoCopyWith<$Res> implements $PhotoCopyWith<$Res> {
  factory _$PhotoCopyWith(_Photo value, $Res Function(_Photo) _then) = __$PhotoCopyWithImpl;
@override @useResult
$Res call({
 int height, int width, List<String> htmlAttributions, String photoReference
});




}
/// @nodoc
class __$PhotoCopyWithImpl<$Res>
    implements _$PhotoCopyWith<$Res> {
  __$PhotoCopyWithImpl(this._self, this._then);

  final _Photo _self;
  final $Res Function(_Photo) _then;

/// Create a copy of Photo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? height = null,Object? width = null,Object? htmlAttributions = null,Object? photoReference = null,}) {
  return _then(_Photo(
height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int,htmlAttributions: null == htmlAttributions ? _self._htmlAttributions : htmlAttributions // ignore: cast_nullable_to_non_nullable
as List<String>,photoReference: null == photoReference ? _self.photoReference : photoReference // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PlusCode {

 String? get compoundCode; String? get globalCode;
/// Create a copy of PlusCode
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlusCodeCopyWith<PlusCode> get copyWith => _$PlusCodeCopyWithImpl<PlusCode>(this as PlusCode, _$identity);

  /// Serializes this PlusCode to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlusCode&&(identical(other.compoundCode, compoundCode) || other.compoundCode == compoundCode)&&(identical(other.globalCode, globalCode) || other.globalCode == globalCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,compoundCode,globalCode);

@override
String toString() {
  return 'PlusCode(compoundCode: $compoundCode, globalCode: $globalCode)';
}


}

/// @nodoc
abstract mixin class $PlusCodeCopyWith<$Res>  {
  factory $PlusCodeCopyWith(PlusCode value, $Res Function(PlusCode) _then) = _$PlusCodeCopyWithImpl;
@useResult
$Res call({
 String? compoundCode, String? globalCode
});




}
/// @nodoc
class _$PlusCodeCopyWithImpl<$Res>
    implements $PlusCodeCopyWith<$Res> {
  _$PlusCodeCopyWithImpl(this._self, this._then);

  final PlusCode _self;
  final $Res Function(PlusCode) _then;

/// Create a copy of PlusCode
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? compoundCode = freezed,Object? globalCode = freezed,}) {
  return _then(_self.copyWith(
compoundCode: freezed == compoundCode ? _self.compoundCode : compoundCode // ignore: cast_nullable_to_non_nullable
as String?,globalCode: freezed == globalCode ? _self.globalCode : globalCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PlusCode].
extension PlusCodePatterns on PlusCode {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlusCode value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlusCode() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlusCode value)  $default,){
final _that = this;
switch (_that) {
case _PlusCode():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlusCode value)?  $default,){
final _that = this;
switch (_that) {
case _PlusCode() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? compoundCode,  String? globalCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlusCode() when $default != null:
return $default(_that.compoundCode,_that.globalCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? compoundCode,  String? globalCode)  $default,) {final _that = this;
switch (_that) {
case _PlusCode():
return $default(_that.compoundCode,_that.globalCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? compoundCode,  String? globalCode)?  $default,) {final _that = this;
switch (_that) {
case _PlusCode() when $default != null:
return $default(_that.compoundCode,_that.globalCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlusCode implements PlusCode {
  const _PlusCode({this.compoundCode, this.globalCode});
  factory _PlusCode.fromJson(Map<String, dynamic> json) => _$PlusCodeFromJson(json);

@override final  String? compoundCode;
@override final  String? globalCode;

/// Create a copy of PlusCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlusCodeCopyWith<_PlusCode> get copyWith => __$PlusCodeCopyWithImpl<_PlusCode>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlusCodeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlusCode&&(identical(other.compoundCode, compoundCode) || other.compoundCode == compoundCode)&&(identical(other.globalCode, globalCode) || other.globalCode == globalCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,compoundCode,globalCode);

@override
String toString() {
  return 'PlusCode(compoundCode: $compoundCode, globalCode: $globalCode)';
}


}

/// @nodoc
abstract mixin class _$PlusCodeCopyWith<$Res> implements $PlusCodeCopyWith<$Res> {
  factory _$PlusCodeCopyWith(_PlusCode value, $Res Function(_PlusCode) _then) = __$PlusCodeCopyWithImpl;
@override @useResult
$Res call({
 String? compoundCode, String? globalCode
});




}
/// @nodoc
class __$PlusCodeCopyWithImpl<$Res>
    implements _$PlusCodeCopyWith<$Res> {
  __$PlusCodeCopyWithImpl(this._self, this._then);

  final _PlusCode _self;
  final $Res Function(_PlusCode) _then;

/// Create a copy of PlusCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? compoundCode = freezed,Object? globalCode = freezed,}) {
  return _then(_PlusCode(
compoundCode: freezed == compoundCode ? _self.compoundCode : compoundCode // ignore: cast_nullable_to_non_nullable
as String?,globalCode: freezed == globalCode ? _self.globalCode : globalCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
