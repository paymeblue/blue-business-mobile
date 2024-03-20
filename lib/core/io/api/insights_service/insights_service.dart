import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/models/sales_analytics/response/sales_analytics_response.dart';
import 'package:blue_business/core/models/spending_analytics/response/spending_analytics_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'insights_service.g.dart';

@RestApi(
    baseUrl:
        "https://blue-business-backend-8c46f2828f9e.herokuapp.com/api/insights")
abstract class InsightsService {
  factory InsightsService() {
    return _InsightsService(DioConfig.dio());
  }

  @GET("/sales")
  Future<SalesAnalyticsResponse> getSales(
    @Query("time_interval") String type,
  );

  @GET("/spent")
  Future<SpendingAnalyticsResponse> getSpending();

  @GET("/analytics")
  Future<SpendingAnalyticsResponse> getAnalytics();
}
