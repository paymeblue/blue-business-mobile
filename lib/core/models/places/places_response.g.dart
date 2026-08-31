// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlaceResponse _$PlaceResponseFromJson(Map<String, dynamic> json) =>
    _PlaceResponse(
      htmlAttributions: (json['html_attributions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      nextPageToken: json['next_page_token'] as String?,
      results: (json['results'] as List<dynamic>)
          .map((e) => PlaceResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PlaceResponseToJson(_PlaceResponse instance) =>
    <String, dynamic>{
      'html_attributions': instance.htmlAttributions,
      'next_page_token': ?instance.nextPageToken,
      'results': instance.results,
    };

_PlaceResult _$PlaceResultFromJson(Map<String, dynamic> json) => _PlaceResult(
  businessStatus: json['business_status'] as String,
  formattedAddress: json['formatted_address'] as String,
  geometry: Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
  icon: json['icon'] as String,
  iconBackgroundColor: json['icon_background_color'] as String,
  iconMaskBaseUri: json['icon_mask_base_uri'] as String,
  name: json['name'] as String,
  openingHours: json['opening_hours'] == null
      ? null
      : OpeningHours.fromJson(json['opening_hours'] as Map<String, dynamic>),
  photos: (json['photos'] as List<dynamic>?)
      ?.map((e) => Photo.fromJson(e as Map<String, dynamic>))
      .toList(),
  placeId: json['place_id'] as String,
  reference: json['reference'] as String?,
  types: (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
  userRatingsTotal: (json['user_ratings_total'] as num?)?.toInt(),
  rating: (json['rating'] as num?)?.toDouble(),
  plusCode: json['plus_code'] == null
      ? null
      : PlusCode.fromJson(json['plus_code'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PlaceResultToJson(_PlaceResult instance) =>
    <String, dynamic>{
      'business_status': instance.businessStatus,
      'formatted_address': instance.formattedAddress,
      'geometry': instance.geometry,
      'icon': instance.icon,
      'icon_background_color': instance.iconBackgroundColor,
      'icon_mask_base_uri': instance.iconMaskBaseUri,
      'name': instance.name,
      'opening_hours': ?instance.openingHours,
      'photos': ?instance.photos,
      'place_id': instance.placeId,
      'reference': ?instance.reference,
      'types': ?instance.types,
      'user_ratings_total': ?instance.userRatingsTotal,
      'rating': ?instance.rating,
      'plus_code': ?instance.plusCode,
    };

_Geometry _$GeometryFromJson(Map<String, dynamic> json) => _Geometry(
  location: LatLng.fromJson(json['location'] as Map<String, dynamic>),
  viewport: Viewport.fromJson(json['viewport'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GeometryToJson(_Geometry instance) => <String, dynamic>{
  'location': instance.location,
  'viewport': instance.viewport,
};

_LatLng _$LatLngFromJson(Map<String, dynamic> json) => _LatLng(
  lat: (json['lat'] as num).toDouble(),
  lng: (json['lng'] as num).toDouble(),
);

Map<String, dynamic> _$LatLngToJson(_LatLng instance) => <String, dynamic>{
  'lat': instance.lat,
  'lng': instance.lng,
};

_Viewport _$ViewportFromJson(Map<String, dynamic> json) => _Viewport(
  northeast: LatLng.fromJson(json['northeast'] as Map<String, dynamic>),
  southwest: LatLng.fromJson(json['southwest'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ViewportToJson(_Viewport instance) => <String, dynamic>{
  'northeast': instance.northeast,
  'southwest': instance.southwest,
};

_OpeningHours _$OpeningHoursFromJson(Map<String, dynamic> json) =>
    _OpeningHours(openNow: json['open_now'] as bool?);

Map<String, dynamic> _$OpeningHoursToJson(_OpeningHours instance) =>
    <String, dynamic>{'open_now': ?instance.openNow};

_Photo _$PhotoFromJson(Map<String, dynamic> json) => _Photo(
  height: (json['height'] as num).toInt(),
  width: (json['width'] as num).toInt(),
  htmlAttributions: (json['html_attributions'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  photoReference: json['photo_reference'] as String,
);

Map<String, dynamic> _$PhotoToJson(_Photo instance) => <String, dynamic>{
  'height': instance.height,
  'width': instance.width,
  'html_attributions': instance.htmlAttributions,
  'photo_reference': instance.photoReference,
};

_PlusCode _$PlusCodeFromJson(Map<String, dynamic> json) => _PlusCode(
  compoundCode: json['compound_code'] as String?,
  globalCode: json['global_code'] as String?,
);

Map<String, dynamic> _$PlusCodeToJson(_PlusCode instance) => <String, dynamic>{
  'compound_code': ?instance.compoundCode,
  'global_code': ?instance.globalCode,
};
