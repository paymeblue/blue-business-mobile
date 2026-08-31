import 'dart:convert';
import 'dart:developer';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'places_response.freezed.dart';
part 'places_response.g.dart';

@freezed
abstract class PlaceResponse with _$PlaceResponse {
  const factory PlaceResponse({
    required List<String> htmlAttributions,
    String? nextPageToken,
    required List<PlaceResult> results,
  }) = _PlaceResponse;

  factory PlaceResponse.fromJson(Map<String, dynamic> json) =>
      _$PlaceResponseFromJson(json);
}

@freezed
abstract class PlaceResult with _$PlaceResult {
  const factory PlaceResult({
    required String businessStatus,
    required String formattedAddress,
    required Geometry geometry,
    required String icon,
    required String iconBackgroundColor,
    required String iconMaskBaseUri,
    required String name,
    OpeningHours? openingHours,
    List<Photo>? photos,
    required String placeId,
    String? reference,
    List<String>? types,
    int? userRatingsTotal,
    double? rating,
    PlusCode? plusCode,
  }) = _PlaceResult;

  factory PlaceResult.fromJson(Map<String, dynamic> json) =>
      _$PlaceResultFromJson(json);
}

@freezed
abstract class Geometry with _$Geometry {
  const factory Geometry({
    required LatLng location,
    required Viewport viewport,
  }) = _Geometry;

  factory Geometry.fromJson(Map<String, dynamic> json) =>
      _$GeometryFromJson(json);
}

@freezed
abstract class LatLng with _$LatLng {
  const factory LatLng({required double lat, required double lng}) = _LatLng;

  factory LatLng.fromJson(Map<String, dynamic> json) => _$LatLngFromJson(json);
}

@freezed
abstract class Viewport with _$Viewport {
  const factory Viewport({
    required LatLng northeast,
    required LatLng southwest,
  }) = _Viewport;

  factory Viewport.fromJson(Map<String, dynamic> json) =>
      _$ViewportFromJson(json);
}

@freezed
abstract class OpeningHours with _$OpeningHours {
  const factory OpeningHours({bool? openNow}) = _OpeningHours;

  factory OpeningHours.fromJson(Map<String, dynamic> json) =>
      _$OpeningHoursFromJson(json);
}

@freezed
abstract class Photo with _$Photo {
  const factory Photo({
    required int height,
    required int width,
    required List<String> htmlAttributions,
    required String photoReference,
  }) = _Photo;

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
}

@freezed
abstract class PlusCode with _$PlusCode {
  const factory PlusCode({String? compoundCode, String? globalCode}) =
      _PlusCode;

  factory PlusCode.fromJson(Map<String, dynamic> json) =>
      _$PlusCodeFromJson(json);
}

void logFormattedJson(dynamic response, {String tag = 'JSON'}) {
  try {
    dynamic parsed;

    if (response is String) {
      parsed = json.decode(response);
    } else {
      parsed = response;
    }

    final encoder = const JsonEncoder.withIndent('  ');
    final prettyString = encoder.convert(parsed);

    log(prettyString, name: tag);
  } catch (e) {
    log('Invalid JSON: $e', name: tag);
  }
}
