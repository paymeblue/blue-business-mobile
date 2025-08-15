import 'package:blue_business/core/config/dio_config.dart';
import 'package:blue_business/core/models/places/places_response.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'places_service.g.dart';

@RestApi()
abstract class PlacesService {
  factory PlacesService() => _PlacesService(
        DioConfig.dio(locator<AppStateValues>().accessToken),
        baseUrl: 'https://maps.googleapis.com/maps/api',
      );

  @GET('/place/textsearch/json')
  Future<PlaceResponse> getPlaceSuggestions({
    @Query('query') String query = '',
    @Query('type') String type = 'gas_station',
    @Query('key') String key = '',
  });
}
