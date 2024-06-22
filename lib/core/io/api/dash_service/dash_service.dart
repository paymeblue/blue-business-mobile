import 'package:blue_business/core/models/topup_account/response/topup_response.dart';
import 'package:blue_business/core/models/wallet/response/wallet_response.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'dash_service.g.dart';

@RestApi(baseUrl: AppConstants.baseUrl)
abstract class DashService {
  factory DashService(Dio dio) = _DashService;

  @GET("/wallets")
  Future<WalletResponse> getWalletDetails();

  @GET("/wallets/account")
  Future<TopupResponse> getWalletAccount();
}
