import 'package:blue_business/core/config/dio_config.dart';
import 'package:blue_business/core/models/analytics/response/analytics_response.dart';
import 'package:blue_business/core/models/sales_analytics/response/sales_analytics_response.dart';
import 'package:blue_business/core/models/spending_analytics/response/spending_analytics_response.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'insights_service.g.dart';

@RestApi()
abstract class InsightsService {
  factory InsightsService() => _InsightsService(
        DioConfig.dio(locator<AppStateValues>().accessToken),
        baseUrl: AppConstants.baseUrl,
      );

  @GET("/insights/credit")
  Future<SalesAnalyticsResponse> getSales(
    @Query("time_interval") String type,
  );

  @GET("/insights/debit")
  Future<SpendingAnalyticsResponse> getSpending(
    @Query("time_interval") String type,
  );

  @GET("/insights/analytic")
  Future<AnalyticsResponse> getAnalytics(
    @Query("time_interval") String type,
  );
}
