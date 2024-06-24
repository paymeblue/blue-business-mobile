import 'package:blue_business/core/models/analytics/response/analytics_response.dart';
import 'package:blue_business/core/models/sales_analytics/response/sales_analytics_response.dart';
import 'package:blue_business/core/models/spending_analytics/response/spending_analytics_response.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'insights_service.g.dart';

@RestApi(baseUrl: "${AppConstants.baseUrl}/insights")
abstract class InsightsService {
  factory InsightsService(Dio dio) = _InsightsService;

  @GET("/credit")
  Future<SalesAnalyticsResponse> getSales(
    @Query("time_interval") String type,
  );

  @GET("/debit")
  Future<SpendingAnalyticsResponse> getSpending(
    @Query("time_interval") String type,
  );

  @GET("/analytics")
  Future<AnalyticsResponse> getAnalytics(
    @Query("time_interval") String type,
  );
}
