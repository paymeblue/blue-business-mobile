import 'package:blue_business/core/config/dio_config.dart';
import 'package:blue_business/core/models/business_dash/response/business_dash_response.dart';
import 'package:blue_business/core/models/topup_account/response/topup_response.dart';
import 'package:blue_business/core/models/wallet/response/wallet_response.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'dash_service.g.dart';

@RestApi(baseUrl: AppConstants.baseUrl)
abstract class DashService {
  factory DashService() => _DashService(
        DioConfig.dio(locator<AppStateValues>().accessToken),
        baseUrl: AppConstants.baseUrl,
      );

  @GET("/wallets/details")
  Future<WalletResponse> getWalletDetails();

  @GET("/wallet-accounts")
  Future<TopupResponse> getWalletAccount();

  @GET("/business-profiles/dashboard")
  Future<BusinessDashResponse> getDashDetails();
}
