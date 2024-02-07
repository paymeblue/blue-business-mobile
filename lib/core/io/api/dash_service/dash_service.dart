import 'package:blue_business/core/models/chat_receiver/response/chat_receiver_response.dart';
import 'package:blue_business/core/models/kyc_status/response/kyc_status_response.dart';
import 'package:blue_business/core/models/todo/response/todo_response.dart';
import 'package:blue_business/core/models/topup_account/response/topup_response.dart';
import 'package:blue_business/core/models/wallet/response/wallet_response.dart';
import 'package:blue_business/core/models/withdrawal_account/get/response/withdrawal_account_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'dash_service.g.dart';

@RestApi(baseUrl: "https://blue-api-backend.herokuapp.com/api")
abstract class DashService {
  factory DashService(Dio dio) = _DashService;

  @GET("/wallets/balance")
  Future<WalletResponse> getWalletBalance();

  @GET('/kycs/status')
  Future<KycStatusResponse> getKycStatus();

  @GET('/todos')
  Future<TodoResponse> getTodos();

  @GET('/wallets/account')
  Future<TopupResponse> getTopupAccount();

  @GET("/accounts")
  Future<WithdrawalAccountResponse> getWithdrawalAccount();

  @GET("/connections/details")
  Future<ChatReceiverResponse> getReceiver(
      @Query("identifier") String identifier);
}
