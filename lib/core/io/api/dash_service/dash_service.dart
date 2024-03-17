import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/models/chat_receiver/response/chat_receiver_response.dart';
import 'package:blue_business/core/models/kyc_status/response/kyc_status_response.dart';
import 'package:blue_business/core/models/todo/response/todo_response.dart';
import 'package:blue_business/core/models/topup_account/response/topup_response.dart';
import 'package:blue_business/core/models/wallet/response/wallet_response.dart';
import 'package:blue_business/core/models/withdrawal_account/get/response/withdrawal_account_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'dash_service.g.dart';

@RestApi(
    baseUrl: "https://blue-business-backend-8c46f2828f9e.herokuapp.com/api")
abstract class DashService {
  factory DashService() {
    return _DashService(DioConfig.dio());
  }

  @GET("/wallets")
  Future<WalletResponse> getWalletBalance();

  @GET('/kycs')
  Future<KycStatusResponse> getKycStatus();

  @GET('/todos')
  Future<TodoResponse> getTodos();

  @GET('/wallets/account')
  Future<TopupResponse> getTopupAccount();

  @GET("/with-drawal-accounts")
  Future<WithdrawalAccountResponse> getWithdrawalAccount();

  @GET("/connections/details")
  Future<ChatReceiverResponse> getReceiver(
      @Query("identifier") String identifier);
}
